all: install

install: user_input.asm
	nasm -f elf64 -o user_input.o user_input.asm
	ld -o user_input user_input.o

clean: user_input.o
	rm user_input.o
