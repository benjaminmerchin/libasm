section .data					;Constant
	msg:	db	"Hello World!", 10	;msg pour referer a la section ;db (define byte)
	msg_L:	equ	$-msg		;equ remplace les occurences de msg_L

;section .bss						;Variables

section .text						;Code
	global _start:
							; on incremente a, b, c ... dans les instructions
_start:						; demarrage du programme
	mov eax, 4 				;bouge de l'info dans un register 4 ici
	mov	ebx, 1			 	;  pour la sortie standard
	mov	ecx, msg
	mov edx, msg_L
	int 80h					;code pour executer, call kernel // 0x80

	mov eax, 1
	mov	ebx, 0
	int 80h