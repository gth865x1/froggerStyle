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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, asl #4
	add	r0, r1, r0, asl #4
	mov	r0, r0, asl #1
	add	r0, r0, #100663296
	strh	r2, [r0, #0]	@ movhi
	bx	lr
	.size	setPixel, .-setPixel
	.align	2
	.global	drawTriangle
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, asl #4
	stmfd	sp!, {r4, r5}
	add	r1, r1, r0, asl #4
	mov	r3, r1, asl #1
	add	r3, r3, #100663296
	mov	ip, r3
	mov	r0, #20
.L3:
	subs	r0, r0, #1
	strh	r2, [ip, #0]	@ movhi
	add	ip, ip, #480
	bne	.L3
	add	r1, r1, #4800
	mov	r5, r1, asl #1
	mov	r4, r0
	add	r5, r5, #100663296
.L5:
	strh	r2, [r3], #2	@ movhi
	mov	r0, r5
	mov	r1, #21
.L4:
	sub	ip, r0, #476
	subs	r1, r1, #1
	strh	r2, [r0, #0]	@ movhi
	sub	r0, ip, #2
	bne	.L4
	add	r4, r4, #1
	cmp	r4, #20
	bne	.L5
	ldmfd	sp!, {r4, r5}
	bx	lr
	.size	drawTriangle, .-drawTriangle
	.align	2
	.global	drawBox
	.type	drawBox, %function
drawBox:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	cmp	r2, #0
	ldrh	ip, [sp, #8]
	ble	.L10
	rsb	r0, r0, r0, asl #4
	add	r1, r1, r0, asl #4
	mov	r5, r1, asl #1
	add	r5, r5, #100663296
	mov	r4, #0
.L12:
	cmp	r3, #0
	movgt	r0, r5
	movgt	r1, #0
	ble	.L14
.L13:
	add	r1, r1, #1
	cmp	r1, r3
	strh	ip, [r0], #2	@ movhi
	bne	.L13
.L14:
	add	r4, r4, #1
	cmp	r4, r2
	add	r5, r5, #480
	bne	.L12
.L10:
	ldmfd	sp!, {r4, r5}
	bx	lr
	.size	drawBox, .-drawBox
	.align	2
	.global	waitForVblank
	.type	waitForVblank, %function
waitForVblank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L18:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L18
	mov	r2, #67108864
.L20:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L20
	bx	lr
	.size	waitForVblank, .-waitForVblank
	.ident	"GCC: (devkitARM release 31) 4.5.0"
