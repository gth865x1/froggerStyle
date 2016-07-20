	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	update
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L106
	ldr	r3, [r4, #0]
	ldr	r1, [r4, #4]
	mvn	r5, #1
	mla	r5, r3, r5, r1
	ldr	r2, [r4, #20]
	mvn	r1, #2
	mla	r2, r1, r3, r2
	cmp	r5, #0
	str	r5, [r4, #4]
	ldr	ip, [r4, #12]
	ldrlt	r5, [r4, #28]
	rsb	ip, r3, ip
	rsblt	r5, r5, #239
	strlt	r5, [r4, #4]
	cmp	ip, #0
	str	ip, [r4, #12]
	ldrlt	ip, [r4, #28]
	rsblt	ip, ip, #239
	strlt	ip, [r4, #12]
	cmp	r2, #0
	str	r2, [r4, #20]
	ldrlt	r2, [r4, #28]
	ldr	r8, [r4, #8]
	rsblt	r2, r2, #239
	strlt	r2, [r4, #20]
	mov	r0, r3, asl #1
	ldr	r2, [r4, #28]
	add	r6, r0, r3
	add	r0, r0, r8
	str	r0, [r4, #8]
	ldr	r7, [r4, #16]
	add	r0, r0, r2
	cmp	r0, #239
	ldr	r1, [r4, #24]
	add	r3, r3, r7
	ldrgt	r0, .L106
	str	r3, [r4, #16]
	movgt	ip, #0
	add	r3, r3, r2
	add	r1, r6, r1
	strgt	ip, [r0, #8]
	cmp	r3, #239
	add	r2, r1, r2
	movgt	r3, #0
	strgt	r3, [r4, #16]
	cmp	r2, #239
	movgt	r3, #0
	str	r1, [r4, #24]
	strgt	r3, [r4, #24]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	addeq	r1, r4, #36
	ldmeqda	r1, {r1, r3}
	addeq	r3, r3, r1
	streq	r3, [r4, #32]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	addeq	r2, r4, #32
	ldmeqia	r2, {r2, r3}
	subeq	r3, r2, r3
	streq	r3, [r4, #32]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #64
	addeq	r8, r4, #40
	ldmeqia	r8, {r3, r8}
	subeq	r3, r3, r8
	streq	r3, [r4, #40]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #128
	addeq	r1, r4, #44
	ldmeqda	r1, {r1, r3}
	addeq	r3, r3, r1
	streq	r3, [r4, #40]
	ldr	r3, [r4, #48]
	ldr	r1, [r4, #40]
	rsb	r2, r3, #160
	cmp	r2, r1
	ldrlt	r1, .L106
	strlt	r2, [r1, #40]
	ldr	r2, [r4, #40]
	cmp	r2, #0
	ldrlt	r2, .L106
	movlt	r1, #0
	strlt	r1, [r2, #40]
	ldr	r2, [r4, #32]
	cmp	r2, #0
	ldrlt	r2, .L106
	movlt	r1, #0
	strlt	r1, [r2, #32]
	ldr	r2, [r4, #52]
	ldr	r1, [r4, #32]
	rsb	r2, r2, #240
	cmp	r2, r1
	ldrlt	r1, .L106
	strlt	r2, [r1, #32]
	ldr	r2, [r4, #40]
	add	r3, r3, r2
	cmp	r3, #24
	bgt	.L16
	ldr	r3, .L106
	ldr	r3, [r3, #56]
	cmp	r3, #0
	ldrgt	r6, .L106+4
	movgt	r7, #0
	ble	.L16
.L19:
	mov	r5, #0
.L18:
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #239
	bne	.L18
	add	r7, r7, #1
	cmp	r7, #159
	bne	.L19
	mov	r3, #1020
	mov	r0, #55
	mov	r1, #40
	ldr	r2, .L106+8
	add	r3, r3, #3
	ldr	r5, .L106+12
	mov	lr, pc
	bx	r5
	mov	r3, #1020
	mov	r0, #65
	mov	r1, #40
	ldr	r2, .L106+16
	add	r3, r3, #3
	mov	lr, pc
	bx	r5
.L16:
	add	r0, r4, #60
	ldmia	r0, {r0, r3}	@ phole ldm
	ldr	ip, [r4, #40]
	add	r3, r0, r3
	cmp	r3, ip
	ldr	r3, .L106
	blt	.L21
	ldr	r2, [r3, #4]
	ldr	r5, [r3, #28]
	ldr	r1, [r3, #32]
	add	r5, r2, r5
	cmp	r5, r1
	blt	.L21
	ldr	r5, [r3, #48]
	add	ip, ip, r5
	cmp	r0, ip
	bge	.L21
	ldr	r0, [r3, #52]
	add	r1, r1, r0
	cmp	r2, r1
	ble	.L85
.L21:
	ldr	r0, [r4, #68]
	ldr	r3, [r4, #64]
	ldr	ip, [r4, #40]
	add	r3, r0, r3
	cmp	r3, ip
	ldr	r3, .L106
	blt	.L27
	ldr	r2, [r3, #8]
	ldr	r5, [r3, #28]
	ldr	r1, [r3, #32]
	add	r5, r2, r5
	cmp	r5, r1
	blt	.L27
	ldr	r5, [r3, #48]
	add	ip, ip, r5
	cmp	r0, ip
	bge	.L27
	ldr	r0, [r3, #52]
	add	r1, r1, r0
	cmp	r2, r1
	ble	.L86
.L27:
	ldr	r0, [r4, #72]
	ldr	r3, [r4, #64]
	ldr	ip, [r4, #40]
	add	r3, r0, r3
	cmp	r3, ip
	ldr	r3, .L106
	blt	.L33
	ldr	r2, [r3, #12]
	ldr	r5, [r3, #28]
	ldr	r1, [r3, #32]
	add	r5, r2, r5
	cmp	r5, r1
	blt	.L33
	ldr	r5, [r3, #48]
	add	ip, ip, r5
	cmp	r0, ip
	bge	.L33
	ldr	r0, [r3, #52]
	add	r1, r1, r0
	cmp	r2, r1
	ble	.L87
.L33:
	ldr	r0, [r4, #76]
	ldr	r3, [r4, #64]
	ldr	ip, [r4, #40]
	add	r3, r0, r3
	cmp	r3, ip
	ldr	r3, .L106
	blt	.L39
	ldr	r2, [r3, #16]
	ldr	r5, [r3, #28]
	ldr	r1, [r3, #32]
	add	r5, r2, r5
	cmp	r5, r1
	blt	.L39
	ldr	r5, [r3, #48]
	add	ip, ip, r5
	cmp	r0, ip
	bge	.L39
	ldr	r0, [r3, #52]
	add	r1, r1, r0
	cmp	r2, r1
	ble	.L88
.L39:
	ldr	r0, [r4, #80]
	ldr	r3, [r4, #64]
	ldr	ip, [r4, #40]
	add	r3, r0, r3
	cmp	r3, ip
	ldr	r3, .L106
	blt	.L45
	ldr	r2, [r3, #20]
	ldr	r5, [r3, #28]
	ldr	r1, [r3, #32]
	add	r5, r2, r5
	cmp	r5, r1
	blt	.L45
	ldr	r5, [r3, #48]
	add	ip, ip, r5
	cmp	r0, ip
	bge	.L45
	ldr	r0, [r3, #52]
	add	r1, r1, r0
	cmp	r2, r1
	ble	.L89
.L45:
	ldr	r0, [r4, #84]
	ldr	r3, [r4, #64]
	ldr	ip, [r4, #40]
	add	r3, r0, r3
	cmp	r3, ip
	ldr	r3, .L106
	blt	.L1
	add	r2, r3, #24
	ldmia	r2, {r2, r4}	@ phole ldm
	ldr	r1, [r3, #32]
	add	r4, r2, r4
	cmp	r4, r1
	blt	.L1
	ldr	r4, [r3, #48]
	add	ip, ip, r4
	cmp	r0, ip
	bge	.L1
	ldr	r0, [r3, #52]
	add	r1, r1, r0
	cmp	r2, r1
	bgt	.L1
	ldr	r5, [r3, #56]
	sub	r5, r5, #1
	cmp	r5, #0
	str	r5, [r3, #56]
	ldreq	r6, .L106+4
	bne	.L90
.L55:
	mov	r4, #0
.L54:
	mov	r1, r4
	mov	r0, r5
	mov	r2, #0
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #239
	bne	.L54
	add	r5, r5, #1
	cmp	r5, #159
	bne	.L55
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L106+20
	mov	r3, #31
	ldr	ip, .L106+12
	mov	lr, pc
	bx	ip
.L1:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L85:
	ldr	r7, [r3, #56]
	sub	r7, r7, #1
	cmp	r7, #0
	str	r7, [r3, #56]
	ldreq	r6, .L106+4
	beq	.L25
	mov	r2, #140
	str	r2, [r3, #40]
	mov	r2, #80
	str	r2, [r3, #32]
	b	.L21
.L101:
	add	r7, r7, #1
	cmp	r7, #159
	beq	.L91
.L25:
	mov	r5, #0
.L24:
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #239
	bne	.L24
	b	.L101
.L90:
	mov	r2, #140
	str	r2, [r3, #40]
	mov	r2, #80
	str	r2, [r3, #32]
	b	.L1
.L91:
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L106+20
	mov	r3, #31
	ldr	ip, .L106+12
	mov	lr, pc
	bx	ip
	b	.L21
.L89:
	ldr	r7, [r3, #56]
	sub	r7, r7, #1
	cmp	r7, #0
	str	r7, [r3, #56]
	ldreq	r6, .L106+4
	beq	.L49
	mov	r2, #140
	str	r2, [r3, #40]
	mov	r2, #80
	str	r2, [r3, #32]
	b	.L45
.L102:
	add	r7, r7, #1
	cmp	r7, #159
	beq	.L93
.L49:
	mov	r5, #0
.L48:
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #239
	bne	.L48
	b	.L102
.L88:
	ldr	r7, [r3, #56]
	sub	r7, r7, #1
	cmp	r7, #0
	str	r7, [r3, #56]
	ldreq	r6, .L106+4
	beq	.L43
	mov	r2, #140
	str	r2, [r3, #40]
	mov	r2, #80
	str	r2, [r3, #32]
	b	.L39
.L103:
	add	r7, r7, #1
	cmp	r7, #159
	beq	.L95
.L43:
	mov	r5, #0
.L42:
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #239
	bne	.L42
	b	.L103
.L93:
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L106+20
	mov	r3, #31
	ldr	ip, .L106+12
	mov	lr, pc
	bx	ip
	b	.L45
.L95:
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L106+20
	mov	r3, #31
	ldr	ip, .L106+12
	mov	lr, pc
	bx	ip
	b	.L39
.L87:
	ldr	r7, [r3, #56]
	sub	r7, r7, #1
	cmp	r7, #0
	str	r7, [r3, #56]
	ldreq	r6, .L106+4
	beq	.L37
	mov	r2, #140
	str	r2, [r3, #40]
	mov	r2, #80
	str	r2, [r3, #32]
	b	.L33
.L104:
	add	r7, r7, #1
	cmp	r7, #159
	beq	.L97
.L37:
	mov	r5, #0
.L36:
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #239
	bne	.L36
	b	.L104
.L86:
	ldr	r7, [r3, #56]
	sub	r7, r7, #1
	cmp	r7, #0
	str	r7, [r3, #56]
	ldreq	r6, .L106+4
	beq	.L31
	mov	r2, #140
	str	r2, [r3, #40]
	mov	r2, #80
	str	r2, [r3, #32]
	b	.L27
.L105:
	add	r7, r7, #1
	cmp	r7, #159
	beq	.L99
.L31:
	mov	r5, #0
.L30:
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r6
	cmp	r5, #239
	bne	.L30
	b	.L105
.L97:
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L106+20
	mov	r3, #31
	ldr	ip, .L106+12
	mov	lr, pc
	bx	ip
	b	.L33
.L99:
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L106+20
	mov	r3, #31
	ldr	ip, .L106+12
	mov	lr, pc
	bx	ip
	b	.L27
.L107:
	.align	2
.L106:
	.word	.LANCHOR0
	.word	setPixel
	.word	.LC0
	.word	drawString
	.word	.LC1
	.word	.LC2
	.size	update, .-update
	.align	2
	.global	draw
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r3, #32512
	sub	sp, sp, #12
	add	r8, r3, #255
	ldr	r5, .L109
	mov	r0, #20
	mov	r1, #0
	mov	r2, #5
	mov	r3, #240
	str	r8, [sp, #0]
	mov	r7, #1020
	mov	lr, pc
	bx	r5
	add	r7, r7, #3
	mov	r0, #130
	mov	r1, #0
	mov	r2, #5
	mov	r3, #240
	str	r8, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	r6, #324
	mov	r0, #73
	mov	r1, #0
	mov	r2, #4
	mov	r3, #240
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r5
	add	r6, r6, #1
	mov	r0, #79
	mov	r1, #0
	mov	r2, #4
	mov	r3, #240
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	r0, #136
	mov	r1, #0
	mov	r2, #23
	mov	r3, #240
	str	r6, [sp, #0]
	ldr	r4, .L109+4
	mov	lr, pc
	bx	r5
	ldr	sl, .L109+8
	ldr	r9, .L109+12
	mov	r0, #0
	mov	r1, r0
	mov	r2, #20
	mov	r3, #240
	str	r6, [sp, #0]
	mov	r6, #0
	mov	lr, pc
	bx	r5
	ldr	r0, [sl, #0]
	ldr	r1, [r9, #0]
	add	r2, r4, #48
	ldmia	r2, {r2, r3}	@ phole ldm
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #40]
	ldr	r1, [r4, #32]
	add	r2, r4, #48
	ldmia	r2, {r2, r3}	@ phole ldm
	str	r8, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	ip, .L109+16
	ldr	lr, [r4, #32]
	ldr	r1, [ip, #0]
	ldr	ip, [r4, #40]
	ldr	r0, [r4, #60]
	str	ip, [sl, #0]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	lr, [r9, #0]
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	lr, .L109+20
	ldr	r8, .L109+24
	ldr	r1, [lr, #0]
	ldr	r0, [r4, #68]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	ldr	sl, .L109+28
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r9, .L109+32
	ldr	r0, [r4, #72]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	ldr	r1, [r8, #0]
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	fp, .L109+36
	ldr	r0, [r4, #76]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	ldr	r1, [sl, #0]
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #80]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	ldr	r1, [r9, #0]
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #84]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	ldr	r1, [fp, #0]
	str	r6, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	ip, #992
	ldr	r0, [r4, #60]
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	ip, #17408
	add	ip, ip, #236
	ldr	r0, [r4, #68]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	ip, #31744
	add	ip, ip, #31
	ldr	r0, [r4, #72]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	lr, #32512
	add	ip, lr, #224
	ldr	r0, [r4, #76]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #80]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r5
	mov	ip, #31
	ldr	r0, [r4, #84]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #64]
	ldr	r3, [r4, #28]
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r5
	ldr	ip, [r4, #4]
	ldr	r5, .L109+16
	add	r0, r4, #8
	ldmia	r0, {r0, r1, r2, r3}	@ phole ldm
	str	ip, [r5, #0]
	ldr	r4, [r4, #24]
	ldr	ip, .L109+20
	str	r1, [r8, #0]
	str	r0, [ip, #0]
	str	r2, [sl, #0]
	str	r3, [r9, #0]
	str	r4, [fp, #0]
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	drawBox
	.word	.LANCHOR0
	.word	oldplayerRow
	.word	oldplayerCol
	.word	oldcar1col
	.word	oldcar2col
	.word	oldcar3col
	.word	oldcar4col
	.word	oldcar5col
	.word	oldcar6col
	.size	draw, .-draw
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, #67108864
	ldr	r2, [r5, #304]
	mov	r3, #1024
	add	r3, r3, #3
	tst	r2, #8
	strh	r3, [r5, #0]	@ movhi
	beq	.L112
	ldr	r4, .L121
.L113:
	mov	r0, #60
	mov	r1, #10
	ldr	r2, .L121+4
	mov	r3, #992
	mov	lr, pc
	bx	r4
	mov	r0, #69
	mov	r1, #10
	ldr	r2, .L121+8
	mov	r3, #992
	mov	lr, pc
	bx	r4
	mov	r0, #78
	mov	r1, #10
	ldr	r2, .L121+12
	mov	r3, #992
	mov	lr, pc
	bx	r4
	mov	r3, #32512
	add	r3, r3, #255
	mov	r0, #100
	mov	r1, #10
	ldr	r2, .L121+16
	mov	lr, pc
	bx	r4
	ldr	r3, [r5, #304]
	tst	r3, #8
	bne	.L113
.L112:
	ldr	r6, .L121+20
	mov	r5, #0
.L116:
	mov	r4, #0
.L114:
	mov	r1, r4
	mov	r0, r5
	mov	r2, #0
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, #239
	bne	.L114
	add	r5, r5, #1
	cmp	r5, #159
	bne	.L116
	ldr	r4, .L121+24
.L115:
	bl	update
	mov	lr, pc
	bx	r4
	bl	draw
	b	.L115
.L122:
	.align	2
.L121:
	.word	drawString
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	setPixel
	.word	waitForVblank
	.size	main, .-main
	.global	height
	.global	width
	.global	colchange
	.global	playerHeight
	.global	playerWidth
	.global	playerRow
	.global	playerCol
	.global	playerColDel
	.global	playerRowDel
	.global	car1row
	.global	car1col
	.global	car2row
	.global	car2col
	.global	car3row
	.global	car3col
	.global	car4row
	.global	car4col
	.global	car5row
	.global	car5col
	.global	car6row
	.global	car6col
	.global	life
	.comm	oldplayerRow,4,4
	.comm	oldplayerCol,4,4
	.comm	oldcar1col,4,4
	.comm	oldcar2col,4,4
	.comm	oldcar3col,4,4
	.comm	oldcar4col,4,4
	.comm	oldcar5col,4,4
	.comm	oldcar6col,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	colchange, %object
	.size	colchange, 4
colchange:
	.word	2
	.type	car1col, %object
	.size	car1col, 4
car1col:
	.word	232
	.type	car2col, %object
	.size	car2col, 4
car2col:
	.word	2
	.type	car3col, %object
	.size	car3col, 4
car3col:
	.word	210
	.type	car4col, %object
	.size	car4col, 4
car4col:
	.word	5
	.type	car5col, %object
	.size	car5col, 4
car5col:
	.word	108
	.type	car6col, %object
	.size	car6col, 4
car6col:
	.word	35
	.type	width, %object
	.size	width, 4
width:
	.word	9
	.type	playerCol, %object
	.size	playerCol, 4
playerCol:
	.word	80
	.type	playerColDel, %object
	.size	playerColDel, 4
playerColDel:
	.word	1
	.type	playerRow, %object
	.size	playerRow, 4
playerRow:
	.word	140
	.type	playerRowDel, %object
	.size	playerRowDel, 4
playerRowDel:
	.word	1
	.type	playerHeight, %object
	.size	playerHeight, 4
playerHeight:
	.word	6
	.type	playerWidth, %object
	.size	playerWidth, 4
playerWidth:
	.word	4
	.type	life, %object
	.size	life, 4
life:
	.word	5
	.type	car1row, %object
	.size	car1row, 4
car1row:
	.word	35
	.type	height, %object
	.size	height, 4
height:
	.word	6
	.type	car2row, %object
	.size	car2row, 4
car2row:
	.word	115
	.type	car3row, %object
	.size	car3row, 4
car3row:
	.word	60
	.type	car4row, %object
	.size	car4row, 4
car4row:
	.word	85
	.type	car5row, %object
	.size	car5row, 4
car5row:
	.word	47
	.type	car6row, %object
	.size	car6row, 4
car6row:
	.word	92
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"You Win! You made it\000"
	.space	3
.LC1:
	.ascii	"without going splat! Woohoo\000"
.LC2:
	.ascii	"You lost, sorry!\000"
	.space	3
.LC3:
	.ascii	"To play: Use the arrow keys to cross\000"
	.space	3
.LC4:
	.ascii	"the street without getting hit!\000"
.LC5:
	.ascii	"You have 5 tries, good luck!\000"
	.space	3
.LC6:
	.ascii	"Press start to begin.\000"
	.ident	"GCC: (devkitARM release 31) 4.5.0"
