#include <stdio.h>
#include "Si5345-RevD-5345.okazaki-Registers.h"

int main (){
    printf("Hello World \n");
    struct si5345_revd_register_t si5345_list;


    for (int i = 0; i < 100; i++)
    {
        printf("0x%x\n", si5345_list[i].address);
    }
    return 0;
}