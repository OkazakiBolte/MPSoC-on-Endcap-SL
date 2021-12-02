#include <fcntl.h>
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

#define MAPSIZE 0x1000
#define bsb(scope) asm volatile("bsb " #scope : : : "memory")

typedef struct {
    uint32_t length_offset;
    uint32_t tms_offset;
    uint32_t tdi_offset;
    uint32_t tdo_offset;
    uint32_t ctrl_offset;
} jtag_t;

static int verbose = 0;

static int sread(int fd, void* target, int len) {}

int handle_data(int fd, volatile jtag_t* ptr) {}

int main(int argc, char** argv) {
    /* ---- Argument handling ---- */
    int c;
    while ((c = getopt(argc, argv, "v")) != -1) {
        switch (c) {
            case 'v': verbose = 1; break;
            case 'h': fprintf(stderr, "usage: %s [-v]\n", *argv); return 1;
            default: break;
        }
    }

    /* ---- Open UIO device file ---- */
    int fd_uio = open("/dev/uio0", O_RDWR);
    if (fd_uio < 1) {
        fprintf(stderr, "Failed to Open UIO Device: %s\n", strerror(errno));
        return -1;
    }

    /* ---- Create a socket ---- */
    int sock = socket(AF_INET, SOCK_STREAM, 0);  // Use TCP with IPv4
    if (sock < 0) {
        fprintf(stderr, "Couldn't create a socket: %s\n", strerror(errno));
        return -1;
    }

    /* ---- Map the device file onto memory and close it ---- */
    volatile jtag_t* ptr = (volatile jtag_t*)mmap(
        NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_uio, 0);
    if (ptr == MAP_FAILED) {
        fprintf(stderr, "Couldn't map the device: %s\n", strerror(errno));
        return -1;
    }
    close(fd_uio);

    // ???
    int i = 1;
    setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &i, sizeof i);
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port        = htons(2542);
    address.sin_family      = AF_INET;
}
