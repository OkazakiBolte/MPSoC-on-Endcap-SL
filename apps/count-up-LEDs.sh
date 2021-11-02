#! /bin/bash

# count up from 0x0 to 0x7 on 3-bit LEDs on Mercury XU5.

for ((i=0 ; i<8 ; i++))
do
    sudo ./blink -v $i -w
    sleep 1
done