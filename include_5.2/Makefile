all: install

install: include.asm
	nasm -f elf64 include.asm
	ld -o include include.o

clean: include.o
	rm include.o
