.phoney: all clean

ZYNQMP = zynqmp
FILE_ZYNQMP = temp_${ZYNQMP}

FPGA = fpga
FILE_FPGA = temp_${FPGA}

all: zynqmp fpga

zynqmp: ${FILE_ZYNQMP}.c
	gcc -std=c99 -D _BSD_SOURCE -Wall -g -O0 ${FILE_ZYNQMP}.c -o ${ZYNQMP}

fpga: ${FILE_FPGA}.c
	gcc -std=c99 -D _BSD_SOURCE -Wall -g -O0 ${FILE_FPGA}.c -o ${FPGA}

clean:
	rm ${ZYNQMP} ${FPGA}
	rm -rf *.dSYM