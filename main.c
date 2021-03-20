#include "libasm.h"

void	ok_or_error(long expected, long result)
{
	if (result == expected)
		printf("OK\n");
	else
		printf("ERROR\n");
}

int		main(void)
{
	int i;
	int j;
	char *s1;
	char *s2;

	/*printf("LIBASM - Testor\n");
	printf("-----------------------------\n");
	printf("ft_strlen\n");

	i = strlen("");
	j = ft_strlen("");
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	i = strlen(" ");
	j = ft_strlen(" ");
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	i = strlen("1234567890 ");
	j = ft_strlen("1234567890 ");
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	printf("-----------------------------\n");
	printf("ft_strcmp\n");

	s1 = "r";
	s2 = "ra";
	i = strcmp(s1, s2);
	j = ft_strcmp(s1, s2);
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	s1 = "abc";
	s2 = "123";
	i = strcmp(s1, s2);
	j = ft_strcmp(s1, s2);
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	s1 = "afnefvna987yfav0 98r0";
	s2 = " a987y ha 98fh 0a8h 0";
	i = strcmp(s1, s2);
	j = ft_strcmp(s1, s2);
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	printf("-----------------------------\n");
	printf("ft_write\n");

	s1 = "ab";
	i = strlen(s1);
	write(1, s1, i);
	write(1, " | ", 3);
	ft_write(1, s1, i);
	write(1, "\n", 1);

	s1 = "Hello World!";
	i = strlen(s1);
	write(1, s1, i);
	write(1, " | ", 3);
	ft_write(1, s1, i);
	write(1, "\n", 1);

	s1 = "(*&^$@*(& (*";
	i = strlen(s1);
	write(1, s1, i);
	write(1, " | ", 3);
	ft_write(1, s1, i);
	write(1, "\n", 1);

	printf("-----------------------------\n");*/
	printf("ft_read\n");
	
	return (0);
}
