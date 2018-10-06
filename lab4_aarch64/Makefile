BINARIES=hello loop loopEx loopF
AS=as
LD=ld

all:	${BINARIES}

hello:		hello.s
		${AS}	-g	-o hello.o	hello.s
		${LD}		-o hello	hello.o

loop: 		loop.s
		${AS} 	-g 	-o loop.o 	loop.s
		${LD} 		-o loop		loop.o

loopEx: 		loopEx.s
		${AS} 	-g 	-o loopEx.o 	loopEx.s
		${LD} 		-o loopEx		loopEx.o

loopF: 		loopF.s
		${AS} 	-g 	-o loopF.o 	loopF.s
		${LD} 		-o loopF		loopF.o

clean:	
		rm ${BINARIES} *.o || true



