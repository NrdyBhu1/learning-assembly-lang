%include "../linux64.inc"

	segment .data
	text db "Hello, from includes",10,0
	
	segment .text
	global _start

_start:
	print text
	exit
	ret
