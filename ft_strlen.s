;int	ft_strlen(const char *s)
;{
;	int i;
;
;	i = 0;
;	while (s[i])
;		i++;
;	return (i);
;}

; rax = i

			section	.data

			section .bss
			rax				255

			section .text
ft_strlen:
	xor rdi, rdi

loop

