.text
.globl _start

start = 0
max = 10
offset = 48

_start:
	mov	x19,start

_loop:
	add 	x20,x19,offset	/*number counter stuff*/
	adr 	x21, msg
	strb 	w20, [x21, 6]


	mov     x0, 1           /* file descriptor: 1 is stdout */
	adr     x1, msg   	/*message location (memory address) */
	mov     x2, len   	/* message length (bytes) */

	mov     x8, 64     	/* write is syscall #64 */
	svc     0          	/*invoke syscall */
 
	add 	x19,x19,1	/*LOOP CHECKING STUFF*/
	cmp 	x19,max
	b.ne 	_loop

	mov     x0, 0     	/* status -> 0*/
	mov     x8, 93    	/* exit is syscall #93 */
	svc     0          	/* invoke syscall*/
 
.data
msg: 	.ascii      "Loop:  \n"
len= 	. - msg

