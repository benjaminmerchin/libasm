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
    call    ft_strlen ;now rax has the len
	mov		r9, rax ;we store the result of strlen on r9

_malloc:
	inc		r9	;we need to malloc the size for the final 0
	mov		r9, rax;
	push	rax
	call	malloc
	xor		rax, rax

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
	ret
