BINARIES=hello loop
AS=as
LD=ld

all:	${BINARIES}

hello:		hello.s
		${AS}	-g	-o hello.o	hello.s
		${LD}		-o hello	hello.o

loop: 		loop.s
		${AS} 	-g 	-o loop.o 	loop.s
		${LD} 		-o loop		loop.o
clean:	
		rm ${BINARIES} *.o || true



