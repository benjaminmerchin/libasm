%include "linux64.inc"

; in rdi we have the destination
; in rsi we have the string source


_loop:
	inc		rax ;so rax is at 0 at the beginning of the first loop
	cmp		byte [rdi + rax], 0 ;rdi is used to pass the first argument (second would be rsi then rdx, rcx, r8 and r9)
	jne		_loop
	ret


	global ft_strcpy

	section .text
ft_strcpy:
	xor		rax, rax ;clean rax
	xor		r9, r9 ;clean r9
	mov		r9, rdi ;we save the destination in r9 to be able to return it later

_loop:
	cmp		byte [rsi + rax], 0
	inc		rax
	jne		_loop
	je		_end

_end:
	xor		rax, rax
	mov		rax, r9
	ret
