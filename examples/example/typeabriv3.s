	.globl main
	.text
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $136, %rsp
	movq $2, %rdi
	movq $8, %rsi
	callq calloc
	movq %rax, -8(%rbp)
	movabsq $5, %r10
	movq %r10, -16(%rbp)
	movq -8(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -16(%rbp), %r11
	movq %r11, (%r10)
	movq $2, %rdi
	movq $8, %rsi
	callq calloc
	movq %rax, -24(%rbp)
	movabsq $2, %r10
	movq %r10, -32(%rbp)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -32(%rbp), %r11
	movq %r11, (%r10)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -40(%rbp)
	movq -8(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -40(%rbp), %r11
	movq %r11, (%r10)
	movq -8(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
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
	movq -56(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -64(%rbp)
	movq -64(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -72(%rbp)
	movq -72(%rbp) , %rdi
	callq __bx_print_int
	movq -8(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -80(%rbp)
	movq -80(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -88(%rbp)
	movq -88(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -96(%rbp)
	movabsq $11, %r10
	movq %r10, -104(%rbp)
	movq -96(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -104(%rbp), %r11
	movq %r11, (%r10)
	movq -8(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -112(%rbp)
	movq -112(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -120(%rbp)
	movq -120(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
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
	movq -136(%rbp) , %rdi
	callq __bx_print_int
.Lend_main:
	movq %rbp, %rsp 
	popq %rbp 
	xorq %rax, %rax
	retq

