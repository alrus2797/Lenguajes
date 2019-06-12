	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"in.cpp"
	.text
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.text
	.align	1
	.global	_Z5inputii
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	_Z5inputii, %function
_Z5inputii:
	.fnstart
.LFB1487:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
.L3:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bgt	.L2
	ldr	r3, [r7, #16]
	ldr	r2, [r7]
	mul	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z5inputii, .-_Z5inputii
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	.fnstart
.LFB1488:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #3
	movs	r0, #5
	bl	_Z5inputii(PLT)
	movs	r3, #0
	mov	r0, r3
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB1969:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L10
.LPIC2:
	add	r4, pc
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L9
	ldr	r3, [r7]
	movw	r2, #65535
	cmp	r3, r2
	bne	.L9
	ldr	r3, .L10+4
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	_ZNSt8ios_base4InitC1Ev(PLT)
	ldr	r3, .L10+8
.LPIC1:
	add	r3, pc
	mov	r2, r3
	ldr	r3, .L10+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L10+16
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	__aeabi_atexit(PLT)
.L9:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L11:
	.align	2
.L10:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	_ZStL8__ioinit-(.LPIC0+4)
	.word	__dso_handle-(.LPIC1+4)
	.word	_ZNSt8ios_base4InitD1Ev(GOT)
	.word	_ZStL8__ioinit-(.LPIC3+4)
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	_GLOBAL__sub_I__Z5inputii, %function
_GLOBAL__sub_I__Z5inputii:
	.fnstart
.LFB1970:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movw	r1, #65535
	movs	r0, #1
	bl	_Z41__static_initialization_and_destruction_0ii(PLT)
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z5inputii, .-_GLOBAL__sub_I__Z5inputii
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z5inputii
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu/Linaro 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",%progbits
