%include "linux64.inc"

; in rdi we have the output number
; in rsi we have the string to print
; in rdx we have the string length

	global ft_write

	section .text
	xor		rax, rax ; we clean rax, check if I can remove this
ft_write:

_loop:
	mov rax, 4 				;ID to write from the table
	mov	rbx, rdi			;  pour la sortie standard
	mov	rcx, rsi
;	mov rdx, rdx			;Not usefull because rdx is already at the right place		
	int 80h					;code to execute kernell // 0x80

;	mov eax, 1				;
;	mov	ebx, 0
;	int 80h

	ret
