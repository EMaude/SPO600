BINARIES=loop loop_num loopEx loopF

all:	${BINARIES}
AS_ARGS=-g

loop:		loop.s
		as	${AS_ARGS}	-o loop.o		loop.s
		ld			-o loop		loop.o

loop_num: 	loop_num.s
		as	${AS_ARGS}	-o loop_num.o	loop_num.s
		ld 			-o loop_num	loop_num.o

loopEx:		loopEx.s
		as 	${AS_ARGS}	-o loopEx.o	loopEx.s
		ld			-o loopEx	loopEx.o

loopF:		loopF.s
		as 	${AS_ARGS}	-o loopF.o	loopF.s
		ld			-o loopF loopF.o


clean:	
		rm ${BINARIES} *.o || true



