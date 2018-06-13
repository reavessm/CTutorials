GCC = g++ -O3 -Wall 

thing: $(OBJS)
	$(GCC) -o $@ *.c

run: thing
	clear; ./thing | less

clean:
	rm -rf thing
