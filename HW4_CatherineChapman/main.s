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
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	mov	r3, #660
	stmfd	sp!, {r4, lr}
	add	r3, r3, r1
	ldr	r4, .L7
	mov	r0, #50
	ldr	r2, .L7+4
	mov	lr, pc
	bx	r4
	mov	r3, #660
	add	r3, r3, #3
	mov	r0, #60
	mov	r1, #15
	ldr	r2, .L7+8
	mov	lr, pc
	bx	r4
	ldr	r4, .L7+12
	ldr	r3, [r4, #0]
	tst	r3, #8
	beq	.L2
	ldr	r2, .L7+16
	ldr	r0, [r2, #0]
	ands	r0, r0, #8
	beq	.L5
.L2:
	tst	r3, #4
	beq	.L1
	ldr	r3, .L7+16
	ldr	r4, [r3, #0]
	ands	r4, r4, #4
	beq	.L6
.L1:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	mov	r0, #32512
	ldr	r3, .L7+20
	add	r0, r0, #255
	mov	lr, pc
	bx	r3
	ldr	r3, .L7+24
	str	r4, [r3, #0]
	b	.L1
.L5:
	ldr	r3, .L7+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L7+24
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, [r4, #0]
	b	.L2
.L8:
	.align	2
.L7:
	.word	drawString
	.word	.LC0
	.word	.LC1
	.word	oldButtons
	.word	buttons
	.word	fillScreen3
	.word	state
	.size	pause, .-pause
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #660
	stmfd	sp!, {r4, lr}
	mov	r0, #55
	ldr	r4, .L12
	mov	r1, #40
	ldr	r2, .L12+4
	add	r3, r3, #3
	mov	lr, pc
	bx	r4
	mov	r3, #660
	mov	r0, #65
	mov	r1, #40
	ldr	r2, .L12+8
	add	r3, r3, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r0, #120
	mov	r1, #20
	ldr	r2, .L12+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+16
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L9
	ldr	r3, .L12+20
	ldr	r4, [r3, #0]
	ands	r4, r4, #8
	beq	.L11
.L9:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L11:
	mov	r0, #32512
	add	r0, r0, #255
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+28
	str	r4, [r3, #0]
	ldr	r3, .L12+32
	mov	lr, pc
	bx	r3
	b	.L9
.L13:
	.align	2
.L12:
	.word	drawString
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	oldButtons
	.word	buttons
	.word	fillScreen3
	.word	state
	.word	waitForVblank
	.size	win, .-win
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #55
	mov	r1, #20
	ldr	r2, .L17
	mov	r3, #31
	ldr	r4, .L17+4
	mov	lr, pc
	bx	r4
	mov	r3, #31
	mov	r0, #120
	mov	r1, #20
	ldr	r2, .L17+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L17+12
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L17+16
	ldr	r4, [r3, #0]
	ands	r4, r4, #8
	beq	.L16
.L14:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L16:
	mov	r0, #32512
	add	r0, r0, #255
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+24
	str	r4, [r3, #0]
	ldr	r3, .L17+28
	mov	lr, pc
	bx	r3
	b	.L14
.L18:
	.align	2
.L17:
	.word	.LC5
	.word	drawString
	.word	.LC4
	.word	oldButtons
	.word	buttons
	.word	fillScreen3
	.word	state
	.word	waitForVblank
	.size	lose, .-lose
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r5, .L22
	ldr	r9, .L22+4
	ldr	sl, .L22+8
	mov	r4, r5
	add	r8, r5, #144
	mov	r6, #6
	mov	r7, #9
.L20:
	str	r6, [r4, #8]
	str	r7, [r4, #12]
	mov	lr, pc
	bx	r9
	smull	r3, r2, sl, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, asl #2
	rsb	r0, r3, r0
	add	r0, r0, #1
	str	r0, [r4, #16]
	add	r4, r4, #24
	cmp	r4, r8
	bne	.L20
	mov	r2, #17408
	ldr	r3, .L22+12
	add	r2, r2, #236
	strh	r2, [r5, #140]	@ movhi
	mov	r2, #4
	mov	r8, #232
	str	r2, [r3, #12]
	mov	r2, #140
	str	r2, [r3, #0]
	mov	r4, #1
	mov	r1, #32512
	str	r8, [r5, #4]
	mov	r2, #80
	mov	r8, #47
	add	r1, r1, #224
	str	r8, [r5, #24]
	str	r6, [r3, #8]
	mov	r8, #108
	str	r2, [r3, #4]
	str	r4, [r3, #20]
	str	r4, [r3, #16]
	ldr	r3, .L22+16
	mov	ip, #5
	mov	r0, #31744
	str	r8, [r5, #28]
	strh	r1, [r5, #92]	@ movhi
	mvn	r8, #64512
	mov	r1, #92
	add	r0, r0, #31
	strh	r8, [r5, #44]	@ movhi
	str	r1, [r5, #96]
	mov	r8, #60
	mov	r1, #115
	str	ip, [r3, #0]
	mov	r3, #992	@ movhi
	mov	r7, #35
	str	r8, [r5, #48]
	strh	r0, [r5, #68]	@ movhi
	mov	r8, #210
	mov	r0, #85
	str	r1, [r5, #120]
	strh	r3, [r5, #20]	@ movhi
	mov	r1, #2
	mov	r3, #31	@ movhi
	str	r7, [r5, #0]
	str	r8, [r5, #52]
	str	r0, [r5, #72]
	str	ip, [r5, #76]
	str	r7, [r5, #100]
	str	r1, [r5, #124]
	strh	r3, [r5, #116]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	cars
	.word	rand
	.word	1717986919
	.word	player
	.word	life
	.size	initialize, .-initialize
	.align	2
	.global	instruct
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #324
	stmfd	sp!, {r4, lr}
	mov	r0, #20
	ldr	r4, .L27
	mov	r1, #10
	ldr	r2, .L27+4
	add	r3, r3, #1
	mov	lr, pc
	bx	r4
	mov	r3, #324
	mov	r0, #29
	mov	r1, #10
	ldr	r2, .L27+8
	add	r3, r3, #1
	mov	lr, pc
	bx	r4
	mov	r3, #324
	mov	r0, #48
	mov	r1, #10
	ldr	r2, .L27+12
	add	r3, r3, #1
	mov	lr, pc
	bx	r4
	mov	r3, #324
	mov	r0, #70
	mov	r1, #10
	ldr	r2, .L27+16
	add	r3, r3, #1
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r0, #100
	mov	r1, #10
	ldr	r2, .L27+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+24
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L24
	ldr	r3, .L27+28
	ldr	r0, [r3, #0]
	ands	r0, r0, #8
	beq	.L26
.L24:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L26:
	ldr	r3, .L27+32
	mov	lr, pc
	bx	r3
	bl	initialize
	ldr	r3, .L27+36
	mov	r2, #1
	str	r2, [r3, #0]
	ldr	r3, .L27+40
	mov	lr, pc
	bx	r3
	b	.L24
.L28:
	.align	2
.L27:
	.word	drawString
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	oldButtons
	.word	buttons
	.word	fillScreen3
	.word	state
	.word	waitForVblank
	.size	instruct, .-instruct
	.align	2
	.global	update
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L55
	ldr	r7, .L55+4
	mov	r4, #0
.L30:
	add	r5, r4, r7
	ldmia	r5!, {r0, r1, r2, r3}
	add	ip, r6, r4
	stmia	ip!, {r0, r1, r2, r3}
	add	r4, r4, #24
	ldmia	r5, {r0, r1}
	mov	r3, ip
	cmp	r4, #144
	ldr	ip, .L55+4
	stmia	r3, {r0, r1}
	bne	.L30
	ldr	r4, .L55+8
	ldr	r5, .L55+12
	mov	r6, r4
	ldmia	r6!, {r0, r1, r2, r3}
	mov	sl, r5
	stmia	sl!, {r0, r1, r2, r3}
	ldr	r8, [ip, #28]
	ldr	r2, [ip, #40]
	ldr	r7, [ip, #52]
	ldr	r9, [ip, #64]
	ldr	fp, [ip, #88]
	rsb	r8, r2, r8
	ldr	r2, [ip, #76]
	ldr	r5, [ip, #4]
	ldr	r3, [ip, #16]
	ldmia	r6, {r0, r1}
	rsb	r7, r9, r7
	add	r6, fp, r2
	ldr	r9, [ip, #112]
	ldr	fp, [ip, #100]
	rsb	r3, r3, r5
	cmp	r3, #0
	add	r5, r9, fp
	ldr	fp, [ip, #124]
	ldr	r9, [ip, #136]
	str	r3, [ip, #4]
	ldrlt	r3, [ip, #12]
	add	r2, r9, fp
	rsblt	r3, r3, #239
	str	r2, [ip, #124]
	add	r2, ip, #48
	strlt	r3, [ip, #4]
	cmp	ip, r2
	stmia	sl, {r0, r1}
	str	r8, [ip, #28]
	str	r7, [ip, #52]
	str	r6, [ip, #76]
	str	r5, [ip, #100]
	beq	.L32
.L53:
	ldr	r3, [ip, #28]
	add	ip, ip, #24
	cmp	r3, #0
	ldrlt	r3, [ip, #12]
	rsblt	r3, r3, #239
	strlt	r3, [ip, #4]
	cmp	ip, r2
	bne	.L53
.L32:
	ldr	r0, .L55+16
	mov	ip, #0
	sub	r3, r0, #72
.L35:
	ldr	r2, [r3, #76]
	ldr	r1, [r3, #84]
	add	r2, r1, r2
	cmp	r2, #239
	strgt	ip, [r3, #76]
	add	r3, r3, #24
	cmp	r3, r0
	bne	.L35
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	ldreq	r2, [r4, #20]
	ldreq	r3, [r4, #4]
	addeq	r2, r2, r3
	streq	r2, [r4, #4]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	ldrne	r2, [r4, #4]
	tst	r3, #32
	ldreq	r3, [r4, #20]
	rsbeq	r2, r3, r2
	streq	r2, [r4, #4]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #64
	ldreq	r3, [r4, #16]
	ldreq	r1, [r4, #0]
	rsbeq	r3, r3, r1
	streq	r3, [r4, #0]
	mov	r1, #67108864
	ldr	r1, [r1, #304]
	ldrne	r3, [r4, #0]
	tst	r1, #128
	ldreq	r1, [r4, #16]
	addeq	r3, r3, r1
	ldr	r1, [r4, #8]
	rsb	r0, r1, #160
	streq	r3, [r4, #0]
	cmp	r0, r3
	ldrlt	r3, .L55+8
	strlt	r0, [r3, #0]
	movlt	r3, r0
	cmp	r3, #0
	movlt	r3, #0
	ldr	r0, [r4, #12]
	strlt	r3, [r4, #0]
	cmp	r2, #0
	movlt	r2, #0
	rsb	r0, r0, #240
	strlt	r2, [r4, #4]
	cmp	r0, r2
	ldrlt	r2, .L55+8
	add	r1, r3, r1
	strlt	r0, [r2, #4]
	cmp	r1, #24
	bgt	.L46
	ldr	r2, .L55+20
	ldr	r2, [r2, #0]
	cmp	r2, #0
	ble	.L46
	mov	r0, #32512
	ldr	r3, .L55+24
	add	r0, r0, #255
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+28
	mov	r2, #2
	str	r2, [r3, #0]
	ldr	r3, [r4, #0]
.L46:
	ldr	r5, .L55+4
	ldr	r7, .L55+8
	ldr	r8, .L55+20
	ldr	fp, .L55+24
	add	r6, r5, #144
	mov	r9, #140
	mov	sl, #80
.L50:
	ldr	r2, [r5, #0]
	ldr	r1, [r5, #8]
	add	r1, r2, r1
	cmp	r1, r3
	blt	.L47
	ldr	ip, [r5, #4]
	ldr	r0, [r5, #12]
	ldr	r1, [r4, #4]
	add	r0, ip, r0
	cmp	r1, r0
	bgt	.L47
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	cmp	r2, r3
	bge	.L47
	ldr	r3, [r7, #12]
	add	r1, r1, r3
	cmp	ip, r1
	ble	.L54
.L47:
	add	r5, r5, #24
	cmp	r5, r6
	ldrne	r3, [r4, #0]
	bne	.L50
.L29:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L54:
	ldr	r0, [r8, #0]
	sub	r0, r0, #1
	cmp	r0, #0
	str	r0, [r8, #0]
	strne	r9, [r7, #0]
	strne	sl, [r7, #4]
	bne	.L47
	mov	lr, pc
	bx	fp
	ldr	r1, .L55+28
	mov	r2, #3
	str	r2, [r1, #0]
	b	.L47
.L56:
	.align	2
.L55:
	.word	oldcars
	.word	cars
	.word	player
	.word	oldplayer
	.word	cars+72
	.word	life
	.word	fillScreen3
	.word	state
	.size	update, .-update
	.align	2
	.global	draw
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, #32512
	sub	sp, sp, #56
	ldr	r6, .L60
	add	r4, r4, #255
	mov	r0, #20
	mov	r1, #0
	mov	r2, #5
	mov	r3, #240
	str	r4, [sp, #0]
	mov	r7, #1020
	mov	lr, pc
	bx	r6
	mov	r0, #130
	mov	r1, #0
	mov	r2, #5
	mov	r3, #240
	add	r7, r7, #3
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #73
	mov	r1, #0
	mov	r2, #4
	mov	r3, #240
	str	r7, [sp, #0]
	mov	r5, #324
	mov	lr, pc
	bx	r6
	mov	r0, #79
	mov	r1, #0
	mov	r2, #4
	mov	r3, #240
	add	r5, r5, #1
	str	r7, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #136
	mov	r1, #0
	mov	r2, #23
	mov	r3, #240
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	mov	r0, #0
	mov	r1, r0
	mov	r2, #20
	mov	r3, #240
	str	r5, [sp, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L60+4
	mov	r8, #0
	ldmia	r3, {r0, r1, r2, r3}	@ phole ldm
	str	r8, [sp, #0]
	mov	lr, pc
	bx	r6
	ldr	r3, .L60+8
	ldmia	r3, {r0, r1, r2, r3}	@ phole ldm
	str	r4, [sp, #0]
	mov	lr, pc
	bx	r6
	ldr	r4, .L60+12
	ldr	r5, .L60+16
	add	r7, r4, #144
.L58:
	ldmia	r4, {r0, r1, r2, r3}	@ phole ldm
	str	r8, [sp, #0]
	mov	lr, pc
	bx	r6
	sub	r0, r5, #20
	ldmia	r0, {r0, r1, r2, r3}	@ phole ldm
	ldrh	ip, [r5], #24
	add	r4, r4, #24
	str	ip, [sp, #0]
	mov	lr, pc
	bx	r6
	cmp	r4, r7
	bne	.L58
	ldr	r3, .L60+20
	add	r4, sp, #12
	ldr	r2, [r3, #0]
	ldr	r1, .L60+24
	mov	r0, r4
	ldr	r3, .L60+28
	mov	lr, pc
	bx	r3
	mov	r3, #26368
	mov	r0, #148
	mov	r1, #12
	mov	r2, r4
	add	r3, r3, #57
	ldr	ip, .L60+32
	mov	lr, pc
	bx	ip
	add	sp, sp, #56
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	drawBox
	.word	oldplayer
	.word	player
	.word	oldcars
	.word	cars+20
	.word	life
	.word	.LC11
	.word	sprintf
	.word	drawString
	.size	draw, .-draw
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L66
	stmfd	sp!, {r4, lr}
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L63
	ldr	r2, .L66+4
	ldr	r2, [r2, #0]
	tst	r2, #8
	ldreq	r2, .L66+8
	moveq	r1, #4
	streq	r1, [r2, #0]
.L63:
	tst	r3, #4
	beq	.L64
	ldr	r3, .L66+4
	ldr	r0, [r3, #0]
	ands	r0, r0, #4
	beq	.L65
.L64:
	bl	update
	ldr	r3, .L66+12
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	b	draw
.L65:
	ldr	r3, .L66+16
	mov	lr, pc
	bx	r3
	bl	initialize
	ldr	r3, .L66+8
	mov	r2, #1
	str	r2, [r3, #0]
	b	.L64
.L67:
	.align	2
.L66:
	.word	oldButtons
	.word	buttons
	.word	state
	.word	waitForVblank
	.word	fillScreen3
	.size	game, .-game
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r3, #1024
	add	r3, r3, #3
	ldr	r4, .L80
	mov	r5, #67108864
	strh	r3, [r5, #0]	@ movhi
	mov	r0, #32512
	mov	r3, #0
	str	r3, [r4, #0]
	add	r0, r0, #255
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	ldr	r6, .L80+8
	ldr	r7, .L80+12
.L79:
	ldr	r3, [r6, #0]
	ldr	r2, [r4, #0]
.L70:
	str	r3, [r7, #0]
	ldr	r3, [r5, #304]
	str	r3, [r6, #0]
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L70
.L76:
	.word	.L71
	.word	.L72
	.word	.L73
	.word	.L74
	.word	.L75
.L75:
	bl	pause
	b	.L79
.L74:
	bl	lose
	b	.L79
.L73:
	bl	win
	b	.L79
.L72:
	bl	game
	b	.L79
.L71:
	bl	instruct
	b	.L79
.L81:
	.align	2
.L80:
	.word	state
	.word	fillScreen3
	.word	buttons
	.word	oldButtons
	.size	main, .-main
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	cars,144,4
	.comm	oldcars,144,4
	.comm	player,24,4
	.comm	oldplayer,24,4
	.comm	life,4,4
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"You're paused! Press Start to continue,\000"
.LC1:
	.ascii	"select to return to start screen\000"
	.space	3
.LC2:
	.ascii	"You Win! You made it\000"
	.space	3
.LC3:
	.ascii	"without going splat! Woohoo\000"
.LC4:
	.ascii	"Hit Start to play again.\000"
	.space	3
.LC5:
	.ascii	"You lost, sorry!\000"
	.space	3
.LC6:
	.ascii	"To play: Use the arrow keys to cross\000"
	.space	3
.LC7:
	.ascii	"the street without getting hit!\000"
.LC8:
	.ascii	"You have 5 tries, good luck!\000"
	.space	3
.LC9:
	.ascii	"To pause the game: hit start.\000"
	.space	2
.LC10:
	.ascii	"Press start to begin the game.\000"
	.space	1
.LC11:
	.ascii	"Lives: %d\000"
	.ident	"GCC: (devkitARM release 31) 4.5.0"
