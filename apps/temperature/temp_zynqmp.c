#include <errno.h>          // errno
#include <fcntl.h>          // open()
#include <getopt.h>         // struct option
#include <linux/i2c-dev.h>  // struct i2c_rdwr_ioctl_data
#include <linux/i2c.h>      // struct i2c_msg
#include <stdint.h>         // uint*_t
#include <stdio.h>          // printf()
#include <stdlib.h>         // malloc(), strtol() etc.
#include <string.h>         // strerror()
#include <sys/ioctl.h>      // ioctl()
#include <sys/stat.h>       // open()
#include <sys/types.h>      // open()
#include <unistd.h>         // close(), usleep

#include "../include/i2c.h"
#define DECI_SECOND 100000  // 1 deci sec = 0.1 sec = 1000000 micro sec

static const char*   dev_file = "/dev/i2c-7";  // Temperature sensor for Zynq
static const uint8_t dev_addr = 0x4C;          // TMP431A slave address

static const uint8_t reg_lt_h = 0x00;  // local temperature high Byte
static const uint8_t reg_lt_l = 0x15;  // local temperature low Byte

// TMP431A standard mode: 0 deg. Celsius to 127 deg. Celsius
// TMP431A extended mode: -55 deg. Celsius to 150 deg. Celsius
// The device can be set to measure over an extended temperature range by
// changing bit 2 of Configuration Register 1 from low to high.
float temp_standard() {
    float   temp;
    uint8_t data_lt_h = 0;
    uint8_t data_lt_l = 0;
    if (i2c_read(dev_file, dev_addr, reg_lt_h, &data_lt_h) < 0) {
        return 0xFFFFFFFF;
    }
    if (i2c_read(dev_file, dev_addr, reg_lt_l, &data_lt_l) < 0) {
        return 0xFFFFFFFF;
    }
    temp = (float)data_lt_h + 0.0625 * (float)((data_lt_l >> 4) & 0xFF);
    return temp;
}

int main(int argc, char* argv[]) {
    /* ---- option analysis ---- */
    struct option longopts[] = {
        {"time", required_argument, NULL, 't'},
        {     0,                 0,    0,   0}  // indicates the termination of this array
    };
    char optstring[] = "t:";
    int  opt;
    int  longindex;

    int time = 0;

    /* ---- Switch process according to the given option ---- */
    while ((opt = getopt_long(argc, argv, optstring, longopts, &longindex)) !=
           -1) {
        switch (opt) {
            case 't': time = (int)(strtol(optarg, NULL, 0)); break;
            default: printf("Invalid option!\n\n"); return -1;
        }
    }

    // Show temperature every 0.5 second.
    float temp;
    printf("Local temperature around ZynqMP.\n");
    for (int t = 0; t < 2 * time; t++) {
        temp = temp_standard();
        printf("%5.1f sec: temp =", 0.5 * t);
        if (temp > 128) {
            printf("> 128");
        } else if (temp <= 0) {
            printf("< 0");
        } else {
            printf(" %3.4f", temp);
        }
        printf(" DegC\n");
        usleep(5 * DECI_SECOND);
    }

    return 0;
}