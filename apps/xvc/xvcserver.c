/* This work, "xvcServer.c", is a derivative of "xvcd.c"
 * (https://github.com/tmbinc/xvcd) by tmbinc, used under CC0 1.0 Universal
 * (http://creativecommons.org/publicdomain/zero/1.0/). "xvcServer.c" is
 * licensed under CC0 1.0 Universal
 * (http://creativecommons.org/publicdomain/zero/1.0/) by Avnet and is used by
 * Xilinx for XAPP1251.
 *
 *  Description : XAPP1251 Xilinx Virtual Cable Server for Linux
 */

#include <errno.h>
#include <fcntl.h>
#include <getopt.h>  // struct option
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#define MAP_SIZE 0x10000
#define UIO_PATH "/dev/uio0"
#define XVC_PORT 2542

static int verbose = 0;
static int debug   = 0;

typedef struct {
    uint32_t length_offset;
    uint32_t tms_offset;
    uint32_t tdi_offset;
    uint32_t tdo_offset;
    uint32_t ctrl_offset;
} jtag_t;

static int sread(int fd, void *target, int len) {
    unsigned char *t = target;
    if (debug) printf("- Starting %s\n", __func__);
    while (len) {
        int r = read(fd, t, len);
        if (r <= 0) {
            fprintf(stderr, "In function %s: failed to read fd = %d: %s\n",
                    __func__, fd, strerror(errno));
            return r;
        }
        t += r;
        len -= r;
    }
    if (debug) printf("- Exiting %s\n", __func__);
    return 1;
}

