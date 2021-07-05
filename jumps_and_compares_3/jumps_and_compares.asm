	segment .data
	equals db "Equals!",10
	eqLn equ $-equals

	neuqals dd "Not Equals",10
	neuqln equ $-neuqals
	
	segment .text
	global _start

_exit:
	mov rax,60
	mov rdi,0		; exit code
	syscall
	ret

_printEquals:
	mov rax,1
	mov rdi,1
	mov rsi,equals
	mov rdx,eqLn
	syscall

	jmp _exit
	ret

_printNotEquals:
	mov rax,1
	mov rdi,1
	mov rsi,neuqals
	mov rdx,neuqln
	syscall

	jmp _exit
	ret

_start:
	;; Change only any of these 
	mov ax,11
	cmp ax,11
	je _printEquals	

	call _printNotEquals
	ret
