CFLAGS=-O2 -Wall -Wextra -I. ${OPTFLAGS}

main: cqdb.o lookup3.o

.PHONY: test
test:
	rm -f main
	OPTFLAGS=-DTEST_WRITE ${MAKE}
	./main
	rm main
	OPTFLAGS=-DTEST_VALIDITY ${MAKE}
	./main
	rm test.cqdb

.PHONY: clean
clean:
	@rm -f *.o
	rm -f main test.cqdb
