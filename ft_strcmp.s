%include "linux64.inc"
;ft_strlen:
;	xor		rax, rax ;set rax to 0
;	dec		rax;
;
;_loop:
;	inc		rax ;so rax is at 0 at the beginning of the first loop
;	cmp		byte [rdi + rax], 0 ;rdi is used to pass the first argument (second would be rsi then rdx, rcx, r8 and r9)
;	jne		_loop
;	ret

    global ft_strcmp

    section .text
ft_strcmp:
    xor     rax, rax ;set rax to 0
    dec     rax

_loop:
    inc     rax
    cmp     byte[rdi + rax], byte [rsi + rax]
    je      _loop

    mov     rcx, [rdi + rax]
    mov     rax, [rsi + rax]
    sub     rax, rcx
    ret
