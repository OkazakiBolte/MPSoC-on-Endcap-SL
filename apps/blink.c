// Compile with "gcc -std=c99 -Wall -g -O0 blink.c -o blink"

#include <stdio.h>
#include <getopt.h>
#include <sys/types.h> // open() etc.
#include <sys/stat.h>  // open() etc.
#include <fcntl.h>     // open() etc.
#include <unistd.h>    // sysconf() etc.
#include <sys/mman.h>  // mmap() etc.
#include <stdlib.h>    // strtol() etc.
#include <stdbool.h>   // Bool type etc.

#define GPIO_PHYS_ADDR 0x80010000 // GPIO connected to 8 LEDs

void help(){
    printf("-r, --read\tread LED value\n");
    printf("-w, --write\twrite LED value\n");
    printf("-v, --value\tvalue to be displayed with 3-bit LED\n");
    printf("\n");
    printf("Example:\n");
    printf("\tWrite value=0x7: sudo ./blink --value=0x7 --write\n");
    return;
}

int main (int argc , char* argv[]){
                      int   fd;
             unsigned int   page_size = sysconf( _SC_PAGESIZE );
             unsigned int   phys_addr, page_addr, page_offset;
	volatile unsigned int * gpio_ptr;

    // Open /dev/mem with read-write mode.
	fd = open( "/dev/mem", O_RDWR ); // File Descriptor. fd >= 0 if successful
	if( fd < 0 ) {
		printf("Error opening /dev/mem\n" );
        exit(EXIT_FAILURE);
	}

    // Initialize gpio_ptr
	phys_addr   = GPIO_PHYS_ADDR;
	page_addr   = ( phys_addr & ~ ( page_size - 1 ));
	page_offset = phys_addr - page_addr;
	gpio_ptr    = mmap( NULL, page_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, page_addr );
	if(gpio_ptr == MAP_FAILED) {
		printf("Failed to map LED physical address\n" );
		close( fd );
		return EXIT_FAILURE;
	}
	gpio_ptr += page_offset;

    /* ---- option analysis ---- */
    struct option longopts[] = {
        {"read", no_argument, NULL, 'r'},
        {"write", no_argument, NULL, 'w'},
        {"value", required_argument, NULL, 'v'},
        {0, 0, 0, 0} // indicates the termination of this array
    };
    char optstring[] = "rwv:";
    int opt;
    int longindex;

    /* ---- Get options ---- */
    bool is_read = false;
    bool is_write = false;
    unsigned int val = 0;
    while (
        (opt = getopt_long(argc, argv, optstring, longopts, &longindex)) != -1
    ){
        switch (opt){
            case 'r':
                is_read = true;
                break;
            case 'w':
                is_write = true;
                break;
            case 'v':
                val = (unsigned int)strtol(optarg, NULL, 0);
                if (val > 0b111){
                    printf("Value must be 3-bit number.\n");
                    close(fd);
                    return 1;
                }
                break;
            default:
                printf("Invalid option.\n");
                close(fd);
                return 1;
        }
    }

    /* ---- Main process ---- */
    if (is_read && !is_write){
        printf("value = 0x%x\n", *gpio_ptr);
    }
    else if (is_write && !is_read){
        *gpio_ptr = ~val; // 3 user LEDs on Mercury XU5 are active-low.
    }
    else{
        help();
    }

    close(fd);
	return EXIT_SUCCESS;
}