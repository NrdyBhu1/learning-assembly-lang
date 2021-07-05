all: install

install: macros.asm
	nasm -f elf64 macros.asm
	ld -o macros macros.o

clean: macros.o
	rm macros.o
