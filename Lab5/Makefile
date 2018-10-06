# list all binaries in this next line
BINARIES = vol1 vol2 vol3 volEmpty volSIMD
CCOPTS = -g -O3

all:	${BINARIES}

vol1:	vol1.c vol.h
	gcc ${CCOPTS} vol1.c -o vol1

vol2:	vol2.c vol.h
	gcc	${CCOPTS} vol2.c -o vol2

vol3:	vol3.c vol.h
	gcc	${CCOPTS} vol3.c -o vol3

volEmpty: volEmpty.c vol.h
	gcc	${CCOPTS} volEmpty.c -o volEmpty

volSIMD: volSIMD
	gcc ${CCOPTS} volSIMD.c -o volSIMD

test1:	vol1
	bash -c "time ./vol1"

test2:	vol2
	bash -c "time ./vol2"

test3:	vol3
	bash -c "time ./vol3"

testEmpty: volEmpty
	bash -c "time ./volEmpty"

testSIMD:
	bash -c "time ./volSIMD"
# target to test all binaries
test:	${BINARIES}

gdb1:	vol1
	gdb vol1

clean:	
	rm ${BINARIES} || true