int handle_data(int fd, volatile jtag_t *ptr) {
    if (debug) printf("- Starting %s\n", __func__);
    char         xvcInfo[32];
    unsigned int bufferSize = 2048;
    sprintf(xvcInfo, "xvcServer_v1.0:%u\n", bufferSize);

    do {
        char cmd[16];
        memset(cmd, 0, 16);
        int           sread_Byte;
        unsigned char buffer[bufferSize], result[bufferSize / 2];
        sread_Byte = 2;
        if (sread(fd, cmd, sread_Byte) != 1) {
            fprintf(
                stderr,
                "In function %s: Expected to sread %d Bytes, but couldn't with "
                "cmd = %s, aborted.\n",
                __func__, sread_Byte, cmd);
            fprintf(stderr, "Exit function %s.\n", __func__);
        }

        if (memcmp(cmd, "ge", 2) == 0) {  // MESSAGE: "getinfo:"
            // The primary use of "getinfo:" message is to get the XVC server
            // version. The server version provides a client a way of
            // determining the protocol capabilites of the server.
            sread_Byte = 6;
            if (sread(fd, cmd, sread_Byte) != 1) {
                fprintf(stderr,
                        "In function %s: Expected to sread %d Bytes, but "
                        "couldn't with cmd = %s, aborted.\n",
                        __func__, sread_Byte, cmd);
                fprintf(stderr, "Exit function %s.\n", __func__);
                return 1;
            }
            memcpy(result, xvcInfo, strlen(xvcInfo));
            if (write(fd, result, strlen(xvcInfo)) != strlen(xvcInfo)) {
                fprintf(
                    stderr,
                    "In function %s: failed to write 'result' into fd = %d: "
                    "%s\n",
                    __func__, fd, strerror(errno));
                fprintf(stderr, "Exit function %s.\n", __func__);
                return 1;
            }
            if (verbose) {
                printf("%u: Received command: 'getinfo'\n", (int)time(NULL));
                printf("\t Replied with %s\n", xvcInfo);
            }
            break;
        } else if (memcmp(cmd, "se", 2) == 0) {  // MESSAGE: "settck:"
            // The "settck:" message configures the server TCK period. When
            // sending JTAG vectors the TCK rate may need to be varied to
            // accomodate cable and board signal integrity conditions. This
            // command is used by clients to adjust the TCK rate in order to
            // slow down or speed up the shifting of JTAG vectors.
            sread_Byte = 9;
            if (sread(fd, cmd, sread_Byte) != 1) {
                fprintf(stderr,
                        "In function %s: Expected to sread %d Bytes, but "
                        "couldn't with cmd = %s, aborted.\n",
                        __func__, sread_Byte, cmd);
                fprintf(stderr, "Exit function %s.\n", __func__);
                return 1;
            }
            memcpy(result, cmd + 5, 4);
            if (write(fd, result, 4) != 4) {
                fprintf(
                    stderr,
                    "In function %s: failed to write 'result' into fd = %d: "
                    "%s\n",
                    __func__, fd, strerror(errno));
                fprintf(stderr, "Exit function %s.\n", __func__);
                return 1;
            }
            if (verbose) {
                printf("%u: Received command: 'settck'\n", (int)time(NULL));
                printf("\t Replied with '%.*s'\n\n", 4, cmd + 5);
            }
            break;
        } else if (memcmp(cmd, "sh", 2) == 0) {  // MESSAGE: "shift:"
            // The "shift:" message is used to shift JTAG vectors in and out of
            // a device. The number of bits to shift is specified as the first
            // shift command parameter followed by the TMS and TDI data vectors.
            // The TMS and TDI vectors are sized according to the number of bits
            // to shift, rouneded to the nearest byte. For instance if shifting
            // in 13 bits the byte vectors will be rounded to 2 bytes. Upon
            // completion of the JTAG shift operation the server will return a
            // byte sized vector containing the sampled target TDO value for
            // each shifted TCK clock.
            sread_Byte = 4;
            if (sread(fd, cmd, sread_Byte) != 1) {
                fprintf(stderr,
                        "In function %s: Expected to sread %d Bytes, but "
                        "couldn't with cmd = %s, aborted.\n",
                        __func__, sread_Byte, cmd);
                fprintf(stderr, "Exit function %s.\n", __func__);
                return 1;
            }
            if (verbose) {
                printf("%u: Received command: 'shift'\n", (int)time(NULL));
            }
        } else {
            fprintf(stderr, "In function %s: invalid cmd: '%s'\n", __func__,
                    cmd);
            fprintf(stderr, "Exit function %s.\n", __func__);
            return 1;
        }

        int len;
        sread_Byte = 4;
        if (sread(fd, &len, 4) != 1) {
            fprintf(stderr, "In function %s: reading length failed.\n",
                    __func__);
            return 1;
        }

        int nr_bytes = (len + 7) / 8;
        if (nr_bytes * 2 > sizeof(buffer)) {
            fprintf(stderr, "In function %s: buffer size exceeded\n", __func__);
            return 1;
        }

        if (sread(fd, buffer, nr_bytes * 2) != 1) {
            fprintf(stderr, "In function %s: reading data failed\n", __func__);
            return 1;
        }
        memset(result, 0, nr_bytes);

        if (verbose) {
            printf("\tNumber of Bits  : %d\n", len);
            printf("\tNumber of Bytes : %d \n", nr_bytes);
            printf("\n");
        }
        int bytesLeft = nr_bytes;
        int bitsLeft  = len;
        int byteIndex = 0;
        int tdi, tms, tdo;
        while (bytesLeft > 0) {
            if (debug) printf("New communication begins!\n");
            tms = 0;
            tdi = 0;
            tdo = 0;

            int shift_num_bytes;
            int shift_num_bits = 32;

            if (bytesLeft < 4) { shift_num_bits = bitsLeft; }
            shift_num_bytes = (shift_num_bits + 7) / 8;

            memcpy(&tms, &buffer[byteIndex], shift_num_bytes);
            memcpy(&tdi, &buffer[byteIndex + nr_bytes], shift_num_bytes);

            ptr->length_offset = shift_num_bits;
            ptr->tms_offset    = tms;
            ptr->tdi_offset    = tdi;
            ptr->ctrl_offset   = 0x01;

            /* Switch this to interrupt in next revision */
            while (ptr->ctrl_offset) {}

            tdo = ptr->tdo_offset;
            memcpy(&result[byteIndex], &tdo, shift_num_bytes);

            bytesLeft -= shift_num_bytes;
            bitsLeft -= shift_num_bits;
            byteIndex += shift_num_bytes;

            if (verbose) {
                printf("LEN : 0x%08x\n", shift_num_bits);
                printf("TMS : 0x%08x\n", tms);
                printf("TDI : 0x%08x\n", tdi);
                printf("TDO : 0x%08x\n", tdo);
            }
        }
        if (write(fd, result, nr_bytes) != nr_bytes) {
            fprintf(
                stderr,
                "In function %s: failed to write 'result' into fd = %d: %s\n",
                __func__, fd, strerror(errno));
            fprintf(stderr, "Exit function %s.\n", __func__);
            return 1;
        }
    } while (1);

    /* Note: Need to fix JTAG state updates, until then no exit is allowed */
    if (debug) printf("- Exiting %s\n", __func__);
    return 0;
}

void help() {
    printf("-v, --verbose\tShow infomation of JTAG connection status\n");
    printf("-d, --debug\tDebug mode\n");
    printf("-h, --help\tShow this help\n");
    return;
}

void instruction() {
    printf("\n---- Instruction ----\n");
    printf("0. Make sure you're going to open %s. If needed, change the "
           "variable UIO_PATH in the source code.\n",
           UIO_PATH);
    printf("1. Check my IP address first.\n");
    printf("2. Open Hardware Manager in Vivado in your computer.\n");
    printf("3. \"Open Target\" > \"Open New Target\" > \"Local server\" > "
           "\"Add Xilinx Virtual "
           "Cable\".\n");
    printf("4. Enter hostname: <my IP address>, port: %u.\n", XVC_PORT);
    printf("5. Enjoy!\n");
    printf("---------------------\n\n");
    return;
}

