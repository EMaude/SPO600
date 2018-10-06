.text
.globl _start

start = 0
max = 30
offset = 48
divisor = 10

_start:
	mov	x19, start
	mov x23, divisor
_loop:
	adr 	x21, msg		/* put msg into register 21 */
	
	udiv 	x20, x19, x23 /* divide index by divisor, store into x20 */
	msub 	x22, x20, x23, x19 /* calculate remainder and store into x22 */
	
	/* tens */
	add 	x24, x20 ,offset	/*add offset to  division result*/
	strb 	w24, [x21, 6]	/* move addition result into msg + 6*/

	/* ones */
	add x24, x22, offset /*add offset to remainder */
	strb w24, [x21, 7] /* move into msg+7 */

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
msg: 	.ascii      "Loop:   \n"
len= 	. - msg

