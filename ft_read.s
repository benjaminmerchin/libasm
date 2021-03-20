%include "linux64.inc"

; in rdi we have the fd
; in rsi we have the string buffer
; in rdx we have the length to read

	global ft_read

	section .text
	xor		rax, rax ; we clean rax, check if I can remove this
ft_read:

_core:
	mov rax, 3 				;ID to read from the table
	mov	rbx, rdi			;  pour la sortie standard
	mov	rcx, rsi
;	mov rdx, rdx			;Not usefull because rdx is already at the right place		
	int 80h					;code to execute kernell // 0x80

;	mov eax, 1				;
;	mov	ebx, 0
;	int 80h

	ret