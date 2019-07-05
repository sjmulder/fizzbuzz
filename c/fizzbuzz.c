#include <stdio.h>

int
main()
{
	int i;
	int next_fizz = 3;
	int next_buzz = 5;

	for (i = 1; i <= 100; i++) {
		if (i == next_fizz && i == next_buzz) {
			puts("FizzBuzz");
			next_fizz += 3;
			next_buzz += 5;
		} else if (i == next_fizz) {
			puts("Fizz");
			next_fizz += 3;
		} else if (i == next_buzz) {
			puts("Buzz");
			next_buzz += 5;
		} else
			printf("%d\n", i);
	}

	return 0;
}
