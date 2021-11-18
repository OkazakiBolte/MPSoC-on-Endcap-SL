#include <errno.h>          // errno
#include <fcntl.h>          // open()
#include <getopt.h>         // struct option
#include <linux/i2c-dev.h>  // struct i2c_rdwr_ioctl_data
#include <linux/i2c.h>      // struct i2c_msg
#include <stdint.h>         // uint*_t
#include <stdio.h>          // printf()
#include <stdlib.h>         // malloc()
#include <stdlib.h>         // strtol() etc.
#include <string.h>         // strerror()
#include <sys/ioctl.h>      // ioctl()
#include <sys/stat.h>       // open()
#include <sys/types.h>      // open()
#include <unistd.h>         // close()
#define MILLISECONDS 1000

#include "Si5345-RevD-5345.okazaki-Registers.h"

static const char *dev_file =
    "/dev/i2c-4";  // Si5345 (U1) on Endcap SL, connected from the port 3 on
                   // pca9548 (U23)
static const uint8_t dev_addr = 0x68;  // Si5345 slave address

// Just prints configuration list
void show_register_list() {
    printf("order\taddress\tvalue\n");
    for (int i = 0; i < SI5345_REVD_REG_CONFIG_NUM_REGS; i++) {
        printf("%03d,\t0x%04X,\t0x%02X\n", i, si5345_revd_registers[i].address,
               si5345_revd_registers[i].value);
    }
    return;
}

int confirm_to_start(float t) {
    char input;
    while (1) {
        printf("This process takes time (ETA: %.02f min).\n",
               (float)(t * SI5345_REVD_REG_CONFIG_NUM_REGS) / 60);
        printf(
            "You can't stop it by ctrl-c, because it may break your system.\n");
        printf("Do you want to proceed? [y/n]\n");
        input = getchar();
        if (input == 'y') {
            return 0;
        } else if (input == 'n') {
            return -1;
        }
    }
}

// Reads a value of one register.
// You can see the data using its pointer.
// NOTE: i2c_read() requires a pointer to data as an argument while i2c_write()
// doesn't.
int8_t i2c_read(
    uint16_t reg_addr,  // address of a register in Si5345
    uint8_t *pdata      // a pointer of a data from a register will be stored in
) {
    int32_t fd = open(dev_file, O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "i2c_read: failed to open %s: %s\n", dev_file,
                strerror(errno));
        return -1;
    }

    // I don't know why, but it seems to access N+1 when I set reg_addres as N.
    reg_addr = (uint16_t)(reg_addr - 1);
    // Since Si5345 has 16-bit addressing and massages.buf is defined as __u8,
    // we need to split reg_addr into 1 Byte pieces.
    uint8_t addr_per_1Byte[] = {(uint8_t)(reg_addr >> 0 & 0xFF),
                                (uint8_t)(reg_addr >> 8 & 0xFF)};

    /* ---- Make I2C-read messages ---- */
    struct i2c_msg messages[] = {
        {dev_addr,        0, sizeof(addr_per_1Byte), addr_per_1Byte},
        {dev_addr, I2C_M_RD,         sizeof(*pdata),          pdata}
  // I2C_M_RD: read data (from slave to master). Guaranteed to be 0x0001!
    };
    struct i2c_rdwr_ioctl_data msgset = {
        messages,  // pointers to i2c_msg's
        2          // Number of i2c_msg's
    };

    /* ---- I2C-read operation ---- */
    int ret =
        ioctl(fd, I2C_RDWR, &msgset);  // Do combined read/write transaction
                                       // without stop in between.
    if (ret == -1) {
        fprintf(stderr, "i2c-read operation failed: %s\n", strerror(errno));
        close(fd);
        return -1;
    }

    close(fd);
    return 0;
}

int8_t read_si5345_registers() {
    if (confirm_to_start(0.01) < 0) return 0;
    /* ---- Process starts ---- */
    uint16_t reg_addr;  // one of registers in si5345
    uint8_t  data = 0;  // temporary variable
    int8_t   result;    // i2c_read(reg_addr, &data);
    int      i = 0;
    while (i < SI5345_REVD_REG_CONFIG_NUM_REGS) {
        if (i % 10 == 0) printf("DO NOT STOP THIS PROCESS BY CTRL-C!\n");
        reg_addr = si5345_revd_registers[i].address;
        result   = i2c_read(reg_addr, &data);
        if (result < 0) {
            printf("Error at register 0x%04X\n", reg_addr);
            printf("RESULT: I2C READ FAILED.\n");
            return -1;
        }
        printf("(%03d/%d)  Register 0x%04X: 0x%02X", i,
               SI5345_REVD_REG_CONFIG_NUM_REGS - 1, reg_addr, data);
        if (data != si5345_revd_registers[i].value) {
            printf(" != 0x%02X", si5345_revd_registers[i].value);
        }
        printf("\n");
        i++;
        usleep(10 * MILLISECONDS);
    }
    printf("RESULT: I2C READ SUCCESSFULLY DONE.\n");
    return 0;
}

