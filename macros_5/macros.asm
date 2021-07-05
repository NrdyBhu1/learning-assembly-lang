	segment .text
	global _start

	%macro exit 1	
	mov rax, 60
	mov rdi, %1
	syscall
	%endmacro
	
_start:
	exit 0
	ret
