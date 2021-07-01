	segment .data 		; defining data segment
	text db "Hello, World!",10 ; defining text = Hello, World!,10 where 10 is \n escape char
	textLn equ $-text	   ; setting textln equal to len of text

	segment .text		; text segment
	global _start		; setting global to start

_exit:				; call to exit the program
	mov rax, 60		; id of syscall
	mov rdi, 0		; exit code
	syscall			; syscall
	ret			; ret
	
_start:				; global main
	mov rax, 1		; id of write syscall
	mov rdi, 1		; fd
	mov rsi, text		; write text param
	mov rdx, textLn		; write text len param
	syscall			; syscall

	call _exit		; calling exit
	
	ret			; ret
