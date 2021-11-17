.phoney: all clean

FILE = si5345

all: ${FILE}.c
	gcc -std=c99 -Wall -g -O0 ${FILE}.c -o ${FILE}

clean:
	rm ${FILE}
	rm -rf ${FILE}.dSYM