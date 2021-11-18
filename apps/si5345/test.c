#include <stdio.h>
#include <unistd.h>
#define MILLISECONDS 1000

int main() {
    usleep(300 * MILLISECONDS);
    return 0;
}
