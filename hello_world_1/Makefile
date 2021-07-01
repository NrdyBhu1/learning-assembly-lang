
all: install

install: hello_world.asm
	nasm -f elf64 -o hello_world.o hello_world.asm
	ld -o hello_world hello_world.o

clean: hello_world.o
	rm hello_world.o
