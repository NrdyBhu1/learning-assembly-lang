	segment .data
	text db "Hello, World!",10,0
	text2 db "This is another text!",10,0


	segment .text
	global _start


_exit:
	mov rax,60
	mov rdi,0
	syscall
	ret	

_print:
	push rax
	mov rbx,0

_printloop:
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _printloop

	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret

_start:
	mov rax, text
	call _print
	mov rax, text2
	call _print
	call _exit
	ret
