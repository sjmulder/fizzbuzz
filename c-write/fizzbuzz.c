#include <unistd.h>

static void write_int(int);

int
main()
{
	int i;

	for (i = 1; i <= 100; i++) {
		if (i % 3 == 0 && i % 5 == 0)
			write(1, "FizzBuzz\n", 9);
		else if (i % 3 == 0)
			write(1, "Fizz\n", 5);
		else if (i % 5 == 0)
			write(1, "Buzz\n", 5);
		else
			write_int(i);
	}

	return 0;
}

static void
write_int(int num)
{
	char buf[4];
	int i = 3;

	while (i > 0 && num) {
		buf[--i] = (char)('0' + num % 10);
		num /= 10;
	}

	buf[3] = '\n';
	write(1, &buf[i], 4-i);
}
