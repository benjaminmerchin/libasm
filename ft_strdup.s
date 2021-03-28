; in rdi we have the string source
; we need to push what we want to save
; only rbp, rbx, r12, r13, r14, r15 are safe and don't need to be push

	global	ft_strdup
    extern	malloc, ft_strlen, ft_strcpy
	
ft_strdup:
	push	rbp ;calling convension to preserve rbp
	
_len:
    push    rdi	;we can push the arguments on the stack
    call    ft_strlen ;now rax has the len ; the source string is already in rdi
	xor		rdi, rdi

_malloc:
	inc		rax	;we need to malloc the size for the final 0
	mov		rdi, rax
	call	malloc wrt ..plt;we now have the new string in rax
; wrt ..plt is used to link external function... I lost so much time to find this

; for ft_strcpy we want
; first the destination buffer in rdi
; second the source  in rsi

_copy:
	xor		rdi, rdi
	mov		rdi, rax ; to put the destination in rdi
	xor		rsi, rsi
	pop		rsi ; to put the source in rsi
	push	rdi	; to save the destination
	call	ft_strcpy
	xor		rax, rax
	pop		rax	; to put the destination in rax

; we want to return a pointer to the new string with the duplication
; so we want rdi
_end:
	pop		rbp
	ret
