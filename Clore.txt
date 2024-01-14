all: mlprocess.so

mlprocess.so: mlprocess.c
	gcc -Wall -fPIC -shared -o mlprocess.so mlprocess.c -ldl

.PHONY clean:
	rm -f mlprocess.so
