CSC ?= mcs

all: FizzBuzz.exe

FizzBuzz.exe: Program.cs
	$(CSC) $(CSCFLAGS) /out:FizzBuzz.exe Program.cs

clean:
	rm -f FizzBuzz.exe

.PHONY:
	all clean
