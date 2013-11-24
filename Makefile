CFLAGS=-O2 -Wall -Wextra -I. ${OPTFLAGS}

main: cqdb.o lookup3.o

.PHONY: clean
clean:
	@rm -f *.o
	rm -f main
