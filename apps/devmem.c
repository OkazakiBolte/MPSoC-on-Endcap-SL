// Compile with "gcc -std=c99 -Wall -g -O0 devmem.c"

#include <fcntl.h>  // open() etc.
#include <getopt.h>
#include <stdbool.h>  // Bool type etc.
#include <stdio.h>
#include <stdlib.h>     // strtol() etc.
#include <sys/mman.h>   // mmap() etc.
#include <sys/stat.h>   // open() etc.
#include <sys/types.h>  // open() etc.
#include <unistd.h>     // sysconf() etc.

#define BRAM_PHYS_ADDR 0x80000000  // BRAM controller

void help() {
    printf("-r, --read\tread data\n");
    printf("-w, --write\twrite data\n");
    printf("-o, --offset\tBRAM offset address\n");
    printf("-d, --data\tdata to be written\n");
    printf("\n");
    return;
}

// Write a datum at (bram_ptr + offset) in BRAM
void write_datum(volatile unsigned int* bram_ptr, unsigned int offset,
                 unsigned int datum) {
    *(bram_ptr + offset) = datum;
}

int main(int argc, char* argv[]) {
    int                    fd;
    unsigned int           page_size = sysconf(_SC_PAGESIZE);
    unsigned int           phys_addr, page_addr, page_offset;
    volatile unsigned int* bram_ptr;

    // Open /dev/mem with read-write mode.
    fd = open("/dev/mem", O_RDWR);  // File Descriptor. fd >= 0 if successful
    if (fd < 0) {
        printf("Error opening /dev/mem\n");
        exit(EXIT_FAILURE);
    }

    // Initialize bram_ptr
    phys_addr   = BRAM_PHYS_ADDR;
    page_addr   = (phys_addr & ~(page_size - 1));
    page_offset = phys_addr - page_addr;
    bram_ptr    = mmap(NULL, page_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd,
                       page_addr);
    if (bram_ptr == MAP_FAILED) {
        printf("Failed to map BRAM physical address.\n");
        close(fd);
        return EXIT_FAILURE;
    }
    bram_ptr += page_offset;

    /* ---- option analysis ---- */
    struct option longopts[] = {
        {  "read",       no_argument, NULL, 'r'},
        { "write",       no_argument, NULL, 'w'},
        {"offset", required_argument, NULL, 'o'},
        {  "data", required_argument, NULL, 'd'},
        {       0,                 0,    0,   0}  // indicates the termination of this array
    };
    char optstring[] = "rwo:d:";
    int  opt;
    int  longindex;

    /* ---- Get options ---- */
    bool         is_read  = false;
    bool         is_write = false;
    unsigned int offset   = 0;
    unsigned int data     = 0;
    while ((opt = getopt_long(argc, argv, optstring, longopts, &longindex)) !=
           -1) {
        switch (opt) {
            case 'r': is_read = true; break;
            case 'w': is_write = true; break;
            case 'o': offset = (unsigned int)strtol(optarg, NULL, 0); break;
            case 'd': data = (unsigned int)strtol(optarg, NULL, 0); break;
            default:
                printf("Invalid option.\n");
                close(fd);
                return 1;
        }
    }

    /* ---- Main process ---- */
    if (is_read && !is_write) {
        printf("offset = %d, \tdata = 0x%x\n", offset, *(bram_ptr + offset));
    } else if (is_write && !is_read) {
        write_datum(bram_ptr, offset, data);
    } else {
        help();
    }

    close(fd);
    return EXIT_SUCCESS;
}