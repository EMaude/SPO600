BINARIES = v1 v2
CCOPTS = -g -O3

all:	${BINARIES}

vol1:	v1.c
	gcc ${CCOPTS} v1.c -o v1

vol2:	vol2.c vol.h
	gcc	${CCOPTS} v2.c -o v2
clean:	
	rm ${BINARIES} || true
