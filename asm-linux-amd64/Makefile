all: fizzbuzz

fizzbuzz: fizzbuzz.s
	nasm -felf64 -o fizzbuzz.o fizzbuzz.s	
	cc -no-pie -o fizzbuzz fizzbuzz.o -lc

clean:
	rm -f fizzbuzz.o fizzbuzz

.PHONY: all clean
