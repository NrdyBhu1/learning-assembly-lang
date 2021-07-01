	segment .data
	text1 db "What is your name?",10
	text1ln equ $-text1
	text2 db "Hello, "
	text2ln equ $-text2

	segment .bss
	name resb 32		; reseve 32 bytes in name

	segment .text
	global _start 		; set global to _start

_exit:				; exit
	mov rax, 60
	mov rdi, 0
	syscall
	ret

_print1:			; print text1
	mov rax, 1
	mov rdi, 1
	mov rsi, text1
	mov rdx, text1ln
	syscall
	ret

_setname:			; set name from user input
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 32
	syscall
	ret

_print2:
	mov rax, 1
	mov rdi, 1
	mov rsi, text2
	mov rdx, text2ln
	syscall			; print hello first

	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 32
	syscall			; print name
	ret
	
_start:				; global main
	call _print1		; call print1
	call _setname		; get user input
	call _print2		; call print2
	call _exit		; exit
	ret
