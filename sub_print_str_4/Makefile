all: install

install: sub_print_str.asm
	nasm -f elf64 sub_print_str.asm
	ld -o sub_print_str sub_print_str.o

clean: sub_print_str.o
	rm sub_print_str.o
