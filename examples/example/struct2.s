	.globl main
	.text
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $232, %rsp
	movabsq $1, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp) , %rdi
	movabsq $16, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp) , %rsi
	callq calloc
	movq %rax, -24(%rbp)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -32(%rbp)
	movabsq $20, %r10
	movq %r10, -40(%rbp)
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -40(%rbp), %r11
	movq %r11, (%r10)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -48(%rbp)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -56(%rbp)
	movq -56(%rbp) , %rdi
	callq __bx_print_int
	movq $150, %rdi
	movq $8, %rsi
	callq calloc
	movq %rax, -64(%rbp)
	movabsq $1, %r10
	movq %r10, -72(%rbp)
	movabsq $80, %r10
	movq %r10, -80(%rbp)
	movq -72(%rbp), %r10
	imulq -80(%rbp), %r10
	movq %r10, -88(%rbp)
	movq -64(%rbp), %r12
	movq $0, %r13
	movq -88(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -96(%rbp)
	movabsq $2, %r10
	movq %r10, -104(%rbp)
	movabsq $8, %r10
	movq %r10, -112(%rbp)
	movq -104(%rbp), %r10
	imulq -112(%rbp), %r10
	movq %r10, -120(%rbp)
	movabsq $5, %r10
	movq %r10, -128(%rbp)
	movq -96(%rbp), %r12
	movq $0, %r13
	movq -120(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -128(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -136(%rbp)
	movabsq $80, %r10
	movq %r10, -144(%rbp)
	movq -136(%rbp), %r10
	imulq -144(%rbp), %r10
	movq %r10, -152(%rbp)
	movq -64(%rbp), %r12
	movq $0, %r13
	movq -152(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -160(%rbp)
	movabsq $2, %r10
	movq %r10, -168(%rbp)
	movabsq $8, %r10
	movq %r10, -176(%rbp)
	movq -168(%rbp), %r10
	imulq -176(%rbp), %r10
	movq %r10, -184(%rbp)
	movq -160(%rbp), %r12
	movq $0, %r13
	movq -184(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -192(%rbp)
	movq -192(%rbp) , %rdi
	callq __bx_print_int
	movq $1, %rdi
	movq $8, %rsi
	callq calloc
	movq %rax, -200(%rbp)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -208(%rbp)
	movabsq $5, %r10
	movq %r10, -216(%rbp)
	movq -208(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -216(%rbp), %r11
	movq %r11, (%r10)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -224(%rbp)
	movq -224(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -232(%rbp)
	movq -232(%rbp) , %rdi
	callq __bx_print_int
.Lend_main:
	movq %rbp, %rsp 
	popq %rbp 
	xorq %rax, %rax
	retq

