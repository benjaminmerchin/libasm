%include "linux64.inc"

; in rdi we have the string source

	global ft_strdup
    extern  malloc
    extern  ft_strlen
	extern	ft_strcpy

	section .text
ft_strdup:
;	xor		rax, rax ;set rax to 0
	
_len:
    push    rdi	;we need to push the arguments on the stack
    call    ft_strlen ;now rax has the len, rdi is also already on the stack just bellow the
 ;   pop     rdi
	ret

_malloc:
	inc		rax	;we need to malloc the size for the final 0
	xor		r9, r9; we will use r9 to stock the len
	mov		r9, rax;
	push	rax
	;call	malloc
	pop		rax
	ret

_loop:
	inc		rax
	mov		r8b, [rdi + rax]
	mov		r9b, [rsi + rax]
	cmp		r8b, 0
	je		_end
	cmp		r9b, 0
	je		_end
	cmp		r8b, r9b
	je		_loop

_end:
	xor		rax, rax ; useless ?
	xor		rbx, rbx ; useless ?
	mov		al, r8b
	mov		bl, r9b
	sub		rax, rbx
	ret
