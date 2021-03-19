%include "linux64.inc"

	global ft_write
	section .text
ft_write:
	call puts
	ret
