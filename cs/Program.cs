using System;

static class Program {
	static void Main() {
		int nextFizz = 3;
		int nextBuzz = 5;
		for (int i = 1; i <= 100; i++) {
			if (i == nextFizz && i == nextBuzz) {
				Console.WriteLine("FizzBuzz");
				nextFizz += 3;
				nextBuzz += 5;
			} else  if (i == nextFizz) {
				Console.WriteLine("Fizz");
				nextFizz += 3;
			} else if (i == nextBuzz) {
				Console.WriteLine("Buzz");
				nextBuzz += 5;
			} else
				Console.WriteLine(i);
		}
	}
}
