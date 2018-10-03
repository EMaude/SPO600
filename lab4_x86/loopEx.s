.text
.globl    _start

start = 0                       /* starting value for the loop index; note that this is a symbol (constant), not a variable */
max = 30                        /* loop exits when the index hits this number (loop condition is i<max) */
offset = 48
divisor = 10
zero 	= 0

_start:
    mov     $start,%r15         /* loop index */

loop:
    /* ... body of the loop ... do something useful here ... */



	movq 	$zero, %rdx
	movq	%r15, %rax
	movq 	$divisor, %r10
	div	%r10


				/* message length */
	movb 	$offset, %bl

	add 	%rax, %rbx
	mov 	%bl, msg + 6

	movb 	$offset, %bl
	add	%rdx,%rbx
	mov     %bl, msg + 7				/* message location */

	movq	$len,%rdx
	movq 	$msg,%rsi
	movq	$1,%rdi				/* file descriptor stdout */
	movq	$1,%rax				/* syscall sys_write */
	syscall


    inc     %r15                /* increment index */
    cmp     $max,%r15           /* see if we're done */
    jne     loop                /* loop if we're not */

    mov     $0,%rdi             /* exit status */
    mov     $60,%rax            /* syscall sys_exit */
    syscall

.section .data

msg: .ascii 	"Loop:   \n"
	len = . - msg
