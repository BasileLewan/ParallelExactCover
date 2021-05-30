all : main

main :
	mpicc exact_cover_ompi.c -fopenmp -O3 -Wall -Wextra -o ompi

clean:
	rm -f ompi