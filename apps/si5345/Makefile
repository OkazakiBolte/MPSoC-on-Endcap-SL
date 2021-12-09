.phoney: all clean

FILE = si5345

all: si5345

si5345: ${FILE}.c
	gcc -std=c99 -D _BSD_SOURCE -Wall -g -O0 ${FILE}.c -o ${FILE}
clean:
	rm ${FILE} ${TEST}
	rm -rf *.dSYM