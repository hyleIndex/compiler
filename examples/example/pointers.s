	.globl ptws
	.text
ptws:
	pushq %rbp
	movq %rsp, %rbp
	subq $240, %rsp
	movq %rdi, -8(%rbp)
	movq %rsi, -16(%rbp)
	movabsq $2, %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp) , %rdi
	movabsq $8, %r10
	movq %r10, -32(%rbp)
	movq -32(%rbp) , %rsi
	callq calloc
	movq %rax, -40(%rbp)
	movabsq $0, %r10
	movq %r10, -48(%rbp)
	movabsq $8, %r10
	movq %r10, -56(%rbp)
	movq -48(%rbp), %r10
	imulq -56(%rbp), %r10
	movq %r10, -64(%rbp)
	movabsq $0, %r10
	movq %r10, -72(%rbp)
	movabsq $8, %r10
	movq %r10, -80(%rbp)
	movq -72(%rbp), %r10
	imulq -80(%rbp), %r10
	movq %r10, -88(%rbp)
	movq -8(%rbp), %r12
	movq $0, %r13
	movq -88(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -96(%rbp)
	movabsq $0, %r10
	movq %r10, -104(%rbp)
	movabsq $8, %r10
	movq %r10, -112(%rbp)
	movq -104(%rbp), %r10
	imulq -112(%rbp), %r10
	movq %r10, -120(%rbp)
	movq -16(%rbp), %r12
	movq $0, %r13
	movq -120(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -128(%rbp)
	movq -96(%rbp), %r10
	imulq -128(%rbp), %r10
	movq %r10, -136(%rbp)
	movq -40(%rbp), %r12
	movq $0, %r13
	movq -64(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -136(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -144(%rbp)
	movabsq $8, %r10
	movq %r10, -152(%rbp)
	movq -144(%rbp), %r10
	imulq -152(%rbp), %r10
	movq %r10, -160(%rbp)
	movabsq $1, %r10
	movq %r10, -168(%rbp)
	movabsq $8, %r10
	movq %r10, -176(%rbp)
	movq -168(%rbp), %r10
	imulq -176(%rbp), %r10
	movq %r10, -184(%rbp)
	movq -8(%rbp), %r12
	movq $0, %r13
	movq -184(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -192(%rbp)
	movabsq $1, %r10
	movq %r10, -200(%rbp)
	movabsq $8, %r10
	movq %r10, -208(%rbp)
	movq -200(%rbp), %r10
	imulq -208(%rbp), %r10
	movq %r10, -216(%rbp)
	movq -16(%rbp), %r12
	movq $0, %r13
	movq -216(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -224(%rbp)
	movq -192(%rbp), %r10
	imulq -224(%rbp), %r10
	movq %r10, -232(%rbp)
	movq -40(%rbp), %r12
	movq $0, %r13
	movq -160(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -232(%rbp), %r11
	movq %r11, (%r10)
	movq -40(%rbp), %r10
	movq %r10, -240(%rbp)
	movq -240(%rbp), %rax
	jmp .Lend_ptws
.Lend_ptws:
	movq %rbp, %rsp 
	popq %rbp 
	retq

	.globl fun
	.text
fun:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rdi, -8(%rbp)
	movq %rsi, -16(%rbp)
	movq -8(%rbp), %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp), %rax
	jmp .Lend_fun
.Lend_fun:
	movq %rbp, %rsp 
	popq %rbp 
	retq

	.globl main
	.text
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $760, %rsp
	movabsq $10, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp) , %rdi
	movabsq $8, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp) , %rsi
	callq calloc
	movq %rax, -24(%rbp)
	movabsq $5, %r10
	movq %r10, -32(%rbp)
	movq -32(%rbp) , %rdi
	movabsq $8, %r10
	movq %r10, -40(%rbp)
	movq -40(%rbp) , %rsi
	callq calloc
	movq %rax, -48(%rbp)
	movabsq $0, %r10
	movq %r10, -56(%rbp)
	movabsq $8, %r10
	movq %r10, -64(%rbp)
	movq -56(%rbp), %r10
	imulq -64(%rbp), %r10
	movq %r10, -72(%rbp)
	movabsq $1, %r10
	movq %r10, -80(%rbp)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq -72(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -80(%rbp), %r11
	movq %r11, (%r10)
	movabsq $0, %r10
	movq %r10, -88(%rbp)
	movabsq $8, %r10
	movq %r10, -96(%rbp)
	movq -88(%rbp), %r10
	imulq -96(%rbp), %r10
	movq %r10, -104(%rbp)
	movabsq $2, %r10
	movq %r10, -112(%rbp)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq -104(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -112(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -120(%rbp)
	movabsq $8, %r10
	movq %r10, -128(%rbp)
	movq -120(%rbp), %r10
	imulq -128(%rbp), %r10
	movq %r10, -136(%rbp)
	movabsq $5, %r10
	movq %r10, -144(%rbp)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq -136(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -144(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -152(%rbp)
	movabsq $8, %r10
	movq %r10, -160(%rbp)
	movq -152(%rbp), %r10
	imulq -160(%rbp), %r10
	movq %r10, -168(%rbp)
	movabsq $3, %r10
	movq %r10, -176(%rbp)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq -168(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -176(%rbp), %r11
	movq %r11, (%r10)
	movq -24(%rbp), %r10
	movq %r10, -184(%rbp)
	movq -184(%rbp) , %rdi
	movq -48(%rbp), %r10
	movq %r10, -192(%rbp)
	movq -192(%rbp) , %rsi
	callq ptws
	movq %rax, -200(%rbp)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -208(%rbp)
	movq -208(%rbp) , %rdi
	callq __bx_print_int
	movabsq $1, %r10
	movq %r10, -216(%rbp)
	movabsq $8, %r10
	movq %r10, -224(%rbp)
	movq -216(%rbp), %r10
	imulq -224(%rbp), %r10
	movq %r10, -232(%rbp)
	movabsq $1, %r10
	movq %r10, -240(%rbp)
	movabsq $8, %r10
	movq %r10, -248(%rbp)
	movq -240(%rbp), %r10
	imulq -248(%rbp), %r10
	movq %r10, -256(%rbp)
	movq -24(%rbp), %r12
	movq $0, %r13
	movq -256(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -264(%rbp)
	movabsq $1, %r10
	movq %r10, -272(%rbp)
	movabsq $8, %r10
	movq %r10, -280(%rbp)
	movq -272(%rbp), %r10
	imulq -280(%rbp), %r10
	movq %r10, -288(%rbp)
	movq -48(%rbp), %r12
	movq $0, %r13
	movq -288(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -296(%rbp)
	movq -264(%rbp), %r10
	subq -296(%rbp), %r10
	movq %r10, -304(%rbp)
	movabsq $5, %r10
	movq %r10, -312(%rbp)
	movq -304(%rbp), %r10
	addq -312(%rbp), %r10
	movq %r10, -320(%rbp)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq -232(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -320(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -328(%rbp)
	movabsq $8, %r10
	movq %r10, -336(%rbp)
	movq -328(%rbp), %r10
	imulq -336(%rbp), %r10
	movq %r10, -344(%rbp)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq -344(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -352(%rbp)
	movq -352(%rbp) , %rdi
	callq __bx_print_int
	movq -200(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq (%r10), %r11
	movq %r11, -360(%rbp)
	movq -360(%rbp) , %rdi
	callq __bx_print_int
	movabsq $0, %r10
	movq %r10, -368(%rbp)
	movq -24(%rbp), %r10
	movq %r10, -376(%rbp)
	movq -200(%rbp), %r10
	movq %r10, -384(%rbp)
	movq -376(%rbp), %r10
	subq -384(%rbp), %r10
	movq %r10, -376(%rbp)
	movq -376(%rbp),%r10
	cmpq $0, %r10
	jz .L0_main_main
.L1_main_main:
	movq -368(%rbp), %r10
	movq %r10, -392(%rbp)
	movq -392(%rbp) , %rdi
	callq __bx_print_bool
	movabsq $0, %r10
	movq %r10, -400(%rbp)
	movq -24(%rbp), %r10
	movq %r10, -408(%rbp)
	movq -24(%rbp), %r10
	movq %r10, -416(%rbp)
	movq -408(%rbp), %r10
	subq -416(%rbp), %r10
	movq %r10, -408(%rbp)
	movq -408(%rbp),%r10
	cmpq $0, %r10
	jz .L2_main_main
.L3_main_main:
	movq -400(%rbp), %r10
	movq %r10, -424(%rbp)
	movq -424(%rbp) , %rdi
	callq __bx_print_bool
	movabsq $0, %r10
	movq %r10, -432(%rbp)
	movabsq $8, %r10
	movq %r10, -440(%rbp)
	movq -432(%rbp), %r10
	imulq -440(%rbp), %r10
	movq %r10, -448(%rbp)
	movabsq $1, %r10
	movq %r10, -456(%rbp)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq -448(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -456(%rbp), %r11
	movq %r11, (%r10)
	movabsq $1, %r10
	movq %r10, -464(%rbp)
	movabsq $8, %r10
	movq %r10, -472(%rbp)
	movq -464(%rbp), %r10
	imulq -472(%rbp), %r10
	movq %r10, -480(%rbp)
	movabsq $5, %r10
	movq %r10, -488(%rbp)
	movq -200(%rbp), %r12
	movq $0, %r13
	movq -480(%rbp), %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq -488(%rbp), %r11
	movq %r11, (%r10)
	movabsq $0, %r10
	movq %r10, -496(%rbp)
	movq -24(%rbp), %r10
	movq %r10, -504(%rbp)
	movq -200(%rbp), %r10
	movq %r10, -512(%rbp)
	movq -504(%rbp), %r10
	subq -512(%rbp), %r10
	movq %r10, -504(%rbp)
	movq -504(%rbp),%r10
	cmpq $0, %r10
	jz .L4_main_main
.L5_main_main:
	movq -496(%rbp), %r10
	movq %r10, -520(%rbp)
	movq -520(%rbp) , %rdi
	callq __bx_print_bool
	movq -48(%rbp), %r10
	movq %r10, -528(%rbp)
	movabsq $0, %r10
	movq %r10, -536(%rbp)
	movq -48(%rbp), %r10
	movq %r10, -544(%rbp)
	movq -528(%rbp), %r10
	movq %r10, -552(%rbp)
	movq -544(%rbp), %r10
	subq -552(%rbp), %r10
	movq %r10, -544(%rbp)
	movq -544(%rbp),%r10
	cmpq $0, %r10
	jz .L6_main_main
.L7_main_main:
	movq -536(%rbp), %r10
	movq %r10, -560(%rbp)
	movq -560(%rbp) , %rdi
	callq __bx_print_bool
	movq -568(%rbp), %r10
	movq %r10, -576(%rbp)
	movabsq $0, %r10
	movq %r10, -584(%rbp)
	movq -576(%rbp), %r10
	movq %r10, -592(%rbp)
	movq -568(%rbp), %r10
	movq %r10, -600(%rbp)
	movq -592(%rbp), %r10
	subq -600(%rbp), %r10
	movq %r10, -592(%rbp)
	movq -592(%rbp),%r10
	cmpq $0, %r10
	jz .L8_main_main
.L9_main_main:
	movq -584(%rbp), %r10
	movq %r10, -608(%rbp)
	movq -608(%rbp) , %rdi
	callq __bx_print_bool
	movabsq $0, %r10
	movq %r10, -616(%rbp)
	movq -24(%rbp), %r10
	movq %r10, -624(%rbp)
	movq -568(%rbp), %r10
	movq %r10, -632(%rbp)
	movq -624(%rbp), %r10
	subq -632(%rbp), %r10
	movq %r10, -624(%rbp)
	movq -624(%rbp),%r10
	cmpq $0, %r10
	jz .L10_main_main
.L11_main_main:
	movq -616(%rbp), %r10
	movq %r10, -640(%rbp)
	movq -640(%rbp) , %rdi
	callq __bx_print_bool
	movabsq $0, %r10
	movq %r10, -648(%rbp)
	movq -576(%rbp), %r10
	movq %r10, -656(%rbp)
	movq -528(%rbp), %r10
	movq %r10, -664(%rbp)
	movq -656(%rbp), %r10
	subq -664(%rbp), %r10
	movq %r10, -656(%rbp)
	movq -656(%rbp),%r10
	cmpq $0, %r10
	jz .L12_main_main
.L13_main_main:
	movq -648(%rbp), %r10
	movq %r10, -672(%rbp)
	movq -672(%rbp) , %rdi
	callq __bx_print_bool
	movabsq $0, %r10
	movq %r10, -680(%rbp)
	movq -576(%rbp), %r10
	movq %r10, -688(%rbp)
	movq -688(%rbp) , %rdi
	movq -568(%rbp), %r10
	movq %r10, -696(%rbp)
	movq -696(%rbp) , %rsi
	callq fun
	movq %rax, -704(%rbp)
	movq -568(%rbp), %r10
	movq %r10, -712(%rbp)
	movq -704(%rbp), %r10
	subq -712(%rbp), %r10
	movq %r10, -704(%rbp)
	movq -704(%rbp),%r10
	cmpq $0, %r10
	jz .L14_main_main
.L15_main_main:
	movq -680(%rbp), %r10
	movq %r10, -720(%rbp)
	movq -720(%rbp) , %rdi
	callq __bx_print_bool
	movabsq $10, %r10
	movq %r10, -728(%rbp)
	leaq -728(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -576(%rbp)
	leaq -728(%rbp), %r12
	movq $0, %r13
	movq $0, %r14
	addq %r14, %r13
	leaq 0(%r12, %r13, 1), %r10
	movq %r10, -528(%rbp)
	movabsq $0, %r10
	movq %r10, -736(%rbp)
	movq -576(%rbp), %r10
	movq %r10, -744(%rbp)
	movq -528(%rbp), %r10
	movq %r10, -752(%rbp)
	movq -744(%rbp), %r10
	subq -752(%rbp), %r10
	movq %r10, -744(%rbp)
	movq -744(%rbp),%r10
	cmpq $0, %r10
	jz .L16_main_main
.L17_main_main:
	movq -736(%rbp), %r10
	movq %r10, -760(%rbp)
	movq -760(%rbp) , %rdi
	callq __bx_print_bool
	xorq %rax, %rax
	jmp .Lend_main
.L16_main_main:
	movabsq $1, %r10
	movq %r10, -736(%rbp)
	jmp .L17_main_main
.L14_main_main:
	movabsq $1, %r10
	movq %r10, -680(%rbp)
	jmp .L15_main_main
.L12_main_main:
	movabsq $1, %r10
	movq %r10, -648(%rbp)
	jmp .L13_main_main
.L10_main_main:
	movabsq $1, %r10
	movq %r10, -616(%rbp)
	jmp .L11_main_main
.L8_main_main:
	movabsq $1, %r10
	movq %r10, -584(%rbp)
	jmp .L9_main_main
.L6_main_main:
	movabsq $1, %r10
	movq %r10, -536(%rbp)
	jmp .L7_main_main
.L4_main_main:
	movabsq $1, %r10
	movq %r10, -496(%rbp)
	jmp .L5_main_main
.L2_main_main:
	movabsq $1, %r10
	movq %r10, -400(%rbp)
	jmp .L3_main_main
.L0_main_main:
	movabsq $1, %r10
	movq %r10, -368(%rbp)
	jmp .L1_main_main
.Lend_main:
	movq %rbp, %rsp 
	popq %rbp 
	xorq %rax, %rax
	retq

