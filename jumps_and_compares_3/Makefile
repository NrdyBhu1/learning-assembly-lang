all: install

install: jumps_and_compares.asm
	nasm -g -f elf64 jumps_and_compares.asm
	ld -o jumps_and_compares jumps_and_compares.o

clean: jumps_and_compares.o
	rm jumps_and_compares.o
