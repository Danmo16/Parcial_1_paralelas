all: compile exe

compile:
	gcc -o main main.c

exe:
	OMP_NUM_THREADS=$$((2 * $$(nproc))) 
	@echo "Usando $$((2 * $$(nproc))) hilos..."
	time ./all.sh

clean:
	rm -f main *.bin*
