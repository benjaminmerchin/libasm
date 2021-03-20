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

	printf("LIBASM - Testor\n");
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


	return (0);
}
