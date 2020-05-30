	.file	"multithread_disasm.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.data.rel,"aw"
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.text
	.type	_ZL18__gthread_active_pv, @function
_ZL18__gthread_active_pv:
.LFB1185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_ZZL18__gthread_active_pvE20__gthread_active_ptr(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1185:
	.size	_ZL18__gthread_active_pv, .-_ZL18__gthread_active_pv
	.section	.text._ZL20__gthread_mutex_lockP15pthread_mutex_t,"axG",@progbits,_ZNSt5mutex4lockEv,comdat
	.type	_ZL20__gthread_mutex_lockP15pthread_mutex_t, @function
_ZL20__gthread_mutex_lockP15pthread_mutex_t:
.LFB1199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t@PLT
	jmp	.L5
.L4:
	movl	$0, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1199:
	.size	_ZL20__gthread_mutex_lockP15pthread_mutex_t, .-_ZL20__gthread_mutex_lockP15pthread_mutex_t
	.section	.text._ZL22__gthread_mutex_unlockP15pthread_mutex_t,"axG",@progbits,_ZNSt5mutex6unlockEv,comdat
	.type	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, @function
_ZL22__gthread_mutex_unlockP15pthread_mutex_t:
.LFB1202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t@PLT
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1202:
	.size	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, .-_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	.section	.text._ZNSt5mutex4lockEv,"axG",@progbits,_ZNSt5mutex4lockEv,comdat
	.align 2
	.weak	_ZNSt5mutex4lockEv
	.type	_ZNSt5mutex4lockEv, @function
_ZNSt5mutex4lockEv:
.LFB1626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL20__gthread_mutex_lockP15pthread_mutex_t
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L11
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	_ZSt20__throw_system_errori@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1626:
	.size	_ZNSt5mutex4lockEv, .-_ZNSt5mutex4lockEv
	.section	.text._ZNSt5mutex6unlockEv,"axG",@progbits,_ZNSt5mutex6unlockEv,comdat
	.align 2
	.weak	_ZNSt5mutex6unlockEv
	.type	_ZNSt5mutex6unlockEv, @function
_ZNSt5mutex6unlockEv:
.LFB1628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1628:
	.size	_ZNSt5mutex6unlockEv, .-_ZNSt5mutex6unlockEv
	.section	.rodata
	.type	_ZStL10defer_lock, @object
	.size	_ZStL10defer_lock, 1
_ZStL10defer_lock:
	.zero	1
	.type	_ZStL11try_to_lock, @object
	.size	_ZStL11try_to_lock, 1
_ZStL11try_to_lock:
	.zero	1
	.type	_ZStL10adopt_lock, @object
	.size	_ZStL10adopt_lock, 1
_ZStL10adopt_lock:
	.zero	1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt6thread2idC2Ev,"axG",@progbits,_ZNSt6thread2idC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread2idC2Ev
	.type	_ZNSt6thread2idC2Ev, @function
_ZNSt6thread2idC2Ev:
.LFB2949:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2949:
	.size	_ZNSt6thread2idC2Ev, .-_ZNSt6thread2idC2Ev
	.weak	_ZNSt6thread2idC1Ev
	.set	_ZNSt6thread2idC1Ev,_ZNSt6thread2idC2Ev
	.section	.text._ZNSt6threadD2Ev,"axG",@progbits,_ZNSt6threadD5Ev,comdat
	.align 2
	.weak	_ZNSt6threadD2Ev
	.type	_ZNSt6threadD2Ev, @function
_ZNSt6threadD2Ev:
.LFB2956:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6thread8joinableEv
	testb	%al, %al
	je	.L16
	call	_ZSt9terminatev@PLT
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2956:
	.size	_ZNSt6threadD2Ev, .-_ZNSt6threadD2Ev
	.weak	_ZNSt6threadD1Ev
	.set	_ZNSt6threadD1Ev,_ZNSt6threadD2Ev
	.section	.text._ZNKSt6thread8joinableEv,"axG",@progbits,_ZNKSt6thread8joinableEv,comdat
	.align 2
	.weak	_ZNKSt6thread8joinableEv
	.type	_ZNKSt6thread8joinableEv, @function
_ZNKSt6thread8joinableEv:
.LFB2963:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	(%rax), %rdi
	call	_ZSteqNSt6thread2idES0_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2963:
	.size	_ZNKSt6thread8joinableEv, .-_ZNKSt6thread8joinableEv
	.section	.text._ZSteqNSt6thread2idES0_,"axG",@progbits,_ZSteqNSt6thread2idES0_,comdat
	.weak	_ZSteqNSt6thread2idES0_
	.type	_ZSteqNSt6thread2idES0_, @function
_ZSteqNSt6thread2idES0_:
.LFB2973:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2973:
	.size	_ZSteqNSt6thread2idES0_, .-_ZSteqNSt6thread2idES0_
	.section	.rodata
.LC0:
	.string	"Producer: buffer = "
	.text
	.globl	_Z8producerRSt5mutexRSt18condition_variableS2_Ri
	.type	_Z8producerRSt5mutexRSt18condition_variableS2_Ri, @function
_Z8producerRSt5mutexRSt18condition_variableS2_Ri:
.LFB2985:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2985
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -20(%rbp)
.L25:
	cmpl	$999999, -20(%rbp)
	jg	.L28
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt11unique_lockISt5mutexEC1ERS0_
.LEHE0:
.L24:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L23
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE@PLT
	jmp	.L24
.L23:
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexE6unlockEv
.LEHE1:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variable10notify_oneEv@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexED1Ev
	addl	$1, -20(%rbp)
	jmp	.L25
.L27:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L28:
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2985:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2985-.LLSDACSB2985
.LLSDACSB2985:
	.uleb128 .LEHB0-.LFB2985
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2985
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L27-.LFB2985
	.uleb128 0
	.uleb128 .LEHB2-.LFB2985
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2985:
	.text
	.size	_Z8producerRSt5mutexRSt18condition_variableS2_Ri, .-_Z8producerRSt5mutexRSt18condition_variableS2_Ri
	.section	.rodata
.LC1:
	.string	"Consumer: buffer = "
	.text
	.globl	_Z8consumerRSt5mutexRSt18condition_variableS2_Ri
	.type	_Z8consumerRSt5mutexRSt18condition_variableS2_Ri, @function
_Z8consumerRSt5mutexRSt18condition_variableS2_Ri:
.LFB2986:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2986
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -20(%rbp)
.L33:
	cmpl	$999999, -20(%rbp)
	jg	.L36
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt11unique_lockISt5mutexEC1ERS0_
.LEHE3:
.L32:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L31
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE@PLT
	jmp	.L32
.L31:
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexE6unlockEv
.LEHE4:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variable10notify_oneEv@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexED1Ev
	addl	$1, -20(%rbp)
	jmp	.L33
.L35:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L36:
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2986:
	.section	.gcc_except_table
.LLSDA2986:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2986-.LLSDACSB2986
.LLSDACSB2986:
	.uleb128 .LEHB3-.LFB2986
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2986
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L35-.LFB2986
	.uleb128 0
	.uleb128 .LEHB5-.LFB2986
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2986:
	.text
	.size	_Z8consumerRSt5mutexRSt18condition_variableS2_Ri, .-_Z8consumerRSt5mutexRSt18condition_variableS2_Ri
	.globl	main
	.type	main, @function
main:
.LFB2987:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2987
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movl	$1, -160(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variableC1Ev@PLT
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variableC1Ev@PLT
	movl	$0, -276(%rbp)
	leaq	-276(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refIiESt17reference_wrapperIT_ERS1_
	movq	%rax, -80(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_
	movq	%rax, -72(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_
	movq	%rax, -64(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_
	movq	%rax, -56(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	_Z8producerRSt5mutexRSt18condition_variableS2_Ri(%rip), %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6threadC1IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_
.LEHE6:
	leaq	-276(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refIiESt17reference_wrapperIT_ERS1_
	movq	%rax, -48(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_
	movq	%rax, -40(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-296(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	_Z8consumerRSt5mutexRSt18condition_variableS2_Ri(%rip), %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6threadC1IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_
.LEHE7:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt6thread4joinEv@PLT
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread4joinEv@PLT
.LEHE8:
	movl	$0, %ebx
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variableD1Ev@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variableD1Ev@PLT
	movl	%ebx, %eax
	jmp	.L45
.L44:
	movq	%rax, %rbx
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L40
.L43:
	movq	%rax, %rbx
.L40:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L41
.L42:
	movq	%rax, %rbx
.L41:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variableD1Ev@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt18condition_variableD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L45:
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2987:
	.section	.gcc_except_table
.LLSDA2987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2987-.LLSDACSB2987
.LLSDACSB2987:
	.uleb128 .LEHB6-.LFB2987
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L42-.LFB2987
	.uleb128 0
	.uleb128 .LEHB7-.LFB2987
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L43-.LFB2987
	.uleb128 0
	.uleb128 .LEHB8-.LFB2987
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L44-.LFB2987
	.uleb128 0
	.uleb128 .LEHB9-.LFB2987
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2987:
	.text
	.size	main, .-main
	.section	.text._ZNSt11unique_lockISt5mutexEC2ERS0_,"axG",@progbits,_ZNSt11unique_lockISt5mutexEC5ERS0_,comdat
	.align 2
	.weak	_ZNSt11unique_lockISt5mutexEC2ERS0_
	.type	_ZNSt11unique_lockISt5mutexEC2ERS0_, @function
_ZNSt11unique_lockISt5mutexEC2ERS0_:
.LFB3343:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt5mutexEPT_RS1_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexE4lockEv
	movq	-8(%rbp), %rax
	movb	$1, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3343:
	.size	_ZNSt11unique_lockISt5mutexEC2ERS0_, .-_ZNSt11unique_lockISt5mutexEC2ERS0_
	.weak	_ZNSt11unique_lockISt5mutexEC1ERS0_
	.set	_ZNSt11unique_lockISt5mutexEC1ERS0_,_ZNSt11unique_lockISt5mutexEC2ERS0_
	.section	.text._ZNSt11unique_lockISt5mutexED2Ev,"axG",@progbits,_ZNSt11unique_lockISt5mutexED5Ev,comdat
	.align 2
	.weak	_ZNSt11unique_lockISt5mutexED2Ev
	.type	_ZNSt11unique_lockISt5mutexED2Ev, @function
_ZNSt11unique_lockISt5mutexED2Ev:
.LFB3346:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3346
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	je	.L49
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11unique_lockISt5mutexE6unlockEv
.L49:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3346:
	.section	.gcc_except_table
.LLSDA3346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3346-.LLSDACSB3346
.LLSDACSB3346:
.LLSDACSE3346:
	.section	.text._ZNSt11unique_lockISt5mutexED2Ev,"axG",@progbits,_ZNSt11unique_lockISt5mutexED5Ev,comdat
	.size	_ZNSt11unique_lockISt5mutexED2Ev, .-_ZNSt11unique_lockISt5mutexED2Ev
	.weak	_ZNSt11unique_lockISt5mutexED1Ev
	.set	_ZNSt11unique_lockISt5mutexED1Ev,_ZNSt11unique_lockISt5mutexED2Ev
	.section	.text._ZNSt11unique_lockISt5mutexE6unlockEv,"axG",@progbits,_ZNSt11unique_lockISt5mutexE6unlockEv,comdat
	.align 2
	.weak	_ZNSt11unique_lockISt5mutexE6unlockEv
	.type	_ZNSt11unique_lockISt5mutexE6unlockEv, @function
_ZNSt11unique_lockISt5mutexE6unlockEv:
.LFB3351:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L51
	movl	$1, %edi
	call	_ZSt20__throw_system_errori@PLT
.L51:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt5mutex6unlockEv
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3351:
	.size	_ZNSt11unique_lockISt5mutexE6unlockEv, .-_ZNSt11unique_lockISt5mutexE6unlockEv
	.section	.text._ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_,"axG",@progbits,_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_,comdat
	.weak	_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_
	.type	_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_, @function
_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_:
.LFB3352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17reference_wrapperISt5mutexEC1ERS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3352:
	.size	_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_, .-_ZSt3refISt5mutexESt17reference_wrapperIT_ERS2_
	.section	.text._ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_,"axG",@progbits,_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_,comdat
	.weak	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_
	.type	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_, @function
_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_:
.LFB3353:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17reference_wrapperISt18condition_variableEC1ERS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3353:
	.size	_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_, .-_ZSt3refISt18condition_variableESt17reference_wrapperIT_ERS2_
	.section	.text._ZSt3refIiESt17reference_wrapperIT_ERS1_,"axG",@progbits,_ZSt3refIiESt17reference_wrapperIT_ERS1_,comdat
	.weak	_ZSt3refIiESt17reference_wrapperIT_ERS1_
	.type	_ZSt3refIiESt17reference_wrapperIT_ERS1_, @function
_ZSt3refIiESt17reference_wrapperIT_ERS1_:
.LFB3354:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17reference_wrapperIiEC1ERi
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3354:
	.size	_ZSt3refIiESt17reference_wrapperIT_ERS1_, .-_ZSt3refIiESt17reference_wrapperIT_ERS1_
	.section	.text._ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_,"axG",@progbits,_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_,comdat
	.weak	_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_
	.type	_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_, @function
_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_:
.LFB3357:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r14
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3357:
	.size	_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_, .-_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_
	.section	.text._ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_,"axG",@progbits,_ZNSt6threadC5IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_
	.type	_ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_, @function
_ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_:
.LFB3358:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3358
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	pthread_create@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r14
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rsi
	leaq	-80(%rbp), %rax
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_
	leaq	-88(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_
.LEHE10:
	movq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE11:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	jmp	.L65
.L64:
	movq	%rax, %rbx
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L65:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3358:
	.section	.gcc_except_table
.LLSDA3358:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3358-.LLSDACSB3358
.LLSDACSB3358:
	.uleb128 .LEHB10-.LFB3358
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB3358
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L64-.LFB3358
	.uleb128 0
	.uleb128 .LEHB12-.LFB3358
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE3358:
	.section	.text._ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_,"axG",@progbits,_ZNSt6threadC5IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_,comdat
	.size	_ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_, .-_ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_
	.weak	_ZNSt6threadC1IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_
	.set	_ZNSt6threadC1IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_,_ZNSt6threadC2IRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEvEEOT_DpOT0_
	.section	.text._ZSt11__addressofISt5mutexEPT_RS1_,"axG",@progbits,_ZSt11__addressofISt5mutexEPT_RS1_,comdat
	.weak	_ZSt11__addressofISt5mutexEPT_RS1_
	.type	_ZSt11__addressofISt5mutexEPT_RS1_, @function
_ZSt11__addressofISt5mutexEPT_RS1_:
.LFB3492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3492:
	.size	_ZSt11__addressofISt5mutexEPT_RS1_, .-_ZSt11__addressofISt5mutexEPT_RS1_
	.section	.text._ZNSt11unique_lockISt5mutexE4lockEv,"axG",@progbits,_ZNSt11unique_lockISt5mutexE4lockEv,comdat
	.align 2
	.weak	_ZNSt11unique_lockISt5mutexE4lockEv
	.type	_ZNSt11unique_lockISt5mutexE4lockEv, @function
_ZNSt11unique_lockISt5mutexE4lockEv:
.LFB3493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	movl	$1, %edi
	call	_ZSt20__throw_system_errori@PLT
.L69:
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	je	.L70
	movl	$35, %edi
	call	_ZSt20__throw_system_errori@PLT
.L70:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt5mutex4lockEv
	movq	-8(%rbp), %rax
	movb	$1, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3493:
	.size	_ZNSt11unique_lockISt5mutexE4lockEv, .-_ZNSt11unique_lockISt5mutexE4lockEv
	.section	.text._ZNSt17reference_wrapperISt5mutexEC2ERS0_,"axG",@progbits,_ZNSt17reference_wrapperISt5mutexEC5ERS0_,comdat
	.align 2
	.weak	_ZNSt17reference_wrapperISt5mutexEC2ERS0_
	.type	_ZNSt17reference_wrapperISt5mutexEC2ERS0_, @function
_ZNSt17reference_wrapperISt5mutexEC2ERS0_:
.LFB3498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt5mutexEPT_RS1_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3498:
	.size	_ZNSt17reference_wrapperISt5mutexEC2ERS0_, .-_ZNSt17reference_wrapperISt5mutexEC2ERS0_
	.weak	_ZNSt17reference_wrapperISt5mutexEC1ERS0_
	.set	_ZNSt17reference_wrapperISt5mutexEC1ERS0_,_ZNSt17reference_wrapperISt5mutexEC2ERS0_
	.section	.text._ZNSt17reference_wrapperISt18condition_variableEC2ERS0_,"axG",@progbits,_ZNSt17reference_wrapperISt18condition_variableEC5ERS0_,comdat
	.align 2
	.weak	_ZNSt17reference_wrapperISt18condition_variableEC2ERS0_
	.type	_ZNSt17reference_wrapperISt18condition_variableEC2ERS0_, @function
_ZNSt17reference_wrapperISt18condition_variableEC2ERS0_:
.LFB3501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt18condition_variableEPT_RS1_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3501:
	.size	_ZNSt17reference_wrapperISt18condition_variableEC2ERS0_, .-_ZNSt17reference_wrapperISt18condition_variableEC2ERS0_
	.weak	_ZNSt17reference_wrapperISt18condition_variableEC1ERS0_
	.set	_ZNSt17reference_wrapperISt18condition_variableEC1ERS0_,_ZNSt17reference_wrapperISt18condition_variableEC2ERS0_
	.section	.text._ZNSt17reference_wrapperIiEC2ERi,"axG",@progbits,_ZNSt17reference_wrapperIiEC5ERi,comdat
	.align 2
	.weak	_ZNSt17reference_wrapperIiEC2ERi
	.type	_ZNSt17reference_wrapperIiEC2ERi, @function
_ZNSt17reference_wrapperIiEC2ERi:
.LFB3504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIiEPT_RS0_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3504:
	.size	_ZNSt17reference_wrapperIiEC2ERi, .-_ZNSt17reference_wrapperIiEC2ERi
	.weak	_ZNSt17reference_wrapperIiEC1ERi
	.set	_ZNSt17reference_wrapperIiEC1ERi,_ZNSt17reference_wrapperIiEC2ERi
	.section	.text._ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE,"axG",@progbits,_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE,comdat
	.weak	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	.type	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE, @function
_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE:
.LFB3506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3506:
	.size	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE, .-_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	.section	.text._ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3507:
	.size	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3508:
	.size	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3509:
	.size	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_,"axG",@progbits,_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC5EOS2_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_
	.type	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_, @function
_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_:
.LFB3526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3526:
	.size	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_, .-_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_
	.weak	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC1EOS2_
	.set	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC1EOS2_,_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_
	.section	.text._ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_,"axG",@progbits,_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC5EOS4_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_
	.type	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_, @function
_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_:
.LFB3529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2EOS2_
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3529:
	.size	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_, .-_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_
	.weak	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC1EOS4_
	.set	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC1EOS4_,_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_
	.section	.text._ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC5EOS4_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_
	.type	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_, @function
_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_:
.LFB3532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2EOS4_
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3532:
	.size	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_, .-_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_
	.weak	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC1EOS4_
	.set	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC1EOS4_,_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_
	.section	.text._ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC5EOS6_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_
	.type	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_, @function
_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_:
.LFB3535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2EOS4_
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3535:
	.size	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_, .-_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_
	.weak	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC1EOS6_
	.set	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC1EOS6_,_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_
	.section	.text._ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_,"axG",@progbits,_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC5EOSB_,comdat
	.align 2
	.weak	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	.type	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_, @function
_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_:
.LFB3538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3538:
	.size	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_, .-_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	.weak	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1EOSB_
	.set	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1EOSB_,_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	.section	.text._ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_,"axG",@progbits,_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC5IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_,comdat
	.align 2
	.weak	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_
	.type	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_, @function
_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_:
.LFB3541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r15
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r14
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3541:
	.size	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_, .-_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_
	.weak	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_
	.set	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_,_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC5IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_:
.LFB3544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r14
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3544:
	.size	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_,_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2IRS5_JS8_S9_S9_SA_EvEEOT_DpOT0_
	.section	.text._ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC5IS2_JS4_S4_S5_EvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_:
.LFB3547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3547:
	.size	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC1IS2_JS4_S4_S5_EvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC1IS2_JS4_S4_S5_EvEEOT_DpOT0_,_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2IS2_JS4_S4_S5_EvEEOT_DpOT0_
	.section	.text._ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC5IS2_JS2_S3_EvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_:
.LFB3550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3550:
	.size	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC1IS2_JS2_S3_EvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC1IS2_JS2_S3_EvEEOT_DpOT0_,_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEEC2IS2_JS2_S3_EvEEOT_DpOT0_
	.section	.text._ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC5IS2_JS3_EvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_:
.LFB3553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3553:
	.size	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC1IS2_JS3_EvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC1IS2_JS3_EvEEOT_DpOT0_,_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEEC2IS2_JS3_EvEEOT_DpOT0_
	.section	.text._ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_,"axG",@progbits,_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC5IS1_EEOT_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_
	.type	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_, @function
_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_:
.LFB3556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3556:
	.size	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_, .-_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_
	.weak	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC1IS1_EEOT_
	.set	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC1IS1_EEOT_,_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEC2IS1_EEOT_
	.section	.text._ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC5IS1_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_
	.type	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_, @function
_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_:
.LFB3559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3559:
	.size	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_, .-_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_
	.weak	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC1IS1_EEOT_
	.set	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC1IS1_EEOT_,_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EEC2IS1_EEOT_
	.section	.text._ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_,"axG",@progbits,_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_,comdat
	.weak	_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_
	.type	_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_, @function
_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_:
.LFB3510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r14
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r15
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r9
	movq	%r15, %r8
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1IJRS5_S8_S9_S9_SA_ELb1EEEDpOT_
	movq	-56(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3510:
	.size	_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_, .-_ZNSt6thread14__make_invokerIRFvRSt5mutexRSt18condition_variableS4_RiEJSt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNSE_IT0_E4typeEEEEEOSF_DpOSI_
	.section	.text._ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE,"axG",@progbits,_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE,comdat
	.weak	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	.type	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE, @function
_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE:
.LFB3561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3561:
	.size	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE, .-_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	.section	.text._ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_,"axG",@progbits,_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_,comdat
	.weak	_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_
	.type	_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_, @function
_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_:
.LFB3562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperIiEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperIiEcvRiEv
	movq	%rax, %r14
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	*%rbx
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3562:
	.size	_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_, .-_ZSt13__invoke_implIvPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEET_St14__invoke_otherOT0_DpOT1_
	.section	.text._ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_,"axG",@progbits,_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_,comdat
	.weak	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_
	.type	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_, @function
_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_:
.LFB3563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE
	movq	%rax, %r12
	movl	$48, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC1EOSF_
	movq	-24(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_
	movq	-24(%rbp), %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3563:
	.size	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_, .-_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEESt10unique_ptrINS_6_StateESt14default_deleteISH_EEOT_
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev:
.LFB3573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
.L103:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3573:
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	.set	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.section	.text._ZSt11__addressofISt18condition_variableEPT_RS1_,"axG",@progbits,_ZSt11__addressofISt18condition_variableEPT_RS1_,comdat
	.weak	_ZSt11__addressofISt18condition_variableEPT_RS1_
	.type	_ZSt11__addressofISt18condition_variableEPT_RS1_, @function
_ZSt11__addressofISt18condition_variableEPT_RS1_:
.LFB3634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3634:
	.size	_ZSt11__addressofISt18condition_variableEPT_RS1_, .-_ZSt11__addressofISt18condition_variableEPT_RS1_
	.section	.text._ZSt11__addressofIiEPT_RS0_,"axG",@progbits,_ZSt11__addressofIiEPT_RS0_,comdat
	.weak	_ZSt11__addressofIiEPT_RS0_
	.type	_ZSt11__addressofIiEPT_RS0_, @function
_ZSt11__addressofIiEPT_RS0_:
.LFB3635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3635:
	.size	_ZSt11__addressofIiEPT_RS0_, .-_ZSt11__addressofIiEPT_RS0_
	.section	.text._ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_,"axG",@progbits,_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_,comdat
	.weak	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_
	.type	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_, @function
_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_:
.LFB3636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3636:
	.size	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_, .-_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_
	.section	.text._ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_
	.type	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_, @function
_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_:
.LFB3637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3637:
	.size	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_, .-_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_tailERS4_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB3638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3638:
	.size	_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRSt11_Tuple_implILm4EJSt17reference_wrapperIiEEEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_:
.LFB3639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3639:
	.size	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_
	.section	.text._ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC5IS2_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	.type	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_, @function
_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_:
.LFB3641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3641:
	.size	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_, .-_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	.weak	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC1IS2_EEOT_
	.set	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC1IS2_EEOT_,_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	.section	.text._ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_
	.type	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_, @function
_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_:
.LFB3643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3643:
	.size	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_, .-_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_tailERS4_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB3644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3644:
	.size	_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_:
.LFB3645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3645:
	.size	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_
	.section	.text._ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC5IS2_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	.type	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_, @function
_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_:
.LFB3647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3647:
	.size	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_, .-_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	.weak	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC1IS2_EEOT_
	.set	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC1IS2_EEOT_,_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EEC2IS2_EEOT_
	.section	.text._ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_
	.type	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_, @function
_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_:
.LFB3649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3649:
	.size	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_, .-_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_tailERS6_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB3650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3650:
	.size	_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES3_S1_IiEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_
	.type	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_, @function
_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_:
.LFB3651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3651:
	.size	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_, .-_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_
	.section	.text._ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC5IS2_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_
	.type	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_, @function
_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_:
.LFB3653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3653:
	.size	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_, .-_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_
	.weak	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC1IS2_EEOT_
	.set	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC1IS2_EEOT_,_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EEC2IS2_EEOT_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC5EOSB_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	.type	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_, @function
_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_:
.LFB3656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_
	movq	%rax, %rdi
	call	_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEEC2EOS6_
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3656:
	.size	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_, .-_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	.weak	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1EOSB_
	.set	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1EOSB_,_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC2EOSB_
	.section	.text._ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_,"axG",@progbits,_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC5ERKS6_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_
	.type	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_, @function
_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_:
.LFB3659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3659:
	.size	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_, .-_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_
	.weak	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC1ERKS6_
	.set	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC1ERKS6_,_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2ERKS6_
	.section	.text._ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev,"axG",@progbits,_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev,comdat
	.align 2
	.weak	_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev
	.type	_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev, @function
_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev:
.LFB3661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperISt5mutexE3getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3661:
	.size	_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev, .-_ZNKSt17reference_wrapperISt5mutexEcvRS0_Ev
	.section	.text._ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev,"axG",@progbits,_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev,comdat
	.align 2
	.weak	_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev
	.type	_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev, @function
_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev:
.LFB3662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperISt18condition_variableE3getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3662:
	.size	_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev, .-_ZNKSt17reference_wrapperISt18condition_variableEcvRS0_Ev
	.section	.text._ZNKSt17reference_wrapperIiEcvRiEv,"axG",@progbits,_ZNKSt17reference_wrapperIiEcvRiEv,comdat
	.align 2
	.weak	_ZNKSt17reference_wrapperIiEcvRiEv
	.type	_ZNKSt17reference_wrapperIiEcvRiEv, @function
_ZNKSt17reference_wrapperIiEcvRiEv:
.LFB3663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17reference_wrapperIiE3getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3663:
	.size	_ZNKSt17reference_wrapperIiEcvRiEv, .-_ZNKSt17reference_wrapperIiEcvRiEv
	.section	.text._ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE,"axG",@progbits,_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE,comdat
	.weak	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE
	.type	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE, @function
_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE:
.LFB3664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3664:
	.size	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE, .-_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE
	.section	.text._ZNSt6thread6_StateC2Ev,"axG",@progbits,_ZNSt6thread6_StateC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread6_StateC2Ev
	.type	_ZNSt6thread6_StateC2Ev, @function
_ZNSt6thread6_StateC2Ev:
.LFB3667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVNSt6thread6_StateE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3667:
	.size	_ZNSt6thread6_StateC2Ev, .-_ZNSt6thread6_StateC2Ev
	.weak	_ZNSt6thread6_StateC1Ev
	.set	_ZNSt6thread6_StateC1Ev,_ZNSt6thread6_StateC2Ev
	.section	.text._ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_,"axG",@progbits,_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC5EOSE_,comdat
	.align 2
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_
	.type	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_, @function
_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_:
.LFB3670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEC1EOSB_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3670:
	.size	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_, .-_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC1EOSE_
	.set	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC1EOSE_,_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC2EOSE_
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC5EOSF_,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_:
.LFB3672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread6_StateC2Ev
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEOT_RNSt16remove_referenceISG_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEC1EOSE_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3672:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC1EOSF_
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC1EOSF_,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEC2EOSF_
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_:
.LFB3675:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3675
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3675:
	.section	.gcc_except_table
.LLSDA3675:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3675-.LLSDACSB3675
.LLSDACSB3675:
.LLSDACSE3675:
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_
	.set	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv:
.LFB3677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3677:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv:
.LFB3678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3678:
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	.section	.text._ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_,"axG",@progbits,_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
	.type	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_, @function
_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_:
.LFB3679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L151
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L151:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3679:
	.size	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_, .-_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
	.section	.text._ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_,"axG",@progbits,_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_,comdat
	.weak	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_
	.type	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_, @function
_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_:
.LFB3728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3728:
	.size	_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_, .-_ZNSt10_Head_baseILm4ESt17reference_wrapperIiELb0EE7_M_headERS2_
	.section	.text._ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_:
.LFB3729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3729:
	.size	_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm3ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_
	.section	.text._ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_:
.LFB3730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3730:
	.size	_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm2ESt17reference_wrapperISt18condition_variableELb0EE7_M_headERS3_
	.section	.text._ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_:
.LFB3731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3731:
	.size	_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm1ESt17reference_wrapperISt5mutexELb0EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_
	.type	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_, @function
_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_:
.LFB3732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3732:
	.size	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_, .-_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_tailERSB_
	.section	.text._ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_,"axG",@progbits,_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_,comdat
	.weak	_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_
	.type	_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_, @function
_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_:
.LFB3733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3733:
	.size	_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_, .-_ZSt4moveIRSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES1_ISt18condition_variableES5_S1_IiEEEEONSt16remove_referenceIT_E4typeEOSA_
	.section	.text._ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_
	.type	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_, @function
_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_:
.LFB3734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3734:
	.size	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_, .-_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_
	.section	.text._ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC5IS6_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_
	.type	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_, @function
_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_:
.LFB3736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3736:
	.size	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_, .-_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_
	.weak	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC1IS6_EEOT_
	.set	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC1IS6_EEOT_,_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EEC2IS6_EEOT_
	.section	.text._ZNKSt17reference_wrapperISt5mutexE3getEv,"axG",@progbits,_ZNKSt17reference_wrapperISt5mutexE3getEv,comdat
	.align 2
	.weak	_ZNKSt17reference_wrapperISt5mutexE3getEv
	.type	_ZNKSt17reference_wrapperISt5mutexE3getEv, @function
_ZNKSt17reference_wrapperISt5mutexE3getEv:
.LFB3738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3738:
	.size	_ZNKSt17reference_wrapperISt5mutexE3getEv, .-_ZNKSt17reference_wrapperISt5mutexE3getEv
	.section	.text._ZNKSt17reference_wrapperISt18condition_variableE3getEv,"axG",@progbits,_ZNKSt17reference_wrapperISt18condition_variableE3getEv,comdat
	.align 2
	.weak	_ZNKSt17reference_wrapperISt18condition_variableE3getEv
	.type	_ZNKSt17reference_wrapperISt18condition_variableE3getEv, @function
_ZNKSt17reference_wrapperISt18condition_variableE3getEv:
.LFB3739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3739:
	.size	_ZNKSt17reference_wrapperISt18condition_variableE3getEv, .-_ZNKSt17reference_wrapperISt18condition_variableE3getEv
	.section	.text._ZNKSt17reference_wrapperIiE3getEv,"axG",@progbits,_ZNKSt17reference_wrapperIiE3getEv,comdat
	.align 2
	.weak	_ZNKSt17reference_wrapperIiE3getEv
	.type	_ZNKSt17reference_wrapperIiE3getEv, @function
_ZNKSt17reference_wrapperIiE3getEv:
.LFB3740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3740:
	.size	_ZNKSt17reference_wrapperIiE3getEv, .-_ZNKSt17reference_wrapperIiE3getEv
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC5EPS1_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_:
.LFB3742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3742:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_
	.set	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.section	.text._ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3744:
	.size	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv:
.LFB3745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3745:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	.section	.text._ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_,"axG",@progbits,_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_,comdat
	.weak	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_
	.type	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_, @function
_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_:
.LFB3783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3783:
	.size	_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_, .-_ZNSt10_Head_baseILm0EPFvRSt5mutexRSt18condition_variableS3_RiELb0EE7_M_headERS7_
	.section	.text._ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv,"axG",@progbits,_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC5IS2_S4_Lb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.type	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, @function
_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv:
.LFB3785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3785:
	.size	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, .-_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.weak	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	.set	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv,_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.section	.text._ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB3787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3787:
	.size	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3788:
	.size	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev:
.LFB3850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3850:
	.size	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev, .-_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_:
.LFB3852:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3852:
	.size	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3853:
	.size	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev:
.LFB3895:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3895:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev:
.LFB3898:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3898:
	.size	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev, .-_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_:
.LFB3900:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3900:
	.size	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_:
.LFB3901:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3901:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev:
.LFB3917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3917:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_:
.LFB3919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3919:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_, .-_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE
	.section	.data.rel.ro.local._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE,"awG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE,comdat
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev:
.LFB3924:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread6_StateD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3924:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED1Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev:
.LFB3926:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED1Ev
	movq	-8(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3926:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEED0Ev
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE
	.section	.data.rel.ro._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE,"awG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE,comdat
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE
	.quad	_ZTINSt6thread6_StateE
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE,comdat
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE, 138
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE:
	.string	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEEE"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3943:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L203
	cmpl	$65535, -8(%rbp)
	jne	.L203
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L203:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3943:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv,comdat
	.align 2
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv:
.LFB3951:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3951:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS6_RiESt17reference_wrapperIS3_ESA_IS5_ESC_SA_IiEEEEEE6_M_runEv
	.section	.text._ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv,"axG",@progbits,_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv,comdat
	.align 2
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv
	.type	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv, @function
_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv:
.LFB3954:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3954:
	.size	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv, .-_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEEclEv
	.section	.text._ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE,"axG",@progbits,_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE,comdat
	.align 2
	.weak	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE
	.type	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE, @function
_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE:
.LFB3957:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	movq	%rax, %rdi
	call	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	movq	%rax, %r14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	movq	%rax, %rdi
	call	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	movq	%rax, %r13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	movq	%rax, %rdi
	call	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__invokeIPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3957:
	.size	_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE, .-_ZNSt6thread8_InvokerISt5tupleIJPFvRSt5mutexRSt18condition_variableS5_RiESt17reference_wrapperIS2_ES9_IS4_ESB_S9_IiEEEE9_M_invokeIJLm0ELm1ELm2ELm3ELm4EEEEDTcl8__invokespcl10_S_declvalIXT_EEEEESt12_Index_tupleIJXspT_EEE
	.section	.text._ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_,"axG",@progbits,_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_,comdat
	.weak	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	.type	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_, @function
_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_:
.LFB3958:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3958:
	.size	_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_, .-_ZSt4moveIRSt5tupleIJPFvRSt5mutexRSt18condition_variableS4_RiESt17reference_wrapperIS1_ES8_IS3_ESA_S8_IiEEEEONSt16remove_referenceIT_E4typeEOSF_
	.section	.text._ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,"axG",@progbits,_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,comdat
	.weak	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.type	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, @function
_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_:
.LFB3959:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	movq	%rax, %rdi
	call	_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3959:
	.size	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, .-_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.section	.text._ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,"axG",@progbits,_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,comdat
	.weak	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.type	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, @function
_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_:
.LFB3960:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	movq	%rax, %rdi
	call	_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3960:
	.size	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, .-_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.section	.text._ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,"axG",@progbits,_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,comdat
	.weak	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.type	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, @function
_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_:
.LFB3961:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	movq	%rax, %rdi
	call	_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3961:
	.size	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, .-_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.section	.text._ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,"axG",@progbits,_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,comdat
	.weak	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.type	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, @function
_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_:
.LFB3962:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	movq	%rax, %rdi
	call	_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3962:
	.size	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, .-_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.section	.text._ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,"axG",@progbits,_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_,comdat
	.weak	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.type	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, @function
_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_:
.LFB3963:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	movq	%rax, %rdi
	call	_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3963:
	.size	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_, .-_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOSF_
	.section	.text._ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,"axG",@progbits,_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,comdat
	.weak	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.type	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, @function
_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_:
.LFB3964:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3964:
	.size	_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, .-_ZSt3getILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.section	.text._ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE, @function
_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB3965:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3965:
	.size	_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardIOPFvRSt5mutexRSt18condition_variableS3_RiEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.text._ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,"axG",@progbits,_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,comdat
	.weak	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.type	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, @function
_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_:
.LFB3966:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3966:
	.size	_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, .-_ZSt3getILm1EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.section	.text._ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB3967:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3967:
	.size	_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIOSt17reference_wrapperISt5mutexEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,"axG",@progbits,_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,comdat
	.weak	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.type	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, @function
_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_:
.LFB3968:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3968:
	.size	_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, .-_ZSt3getILm2EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.section	.text._ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB3969:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3969:
	.size	_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIOSt17reference_wrapperISt18condition_variableEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,"axG",@progbits,_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,comdat
	.weak	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.type	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, @function
_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_:
.LFB3970:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3970:
	.size	_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, .-_ZSt3getILm3EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.section	.text._ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,"axG",@progbits,_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_,comdat
	.weak	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.type	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, @function
_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_:
.LFB3971:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3971:
	.size	_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_, .-_ZSt3getILm4EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSF_
	.section	.text._ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3972:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3972:
	.size	_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIOSt17reference_wrapperIiEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE
	.type	_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE, @function
_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE:
.LFB3973:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPFvRSt5mutexRSt18condition_variableS3_RiESt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEE7_M_headERSB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3973:
	.size	_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE, .-_ZSt12__get_helperILm0EPFvRSt5mutexRSt18condition_variableS3_RiEJSt17reference_wrapperIS0_ES7_IS2_ES9_S7_IiEEERT0_RSt11_Tuple_implIXT_EJSB_DpT1_EE
	.section	.text._ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE, @function
_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE:
.LFB3974:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt17reference_wrapperISt5mutexES0_ISt18condition_variableES4_S0_IiEEE7_M_headERS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3974:
	.size	_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE, .-_ZSt12__get_helperILm1ESt17reference_wrapperISt5mutexEJS0_ISt18condition_variableES4_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS6_DpT1_EE
	.section	.text._ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3975:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJSt17reference_wrapperISt18condition_variableES2_S0_IiEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3975:
	.size	_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm2ESt17reference_wrapperISt18condition_variableEJS2_S0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3976:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm3EJSt17reference_wrapperISt18condition_variableES0_IiEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3976:
	.size	_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm3ESt17reference_wrapperISt18condition_variableEJS0_IiEEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB3977:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm4EJSt17reference_wrapperIiEEE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3977:
	.size	_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm4ESt17reference_wrapperIiEJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.text
	.type	_GLOBAL__sub_I__Z8producerRSt5mutexRSt18condition_variableS2_Ri, @function
_GLOBAL__sub_I__Z8producerRSt5mutexRSt18condition_variableS2_Ri:
.LFB3978:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3978:
	.size	_GLOBAL__sub_I__Z8producerRSt5mutexRSt18condition_variableS2_Ri, .-_GLOBAL__sub_I__Z8producerRSt5mutexRSt18condition_variableS2_Ri
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8producerRSt5mutexRSt18condition_variableS2_Ri
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
