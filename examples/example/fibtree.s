	.globl make_fibtree
	.text
make_fibtree:
	pushq %rbp
	movq %rsp, %rbp
	subq $408, %rsp
	movq %rdi, -8(%rbp)
	movabsq $1, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp) , %rdi
	movabsq $24, %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp) , %rsi
	callq calloc
	movq %rax, -32(%rbp)
	movq -8(%rbp), %r10
	movq %r10, -40(%rbp)
	movabsq $0, %r10
	movq %r10, -48(%rbp)
	movq -40(%rbp), %r10
	subq -48(%rbp), %r10
	movq %r10, -40(%rbp)
	movq -40(%rbp),%r10
	cmpq $0, %r10
	jz .L0_make_fibtree_make_fibtree
.L1_make_fibtree_make_fibtree:
	movq -8(%rbp), %r10
	movq %r10, -56(%rbp)
	movabsq $1, %r10
	movq %r10, -64(%rbp)
	movq -56(%rbp), %r10
	subq -64(%rbp), %r10
	movq %r10, -56(%rbp)
	movq -56(%rbp),%r10
	cmpq $0, %r10
	jz .L3_make_fibtree_make_fibtree
.L4_make_fibtree_make_fibtree:
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -72(%rbp)
	movq -72(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -80(%rbp)
	movabsq $0, %r10
	movq %r10, -88(%rbp)
	movabsq $8, %r10
	movq %r10, -96(%rbp)
	movq -88(%rbp), %r10
	imulq -96(%rbp), %r10
	movq %r10, -104(%rbp)
	movq -8(%rbp), %r10
	movq %r10, -112(%rbp)
	movabsq $1, %r10
	movq %r10, -120(%rbp)
	movq -112(%rbp), %r10
	subq -120(%rbp), %r10
	movq %r10, -128(%rbp)
	movq -128(%rbp) , %rdi
	callq make_fibtree
	movq %rax, -136(%rbp)
	movq -80(%rbp), %r12
	movq $0, %r13
	movq -104(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -136(%rbp), %r11
	movq %r11, (%r10)
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -144(%rbp)
	movq -144(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -152(%rbp)
	movabsq $1, %r10
	movq %r10, -160(%rbp)
	movabsq $8, %r10
	movq %r10, -168(%rbp)
	movq -160(%rbp), %r10
	imulq -168(%rbp), %r10
	movq %r10, -176(%rbp)
	movq -8(%rbp), %r10
	movq %r10, -184(%rbp)
	movabsq $2, %r10
	movq %r10, -192(%rbp)
	movq -184(%rbp), %r10
	subq -192(%rbp), %r10
	movq %r10, -200(%rbp)
	movq -200(%rbp) , %rdi
	callq make_fibtree
	movq %rax, -208(%rbp)
	movq -152(%rbp), %r12
	movq $0, %r13
	movq -176(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -208(%rbp), %r11
	movq %r11, (%r10)
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -216(%rbp)
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -224(%rbp)
	movq -224(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -232(%rbp)
	movabsq $0, %r10
	movq %r10, -240(%rbp)
	movabsq $8, %r10
	movq %r10, -248(%rbp)
	movq -240(%rbp), %r10
	imulq -248(%rbp), %r10
	movq %r10, -256(%rbp)
	movq -232(%rbp), %r12
	movq $0, %r13
	movq -256(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -264(%rbp)
	movq -264(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -272(%rbp)
	movq -272(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -280(%rbp)
	movq -280(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -288(%rbp)
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -296(%rbp)
	movq -296(%rbp), %r12
	movq $0, %r13
	movq $8, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -304(%rbp)
	movabsq $1, %r10
	movq %r10, -312(%rbp)
	movabsq $8, %r10
	movq %r10, -320(%rbp)
	movq -312(%rbp), %r10
	imulq -320(%rbp), %r10
	movq %r10, -328(%rbp)
	movq -304(%rbp), %r12
	movq $0, %r13
	movq -328(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -336(%rbp)
	movq -336(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -344(%rbp)
	movq -344(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -352(%rbp)
	movq -352(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -360(%rbp)
	movq -288(%rbp), %r10
	addq -360(%rbp), %r10
	movq %r10, -368(%rbp)
	movq -216(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -368(%rbp), %r11
	movq %r11, (%r10)
.L5_make_fibtree_make_fibtree:
.L2_make_fibtree_make_fibtree:
	movq -32(%rbp), %r10
	movq %r10, -376(%rbp)
	movq -376(%rbp), %rax
	jmp .Lend_make_fibtree
.L3_make_fibtree_make_fibtree:
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -384(%rbp)
	movabsq $1, %r10
	movq %r10, -392(%rbp)
	movq -384(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -392(%rbp), %r11
	movq %r11, (%r10)
	jmp .L5_make_fibtree_make_fibtree
.L0_make_fibtree_make_fibtree:
	movq -32(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -400(%rbp)
	movabsq $0, %r10
	movq %r10, -408(%rbp)
	movq -400(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -408(%rbp), %r11
	movq %r11, (%r10)
	jmp .L2_make_fibtree_make_fibtree
.Lend_make_fibtree:
	movq %rbp, %rsp 
	popq %rbp 
	retq

	.globl main
	.text
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movabsq $20, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp) , %rdi
	callq make_fibtree
	movq %rax, -16(%rbp)
	movq -16(%rbp), %r12
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
	movq %r11, -32(%rbp)
	movq -32(%rbp) , %rdi
	callq __bx_print_int
.Lend_main:
	movq %rbp, %rsp 
	popq %rbp 
	xorq %rax, %rax
	retq

