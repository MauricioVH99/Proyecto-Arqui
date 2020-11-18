	.arch armv6
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
	.file	"BaseC.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Ingrese el numero decimal, N=\000"
	.align	2
.LC1:
	.ascii	"%i\000"
	.align	2
.LC2:
	.ascii	"Ingrese la nueva base, b=\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, .L3
	bl	printf
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, .L3+4
	bl	__isoc99_scanf
	ldr	r0, .L3+8
	bl	printf
	sub	r3, fp, #12
	mov	r1, r3
	ldr	r0, .L3+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mov	r1, r2
	mov	r0, r3
	bl	converto
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.rodata
	.align	2
.LC3:
	.ascii	"(%i)_10=(%s)_%i \012\000"
	.text
	.align	2
	.global	converto
	.syntax unified
	.arm
	.fpu vfp
	.type	converto, %function
converto:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	vpush.64	{d8}
	add	fp, sp, #12
	sub	sp, sp, #32
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-40]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d0, d7
	bl	log
	vmov.f64	d8, d0
	ldr	r3, [fp, #-44]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d0, d7
	bl	log
	vmov.f64	d6, d0
	vdiv.f64	d7, d8, d6
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L6
.L40:
	ldr	r3, [fp, #-44]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
	vmov	s13, r3	@ int
	vcvt.f64.s32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	pow
	vmov.f64	d7, d0
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-40]
	bl	__aeabi_idiv
	mov	r3, r0
	ldr	r1, [fp, #-44]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #30
	ldrls	pc, [pc, r3, asl #2]
	b	.L7
.L9:
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L33
	.word	.L32
	.word	.L31
	.word	.L30
	.word	.L29
	.word	.L28
	.word	.L27
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L21
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L17
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L10
	.word	.L8
.L39:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #48
	strb	r2, [r3]
	b	.L7
.L38:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #49
	strb	r2, [r3]
	b	.L7
.L37:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #50
	strb	r2, [r3]
	b	.L7
.L36:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #51
	strb	r2, [r3]
	b	.L7
.L35:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #52
	strb	r2, [r3]
	b	.L7
.L34:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #53
	strb	r2, [r3]
	b	.L7
.L33:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #54
	strb	r2, [r3]
	b	.L7
.L32:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #55
	strb	r2, [r3]
	b	.L7
.L31:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #56
	strb	r2, [r3]
	b	.L7
.L30:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #57
	strb	r2, [r3]
	b	.L7
.L29:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #65
	strb	r2, [r3]
	b	.L7
.L28:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #66
	strb	r2, [r3]
	b	.L7
.L27:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #67
	strb	r2, [r3]
	b	.L7
.L26:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #68
	strb	r2, [r3]
	b	.L7
.L25:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #69
	strb	r2, [r3]
	b	.L7
.L24:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #70
	strb	r2, [r3]
	b	.L7
.L23:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #71
	strb	r2, [r3]
	b	.L7
.L22:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #72
	strb	r2, [r3]
	b	.L7
.L21:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #73
	strb	r2, [r3]
	b	.L7
.L20:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #74
	strb	r2, [r3]
	b	.L7
.L19:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #75
	strb	r2, [r3]
	b	.L7
.L18:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #76
	strb	r2, [r3]
	b	.L7
.L17:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #77
	strb	r2, [r3]
	b	.L7
.L16:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #78
	strb	r2, [r3]
	b	.L7
.L15:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #79
	strb	r2, [r3]
	b	.L7
.L14:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #80
	strb	r2, [r3]
	b	.L7
.L13:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #81
	strb	r2, [r3]
	b	.L7
.L12:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #82
	strb	r2, [r3]
	b	.L7
.L11:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #83
	strb	r2, [r3]
	b	.L7
.L10:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #84
	strb	r2, [r3]
	b	.L7
.L8:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #85
	strb	r2, [r3]
	nop
.L7:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L6:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	ble	.L40
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-40]
	ldr	r0, .L42
	bl	printf
	ldr	r0, [fp, #-24]
	bl	free
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	vldm	sp!, {d8}
	pop	{fp, pc}
.L43:
	.align	2
.L42:
	.word	.LC3
	.size	converto, .-converto
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
