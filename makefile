default:
	gcc -Wall -o prog complex.c main.c input.c -lm 

debug:
	gcc -Wall -g -o prog complex.c main.c input.c -lm 

clean:
	rm -f ./prog
