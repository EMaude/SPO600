# list all binaries in this next line
BINARIES = vol1 vol2 vol3 volEmpty
CCOPTS = -g -O0 -pg

all:	${BINARIES}

vol1:	vol1.c vol.h
	gcc ${CCOPTS} vol1.c -o vol1

vol2:	vol2.c vol.h
	gcc	${CCOPTS} vol2.c -o vol2

vol3:	vol3.c vol.h
	gcc	${CCOPTS} vol3.c -o vol3

volEmpty: volEmpty.c vol.h
	gcc	${CCOPTS} volEmpty.c -o volEmpty

test1:	vol1
	bash -c "time ./vol1"

test2:	vol2
	bash -c "time ./vol2"

test3:	vol3
	bash -c "time ./vol3"

testEmpty: volEmpty
	bash -c "time ./volEmpty"



prof1: vol1
	bash -c "time ./vol1"
	bash -c "gprof vol1 | gprof2dot | dot -Tps | convert - gprof_vol1.png" 

prof2: vol2
	bash -c "time ./vol2"
	bash -c "gprof vol2 | gprof2dot | dot -Tps | convert - gprof_vol2.png" 

prof3: vol3
	bash -c "time ./vol3"
	bash -c "gprof vol3 | gprof2dot | dot -Tps | convert - gprof_vol3.png" 

profEmpty: volEmpty
	bash -c "time ./volEmpty"
	bash -c "gprof volEmpty | gprof2dot | dot -Tps | convert - gprof_volEmpty.png" 


# target to test all binaries
test:	${BINARIES}

gdb1:	vol1
	gdb vol1

clean:	
	rm ${BINARIES} || true


