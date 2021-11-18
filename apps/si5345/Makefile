.phoney: all clean

FILE = si5345
TEST = test

all: si5345 test

si5345: ${FILE}.c
	gcc -std=c99 -D _BSD_SOURCE -Wall -g -O0 ${FILE}.c -o ${FILE}

test: ${TEST}.c
	gcc -std=c99 -D _BSD_SOURCE -Wall -g -O0 ${TEST}.c -o ${TEST}

clean:
	rm ${FILE} ${TEST}
	rm -rf *.dSYM