// Writes one datum into one register.
// NOTE: i2c_read() requires a pointer to data as an argument while i2c_write()
// doesn't.
int8_t i2c_write(uint16_t reg_addr,  // indicates one of the registers in Si5345
                 uint8_t  data  // a variable in which the datum to be sent to a
                                // register will be stored
) {
    int32_t fd = open(dev_file, O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "i2c_write: failed to open %s: %s\n", dev_file,
                strerror(errno));
        return -1;
    }

    /* ---- Secure a buffer for I2C-write ---- */
    uint8_t *buf = (uint8_t *)malloc(sizeof(reg_addr) + sizeof(data));
    if (buf == NULL) {
        fprintf(stderr, "i2c_write: failed to memory allocate\n");
        close(fd);
        return -1;
    }

    // I don't know why, but it seems to access N+1 when I set reg_addres as N.
    reg_addr = (uint16_t)(reg_addr - 1);
    // Since Si5345 has 16-bit addressing and massages.buf is defined as __u8,
    // we need to split reg_addr into 1 Byte pieces.
    uint8_t addr_per_1Byte[] = {(uint8_t)(reg_addr >> 0 & 0xFF),
                                (uint8_t)(reg_addr >> 8 & 0xFF)};

    buf[0] = addr_per_1Byte[0];
    buf[1] = addr_per_1Byte[1];
    memcpy(&buf[2], &data, sizeof(data));

    /* ---- Make I2C-write messages ---- */
    struct i2c_msg             message = {dev_addr, 0, sizeof(buf), buf};
    struct i2c_rdwr_ioctl_data msgset  = {&message, 1};

    /* ---- I2C-write operation ---- */
    int ret  = ioctl(fd, I2C_RDWR, &msgset);
    reg_addr = (uint16_t)((buf[1] << 8) + buf[0] + 1);  // reconstruct with buf
    if (ret == -1) {
        fprintf(stderr, "i2c-write operation failed: %s\n", strerror(errno));
        printf("Failed to write 0x%02X at reg address 0x%04X.\n", buf[2],
               reg_addr);
        free(buf);
        close(fd);
        return -1;
    }

    printf("Register 0x%04X: 0x%02X written\n", reg_addr, buf[2]);
    free(buf);
    close(fd);
    return 0;
}

int8_t preamble() {
    uint16_t reg_addr[3] = {0xb24, 0x0b25, 0x0540};
    uint8_t  data[3]     = {0xc0, 0x00, 0x01};
    for (int i = 0; i < 3; i++) {
        if (i2c_write(reg_addr[i], data[i]) < 0) { return -1; }
    }
    return 0;
}

int8_t write_values_into_si5345() {
    if (confirm_to_start(0.01) < 0) return 0;
    /* ---- Process starts ---- */
    uint16_t reg_addr;
    uint8_t  data;
    int      i = 0;
    int      ret;
    while (i < SI5345_REVD_REG_CONFIG_NUM_REGS) {
        if (i % 10 == 0) printf("DO NOT STOP THIS PROCESS BY CTRL-C!\n");
        printf("(%03d/%d) ", i, SI5345_REVD_REG_CONFIG_NUM_REGS - 1);
        reg_addr = si5345_revd_registers[i].address;
        data     = si5345_revd_registers[i].value;
        ret      = i2c_write(reg_addr, data);
        if (ret < 0) {
            printf("Couldn't write data 0x%02X at reg address 0x%04X.\n", data,
                   reg_addr);
            return -1;
        }
        if (i == 2) usleep(300 * MILLISECONDS);
        usleep(10 * MILLISECONDS);
        i++;
    }
    return 0;
}

void help() {
    printf("-a, --address\t\tset register address to read\n");
    printf(
        "-r, --read\t\tread register value at a given address by --address\n");
    printf("-R, --read-all\t\tread all values in configurable registers\n");
    printf("-W, --write-all\t\twrite all values into configurable registers\n");
    printf("-s, --show-config\tshow configuration\n");
    printf("-h, --help\t\tprint this help\n");
    printf("\n");
    return;
}

int main(int argc, char *argv[]) {
    // preamble();
    // usleep(300 * MILLISECONDS);
    // i2c_write(0x002c, 0x0a);
    /* ---- option analysis ---- */
    struct option longopts[] = {
        {    "address", required_argument, NULL, 'a'},
        {       "data", required_argument, NULL, 'd'},
        {       "read",       no_argument, NULL, 'r'},
        {   "read-all",       no_argument, NULL, 'R'},
        {      "write",       no_argument, NULL, 'w'},
        {  "write-all",       no_argument, NULL, 'W'},
        {"show-config",       no_argument, NULL, 's'},
        {   "preamble",       no_argument, NULL, 'p'},
        {       "help",       no_argument, NULL, 'h'},
        {            0,                 0,    0,   0}  // indicates the termination of this array
    };
    char optstring[] = "a:d:rRwWsph";
    int  opt;
    int  longindex;

    /* ---- Switch process according to the given option ---- */
    uint16_t reg_addr;
    uint8_t  data;
    int      is_read  = 0;
    int      is_write = 0;
    while ((opt = getopt_long(argc, argv, optstring, longopts, &longindex)) !=
           -1) {
        switch (opt) {
            case 'a': reg_addr = (uint16_t)(strtol(optarg, NULL, 0)); break;
            case 'd': data = (uint8_t)(strtol(optarg, NULL, 0)); break;
            case 'r': is_read = 1; break;
            case 'w': is_write = 1; break;
            case 'R':
                if (read_si5345_registers() < 0) {
                    return -1;
                } else {
                    return 0;
                }
            case 'W':
                if (write_values_into_si5345() < 0) {
                    return -1;
                } else {
                    return 0;
                }
            case 's': show_register_list(); return 0;
            case 'p': preamble(); return 0;
            case 'h': help(); return 0;
            default:
                printf("Invalid option.\n\n");
                help();
                return -1;
        }
    }

    if (!is_read && is_write) {
        if (i2c_write(reg_addr, data) < 0) {
            return -1;
        } else {
            printf("Wrote reg_addr = 0x%04X,\tvalue = 0x%02X\n", reg_addr,
                   data);
            return 0;
        }
    } else if (is_read && !is_write) {
        if (i2c_read(reg_addr, &data) < 0) {
            return -1;
        } else {
            printf("reg_addr = 0x%04X,\tvalue = 0x%02X\n", reg_addr, data);
            return 0;
        }
    } else {
        help();
        return -1;
    }
    return 0;
}