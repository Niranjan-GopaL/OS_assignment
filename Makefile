CC = gcc
CFLAGS = -Wall

# All C files in ./ is in SOURCES
SOURCES := $(wildcard *.c)

# Generating executable names with SAME NAME as it's C file in SOURCES 
EXECUTABLES := $(SOURCES:.c=)

all: $(EXECUTABLES)

%.out: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(EXECUTABLES)
	rm -f file0.txt
	rm -f file1.txt
	rm -f file2.txt
	rm -f file3.txt
	rm -f file4.txt
	rm -f a.out
