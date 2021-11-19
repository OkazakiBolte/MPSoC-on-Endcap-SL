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

#include "Si5345-RevD-5345.okazaki-Registers_2.h"

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

int write_byte(uint8_t reg_addr,  // indicates one of the registers in Si5345
               uint8_t data  // a variable in which the data to be sent to a
                             // register will be stored
) {
    /* ---- Secure a buffer for I2C-write ---- */
    uint8_t *buf = (uint8_t *)malloc(sizeof(reg_addr) + sizeof(data));
    if (buf == NULL) {
        fprintf(stderr, "write_byte: failed to memory allocate\n");
        return -1;
    }
    buf[0] = reg_addr;
    memcpy(&buf[1], &data, sizeof(data));

    /* ---- Make I2C-write messages ---- */
    struct i2c_msg             message = {dev_addr, 0, sizeof(buf), buf};
    struct i2c_rdwr_ioctl_data msgset  = {&message, 1};

    /* ---- I2C-write operation ---- */
    int32_t fd = open(dev_file, O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "write_byte: failed to open %s: %s\n", dev_file,
                strerror(errno));
        return -1;
    }
    int ret = ioctl(fd, I2C_RDWR, &msgset);

    free(buf);
    close(fd);
    return ret;
}

int read_byte(uint8_t reg_addr, uint8_t *pdata) {
    int32_t fd = open(dev_file, O_RDWR);
    if (fd == -1) {
        fprintf(stderr, "i2c_read: failed to open %s: %s\n", dev_file,
                strerror(errno));
        return -1;
    }

    /* ---- Make I2C-read messages ---- */
    struct i2c_msg messages[] = {
        {dev_addr,        0, sizeof(reg_addr), &reg_addr},
        {dev_addr, I2C_M_RD,   sizeof(*pdata),     pdata}
  // I2C_M_RD: read data (from slave to master). Guaranteed to be 0x0001!
    };
    struct i2c_rdwr_ioctl_data msgset = {
        messages,  // pointers to i2c_msg's
        2          // Number of i2c_msg's
    };

    /* I2C-read operation */
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

int set_page(uint8_t page) {
    return write_byte(0x01, page);
}

// Reads a value of one register.
int i2c_read(uint16_t reg_addr, uint8_t *pdata) {
    uint8_t addr = (uint8_t)(reg_addr >> 0) & 0xFF;
    uint8_t page = (uint8_t)(reg_addr >> 8) & 0xFF;
    if (set_page(page) < 0) {
        printf("Couldn't set page.\n");
        return -1;
    };
    uint8_t data = 0;
    if (read_byte(addr, &data) < 0) {
        printf("ERROR in i2c_read(). Register 0x%04X.\n", reg_addr);
        return -1;
    }
    *pdata = data;
    printf("Register 0x%04X: 0x%02X", reg_addr, data);
    return 0;
}

int i2c_write(uint16_t reg_addr, uint8_t data) {
    uint8_t addr = (uint8_t)(reg_addr >> 0) & 0xFF;
    uint8_t page = (uint8_t)(reg_addr >> 8) & 0xFF;
    if (set_page(page) < 0) {
        printf("Couldn't set page.\n");
        return -1;
    };
    if (write_byte(addr, data) < 0) {
        printf("ERROR in i2c_write(). Register 0x%04X.\n", reg_addr);
        return -1;
    }
    printf("Successfully wrote 0x%02X at 0x%04X.\n", reg_addr, data);
    return 0;
}

int preamble() {
    uint16_t reg_addr;
    uint8_t  data;
    for (int i = 0; i < 3; i++) {
        reg_addr = si5345_revd_registers[i].address;
        data     = si5345_revd_registers[i].value;
        if (i2c_write(reg_addr, data) < 0) { return -1; }
    }
    usleep(300 * MILLISECONDS);
    printf("Preamble successful.\n");
    return 0;
}

int postamble() {
    uint16_t reg_addr;
    uint8_t  data;
    for (int i = SI5345_REVD_REG_CONFIG_NUM_REGS - 5;
         i < SI5345_REVD_REG_CONFIG_NUM_REGS; i++) {
        reg_addr = si5345_revd_registers[i].address;
        data     = si5345_revd_registers[i].value;
        if (i2c_write(reg_addr, data) < 0) { return -1; }
    }
    printf("Postamble successful.\n");
    return 0;
}

int write_all() {
    int ret;
    ret = preamble();
    if (ret < 0) {
        printf("write_all(): Error in preamble.\n");
        return ret;
    }
    uint16_t reg_addr;
    uint8_t  data;
    for (int i = 3; i < SI5345_REVD_REG_CONFIG_NUM_REGS - 5; i++) {
        reg_addr = si5345_revd_registers[i].address;
        data     = si5345_revd_registers[i].value;
        printf("(%03d/%03d) ", i - 3, SI5345_REVD_REG_CONFIG_NUM_REGS - 8);
        ret = i2c_write(reg_addr, data);
        if (ret < 0) {
            printf("write_all(): Failed to write 0x%02X at 0x%04X.\n", data,
                   reg_addr);
            return ret;
        }
    }
    ret = postamble();
    if (ret < 0) {
        printf("write_all(): Error in preamble.\n");
        return ret;
    }
    return ret;
}

int read_all() {
    uint16_t reg_addr;
    uint8_t  read_data = 0;
    uint8_t  data;
    for (int i = 0; i < SI5345_REVD_REG_CONFIG_NUM_REGS; i++) {
        reg_addr = si5345_revd_registers[i].address;
        data     = si5345_revd_registers[i].value;
        printf("(%03d/%03d) ", i, SI5345_REVD_REG_CONFIG_NUM_REGS - 1);
        if (i2c_read(reg_addr, &read_data) < 0) {
            printf("read_all(): Failed to read at 0x%04X.\n", reg_addr);
            return -1;
        }
        if (read_data != data) { printf(" != 0x%02X", data); }
        printf("\n");
    }
    return 0;
}

void help() {
    // printf("-a, --address\t\tset register address to read\n");
    // printf("-r, --read\t\tread register value at a given address by "
    //        "--address\n");
    // printf("-R, --read-all\t\tread all values in configurable registers\n");
    // printf("-W, --write-all\t\twrite all values into configurable "
    //        "registers\n");
    // printf("-s, --show-config\tshow configuration\n");
    // printf("-h, --help\t\tprint this help\n");
    // printf("\n");
    printf("address      , required_argument, a,\n");
    printf("data         , required_argument, d,\n");
    printf("read         , no_argument      , r,\n");
    printf("read-all     , no_argument      , R,\n");
    printf("write        , no_argument      , w,\n");
    printf("write-all    , no_argument      , W,\n");
    printf("show-config  , no_argument      , s,\n");
    printf("help         , no_argument      , h\n");
    return;
}

int main(int argc, char *argv[]) {
    /* ---- option analysis ---- */
    struct option longopts[] = {
        {    "address", required_argument, NULL, 'a'},
        {       "data", required_argument, NULL, 'd'},
        {       "read",       no_argument, NULL, 'r'},
        {   "read-all",       no_argument, NULL, 'R'},
        {      "write",       no_argument, NULL, 'w'},
        {  "write-all",       no_argument, NULL, 'W'},
        {"show-config",       no_argument, NULL, 's'},
        {       "help",       no_argument, NULL, 'h'},
        {            0,                 0,    0,   0}  // indicates the termination of this array
    };
    char optstring[] = "a:d:rRwWsh";
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
                if (read_all() < 0) {
                    printf("Summary: Failed to run read_all().\n");
                    return -1;
                } else {
                    printf("Summary: Successful to run read_all().\n");
                    return 0;
                }
            case 'W':
                if (write_all() < 0) {
                    printf("Summary: Failed to run write_all().\n");
                    return -1;
                } else {
                    printf("Summary: Successful to run write_all().\n");
                    return 0;
                }
            case 's': show_register_list(); return 0;
            case 'h': help(); return 0;
            default:
                printf("Invalid option!\n\n");
                help();
                return -1;
        }
    }

    int ret;
    if (!is_read && is_write) {  // if write
        ret = preamble();
        if (ret < 0) {
            printf("Error in preamble.\n");
            return ret;
        }
        ret = i2c_write(reg_addr, data);
        if (ret < 0) {
            printf("Failed to write 0x%02X at 0x%04X.\n", data, reg_addr);
            return ret;
        }
        ret = postamble();
        if (ret < 0) {
            printf("Error in preamble.\n");
            return ret;
        }
        return ret;
    } else if (is_read && !is_write) {
        ret = i2c_read(reg_addr, &data);
        printf("\n");
        return ret;
    } else {
        help();
        return -1;
    }
}