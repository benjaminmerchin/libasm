%include "linux64.inc"

; in rdi we have the fd
; in rsi we have the string to print
; in rdx we have the string length

	global ft_write

	section .text
	xor		rax, rax ; we clean rax, check if I can remove this
ft_write:

_core:
	mov rax, 1 				;ID to write from the table
	mov	rbx, rdi			;for the standard output
	mov	rcx, rsi
;	mov rdx, rdx			;Not usefull because rdx is already at the right place		
	syscall					;code to execute kernell

	ret
