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
#include <unistd.h>         // close()

#include "../include/i2c.h"

static const uint8_t dev_addr = 0x4C;  // TMP431A slave address

int temp(char *dev_file, int time) {
    printf("Do not stop by CTRL-C!\n");
    uint8_t reg_addr;
    uint8_t data;
    for (int i = 0; i < time; i++) { sleep(1); }
}

int main(int argc, char *argv[]) {
    struct option longopts[] =
    {
        {    "fpga",       no_argument, NULL, 'f'},
        {    "zynq",       no_argument, NULL, 'z'},
        {    "time", required_argument, NULL, 't'},
        {"extended",       no_argument, NULL, 'e'},
        {         0,                 0,    0,   0}
    }

    char optstring[] = "fzt:e";
    int  opt;
    int  longindex;

    int is_fpga       = 0;
    int is_zynq       = 0;
    int extended_mode = 0;
    int time;
    while ((opt = getopt_long(argc, argv, optstring, longopts, &longindex)) !=
           -1) {
        switch (opt) {
            case 'f': is_fpga = 1; break;
            case 'z': is_zynq = 1; break;
            case 't': time = (int)(strtol(optarg, NULL, 0)); break;
            case 'e': extended_mode = 1; break;
            default: return -1;
        }
    }

    char *dev_file;

    if (is_fpga && is_zynq) { return -1; }

    if (is_fpga) {
        dev_file = "/dev/i2c-6";
        if (extended_mode) {}
    }
    if (is_zynq) {
        dev_file = "/dev/i2c-7";
        if (extended_mode) {}
    }
}