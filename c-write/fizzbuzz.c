#include <unistd.h>

int
main()
{
	char str[4] = "  0\n";
	int next_f = 3, next_b = 5;
	int i, j;

	for (i = 1; i <= 100; i++) {
		for (j = 2; str[j] == '9'; j--)
			str[j] = '0';
		if (str[j] == ' ')
			str[j] = '1';
		else
			str[j]++;

		if (i == next_f) {
			next_f += 3;
			if (i == next_b) {
				next_b += 5;
				write(1, "FizzBuzz\n", 9);
			} else
				write(1, "Fizz\n", 5);
		} else if (i == next_b) {
			next_b += 5;
			write(1, "Buzz\n", 5);
		} else
			write(1, str, 4);
	}

	return 0;
}
