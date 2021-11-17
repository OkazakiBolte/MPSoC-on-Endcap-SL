#include <stdio.h>         // printf()
#include <stdlib.h>        // malloc()
#include <stdint.h>        // uint*_t
#include <sys/types.h>     // open()
#include <sys/stat.h>      // open()
#include <fcntl.h>         // open()
#include <sys/ioctl.h>     // ioctl()
#include <errno.h>         // errno
#include <string.h>        // strerror()
#include <unistd.h>        // close()
#include <stdlib.h>        // strtol() etc.
#include <getopt.h>        // struct option
#include <linux/i2c.h>     // struct i2c_msg
#include <linux/i2c-dev.h> // struct i2c_rdwr_ioctl_data
#include "Si5345-RevD-5345.okazaki-Registers.h"

static const char *dev_file = "/dev/i2c-4"; // Si5345 (U1) on Endcap SL, connected from the port 3 on pca9548 (U23)
static const uint8_t slv_addr = 0x68;       // Si5345 slave address


// Just prints configuration list
void show_register_list (){
    printf("order\taddress\tvalue\n");
    for (int i = 0; i < SI5345_REVD_REG_CONFIG_NUM_REGS; i++){
        printf(
            "%03d,\t0x%03X,\t0x%02X\n",
            i,
            si5345_revd_registers[i].address,
            si5345_revd_registers[i].value
        );
    }
    return;
}


// Reads a value of one register.
// You can see the data using its pointer.
// NOTE: i2c_read() requires a pointer to data as an argument while i2c_write() doesn't.
int8_t i2c_read(
    uint16_t addr,   // address of a register in Si5345
    uint8_t * pdata  // a pointer of a data from a register will be stored in
){
    int32_t fd = open(dev_file, O_RDWR);
    if (fd == -1){
        fprintf(stderr, "i2c_read: failed to open %s: %s\n", dev_file, strerror(errno));
        return -1;
    }

    /* Make I2C-read messages */
    struct i2c_msg messages[] = {
        {slv_addr, 0, sizeof(addr), &addr},
        {slv_addr, I2C_M_RD, sizeof(*pdata), pdata}
        // I2C_M_RD: read data (from slave to master). Guaranteed to be 0x0001!
    };
    struct i2c_rdwr_ioctl_data msgset = {
        messages, // pointers to i2c_msg's
        2         // Number of i2c_msg's
    };

    /* I2C-read operation */
    int ret = ioctl(fd, I2C_RDWR, &msgset); // Do combined read/write transaction without stop in between.
    if (ret == -1){
        fprintf(stderr, "i2c-read operation failed: %s\n", strerror(errno));
        close(fd);
        return -1;
    }

    close(fd);
    return 0;
}


int8_t read_si5345_registers(){
    uint16_t addr;   // one of registers in si5345
    uint8_t data = 0; // temporary variable
    int8_t result;    // i2c_read(addr, &data);
    int i = 0;
    while (i < SI5345_REVD_REG_CONFIG_NUM_REGS){
        addr = si5345_revd_registers[i].address;
        result = i2c_read(addr, &data);
        if (result < 0){
            printf("Error at register 0x%03X\n", addr);
            printf("RESULT: I2C READ FAILED.\n");
            return -1;
        }
        if (data != si5345_revd_registers[i].value){
            printf(
                "Register 0x%3X: 0x%02X != 0x%02X\n",
                addr,
                data,
                si5345_revd_registers[i].value
            );
        }
        else{
            printf("Register 0x%03X: 0x%02X\n", addr, data);
        }
        i++;
    }
    printf("RESULT: I2C READ SUCCESSFULLY DONE.\n");
    return 0;
}


// Writes one datum into one register.
// NOTE: i2c_read() requires a pointer to data as an argument while i2c_write() doesn't.
int8_t i2c_write(
    uint16_t addr, // indicates one of the registers in Si5345
    uint8_t data   // a variable in which the datum to be sent to a register will be stored
){
    int32_t fd = open(dev_file, O_RDWR);
    if (fd == -1){
        fprintf(stderr, "i2c_write: failed to open %s: %s\n", dev_file, strerror(errno));
        return -1;
    }

    /* Secure a buffer for I2C-write */
    uint8_t *buf = (uint8_t *)malloc(sizeof(addr) + sizeof(data));
    if (buf == NULL){
        fprintf(stderr, "i2c_write: failed to memory allocate\n");
        close(fd);
        return -1;
    }
    buf[0] = addr;
    memcpy(&buf[1], &data, sizeof(data));

    /* Make I2C-write messages */
    struct i2c_msg message = {slv_addr, 0, sizeof(buf), buf};
    struct i2c_rdwr_ioctl_data msgset = {&message, 1};

    /* I2C-write operation */
    int ret = ioctl(fd, I2C_RDWR, &msgset);
    if (ret == -1){
        fprintf(stderr, "i2c-write operation failed: %s\n", strerror(errno));
        free(buf);
        close(fd);
        return -1;
    }

    printf("Register 0x%03X: 0x%02X written\n", buf[0], buf[1]);
    free(buf);
    close(fd);
    return 0;
}


int8_t write_values_into_si5345(){
    uint16_t addr;
    uint8_t  data;
    int ret;
    int i = 0;
    while (i < SI5345_REVD_REG_CONFIG_NUM_REGS){
        addr = si5345_revd_registers[i].address;
        data = si5345_revd_registers[i].value;
        ret = i2c_write(addr, data);
        if (ret < 0){
            printf("Error at register 0x%03X\n", addr);
            printf("RESULT: I2C WRITE FAILED.\n");
            return -1;
        }
        i++;
    }
    return 0;
}


void help(){
    printf("-r, --read\tread register value at a given address\n");
    printf("-R, --read-all\tread all values in configurable registers\n");
    printf("-W, --write-all\twrite all values into configurable registers\n");
    printf("-h, --help\tprint this help\n");
    printf("\n");
    return;
}

int main(int argc, char *argv[]){
    /* ---- option analysis ---- */
    struct option longopts[] = {
        {"read", required_argument, NULL, 'r'},
        {"read-all", no_argument, NULL, 'R'},
        {"write-all", no_argument, NULL, 'W'},
        {"help", no_argument, NULL, 'h'},
        {0, 0, 0, 0} // indicates the termination of this array
    };
    char optstring[] = "r:RWh";
    int opt;
    int longindex;

    /* ---- Switch process according to the given option ---- */
    uint16_t addr;
    uint8_t data;
    while (
        (opt = getopt_long(argc, argv, optstring, longopts, &longindex)) != -1
    ){
        switch (opt){
            case 'r':
                addr = (uint16_t)strtol(optarg, NULL, 0);
                if (i2c_read(addr, &data) < 0){
                    return -1;
                } else {
                    printf("addr = 0x%03X,\tvalue = 0x%02X\n", addr, data);
                    return 0;
                }
            case 'R':
                if (read_si5345_registers() < 0){
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
            case 'h':
                help();
                return 0;
            default:
                printf("Invalid option.\n\n");
                help();
                return -1;
        }
    }
    // return 0;
}