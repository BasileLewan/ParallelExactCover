all : omp mpi ompi

omp :
	gcc ./src/exact_cover_omp.c -O3 -fopenmp -Wall -Wextra -o omp
	
mpi :
	mpicc ./src/exact_cover_mpi.c -O3 -Wall -Wextra -o mpi
	
ompi :
	mpicc ./src/exact_cover_ompi.c -fopenmp -O3 -Wall -Wextra -o ompi

clean:
	rm -f omp mpi ompi