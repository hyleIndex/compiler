	.globl main
	.text
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $152, %rsp
	movabsq $1, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp) , %rdi
	movabsq $8, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp) , %rsi
	callq calloc
	movq %rax, -24(%rbp)
	movabsq $5, %r10
	movq %r10, -32(%rbp)
	leaq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -40(%rbp)
	movq -40(%rbp) , %rdi
	callq __bx_print_int
	movq $2, %rdi
	movq $8, %rsi
	callq calloc
	movq %rax, -48(%rbp)
	movabsq $5, %r10
	movq %r10, -56(%rbp)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -56(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -64(%rbp)
	movq -64(%rbp) , %rdi
	movabsq $16, %r10
	movq %r10, -72(%rbp)
	movq -72(%rbp) , %rsi
	callq calloc
	movq %rax, -80(%rbp)
	movq -80(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -88(%rbp)
	movabsq $10, %r10
	movq %r10, -96(%rbp)
	movq -88(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -96(%rbp), %r11
	movq %r11, (%r10)
	movq -80(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -104(%rbp)
	movq -104(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -112(%rbp)
	movq -112(%rbp) , %rdi
	callq __bx_print_int
	movq -80(%rbp), %r10
	movq %r10, -120(%rbp)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -120(%rbp), %r11
	movq %r11, (%r10)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -128(%rbp)
	movq -128(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -136(%rbp)
	movq -136(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -144(%rbp)
	movq -144(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -152(%rbp)
	movq -152(%rbp) , %rdi
	callq __bx_print_int
.Lend_main:
	movq %rbp, %rsp 
	popq %rbp 
	xorq %rax, %rax
	retq