int main(int argc, char *argv[]) {
    printf("\nXilinx Virtual Cable server starting.\n");
    instruction();

    /* ---- option analysis ---- */
    struct option longopts[] = {
        {"verbose", no_argument, NULL, 'v'},
        {  "debug", no_argument, NULL, 'd'},
        {   "help", no_argument, NULL, 'h'},
        {        0,           0,    0,   0}  // indicates the termination of this array
    };
    char optstring[] = "vdh";
    int  opt;
    int  longindex;

    while ((opt = getopt_long(argc, argv, optstring, longopts, &longindex)) !=
           -1) {
        switch (opt) {
            case 'v': verbose = 1; break;
            case 'd': debug = 1; break;
            case 'h': help(); return 0;
            default: help(); return -1;
        }
    }

    int                i;
    int                s;
    int                fd_uio;
    struct sockaddr_in address;

    fd_uio = open(UIO_PATH, O_RDWR);
    if (fd_uio < 1) {
        fprintf(stderr, "Failed to open uio device %s: %s\n", UIO_PATH,
                strerror(errno));
        return -1;
    }

    s = socket(AF_INET, SOCK_STREAM, 0);
    if (debug && verbose) printf("s = %d.\n", s);
    if (s < 0) {
        fprintf(stderr, "Couldn't create a new socket: %s\n", strerror(errno));
        return 1;
    }
    volatile jtag_t *ptr = (volatile jtag_t *)mmap(
        NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_uio, 0);
    if (ptr == MAP_FAILED) {
        fprintf(stderr, "MMAP Failed: %s\n", strerror(errno));
        return -1;
    }
    close(fd_uio);

    i = 1;
    setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &i, sizeof i);
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port        = htons(XVC_PORT);
    address.sin_family      = AF_INET;
    if (bind(s, (struct sockaddr *)&address, sizeof(address)) < 0) {
        fprintf(stderr, "Couldn't allocate an address to the new socket: %s\n",
                strerror(errno));
        return 1;
    }

    if (listen(s, 0) < 0) {
        fprintf(stderr, "Couldn't wait for connection on socket: %s\n",
                strerror(errno));
        return 1;
    }

    fd_set conn;
    int    maxfd = 0;
    FD_ZERO(&conn);
    FD_SET(s, &conn);
    maxfd = s;
    while (1) {
        fd_set read = conn, except = conn;
        int    fd;
        int    sel;
        if (debug) printf("Debug message: 1\n");
        if ((sel = select(maxfd + 1, &read, 0, &except, 0)) < 0) {
            if (debug) printf("Debug message: 1-1\n");
            fprintf(stderr, "The select() function returned error: %s\n",
                    strerror(errno));
            fprintf(stderr, "select = '%d'\n", sel);
            break;
        }
        if (debug) printf("Debug message: 2\n");
        for (fd = 0; fd <= maxfd; ++fd) {
            if (debug) printf("Debug message: 3\n");
            if (FD_ISSET(fd, &read)) {
                if (debug) printf("Debug message: 4\n");
                if (fd == s) {
                    if (debug) printf("Debug message: 5\n");
                    int       newfd;
                    socklen_t nsize = sizeof(address);
                    newfd = accept(s, (struct sockaddr *)&address, &nsize);
                    printf("connection accepted - fd %d\n", newfd);
                    if (newfd < 0) {
                        fprintf(stderr,
                                "The accept() function returned error: "
                                "%s\n",
                                strerror(errno));
                    } else {
                        printf("setting TCP_NODELAY to 1\n");
                        int flag = 1;
                        int optResult =
                            setsockopt(newfd, IPPROTO_TCP, TCP_NODELAY,
                                       (char *)&flag, sizeof(int));
                        if (optResult < 0) {
                            fprintf(stderr,
                                    "TCP_NODELAY error: The setsockopt() "
                                    "function returned error: %s\n",
                                    strerror(errno));
                        }
                        if (newfd > maxfd) { maxfd = newfd; }
                        FD_SET(newfd, &conn);
                    }
                } else if (handle_data(fd, ptr)) {
                    if (debug) printf("Debug message: 6\n");
                    printf("connection closed - fd %d\n", fd);
                    close(fd);
                    FD_CLR(fd, &conn);
                }
            } else if (FD_ISSET(fd, &except)) {
                if (debug) printf("Debug message: 7\n");
                printf("connection aborted - fd %d\n", fd);
                close(fd);
                FD_CLR(fd, &conn);
                if (debug) printf("Debug message: 8\n");
                if (fd == s) break;
            }
        }
    }
    munmap((void *)ptr, MAP_SIZE);
    printf("End of XVC.\n");
    return 0;
}
