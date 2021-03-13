#include "libasm.h"

void	ok_or_error(int expected, int result)
{
	if (result == expected)
		printf("OK\n");
	else
		printf("ERROR\n");
}

int		main(void)
{
	int i;

	printf("LIBASM - Testor\n");
	printf("-----------------------------\n");
	printf("ft_strlen\n");
	printf("Normalement 0: %d ", ft_strlen(""));
	ok_or_error(0, ft_strlen(""))
	printf("Normalement 1: %d ", ft_strlen("a"));
	ok_or_error(1, ft_strlen(""))
	printf("Normalement 11: %d ", ft_strlen("1234567890 "));
	ok_or_error(11, ft_strlen(""))
	printf("-----------------------------\n");
	return (0);
}