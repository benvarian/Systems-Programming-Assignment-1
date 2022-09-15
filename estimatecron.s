	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_daytoInt                       ; -- Begin function daytoInt
	.p2align	2
_daytoInt:                              ; @daytoInt
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_2
	b	LBB0_1
LBB0_1:
	stur	wzr, [x29, #-4]
	b	LBB0_17
LBB0_2:
	ldr	x0, [sp]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_4
	b	LBB0_3
LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_4:
	ldr	x0, [sp]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_6
	b	LBB0_5
LBB0_5:
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_6:
	ldr	x0, [sp]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_8
	b	LBB0_7
LBB0_7:
	mov	w8, #3
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_8:
	ldr	x0, [sp]
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_10
	b	LBB0_9
LBB0_9:
	mov	w8, #4
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_10:
	ldr	x0, [sp]
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_12
	b	LBB0_11
LBB0_11:
	mov	w8, #5
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_12:
	ldr	x0, [sp]
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_14
	b	LBB0_13
LBB0_13:
	mov	w8, #6
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_14:
	ldr	x0, [sp]
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB0_16
	b	LBB0_15
LBB0_15:
	mov	w8, #7
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_16:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB0_17
LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_amountofLines                  ; -- Begin function amountofLines
	.p2align	2
_amountofLines:                         ; @amountofLines
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_fopen
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x2, [sp, #16]
	add	x0, sp, #36
	mov	w1, #100
	bl	_fgets
	cbz	x0, LBB1_5
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	add	x0, sp, #36
	mov	w1, #35
	bl	_strchr
	cbz	x0, LBB1_4
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_1
LBB1_4:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB1_1
LBB1_5:
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB1_7
	b	LBB1_6
LBB1_6:
	bl	___stack_chk_fail
LBB1_7:
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_validMonth                     ; -- Begin function validMonth
	.p2align	2
_validMonth:                            ; @validMonth
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #24]
	add	x0, sp, #40
	adrp	x1, l___const.validMonth.months@PAGE
	add	x1, x1, l___const.validMonth.months@PAGEOFF
	mov	x2, #96
	bl	_memcpy
	str	wzr, [sp, #20]
	ldr	x8, [sp, #24]
	ldrsb	w0, [x8]
	bl	_isdigit
	subs	w8, w0, #1
	b.ne	LBB2_5
	b	LBB2_1
LBB2_1:
	ldr	x0, [sp, #24]
	bl	_atoi
	subs	w8, w0, #12
	b.ge	LBB2_3
	b	LBB2_2
LBB2_2:
	ldr	x0, [sp, #24]
	bl	_atoi
	subs	w8, w0, #0
	b.ge	LBB2_4
	b	LBB2_3
LBB2_3:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #39]
	b	LBB2_19
LBB2_4:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #39]
	b	LBB2_19
LBB2_5:
	str	wzr, [sp, #16]
	b	LBB2_6
LBB2_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9
	ldrb	w8, [x8]
	cbz	w8, LBB2_9
	b	LBB2_7
LBB2_7:                                 ;   in Loop: Header=BB2_6 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldrsb	w0, [x8, x9]
	bl	_tolower
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	strb	w0, [x8, x9]
	b	LBB2_8
LBB2_8:                                 ;   in Loop: Header=BB2_6 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB2_6
LBB2_9:
	str	wzr, [sp, #12]
	b	LBB2_10
LBB2_10:                                ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #12]
	subs	x8, x8, #12
	b.hs	LBB2_15
	b	LBB2_11
LBB2_11:                                ;   in Loop: Header=BB2_10 Depth=1
	ldrsw	x9, [sp, #12]
	add	x8, sp, #40
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #24]
	bl	_strcmp
	cbnz	w0, LBB2_13
	b	LBB2_12
LBB2_12:                                ;   in Loop: Header=BB2_10 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB2_13
LBB2_13:                                ;   in Loop: Header=BB2_10 Depth=1
	b	LBB2_14
LBB2_14:                                ;   in Loop: Header=BB2_10 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB2_10
LBB2_15:
	b	LBB2_16
LBB2_16:
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	b.le	LBB2_18
	b	LBB2_17
LBB2_17:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #39]
	b	LBB2_19
LBB2_18:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #39]
	b	LBB2_19
LBB2_19:
	ldrb	w8, [sp, #39]
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB2_21
	b	LBB2_20
LBB2_20:
	bl	___stack_chk_fail
LBB2_21:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_daysinMonth                    ; -- Begin function daysinMonth
	.p2align	2
_daysinMonth:                           ; @daysinMonth
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_atoi
	str	w0, [sp, #12]
	str	wzr, [sp, #8]
	b	LBB3_1
LBB3_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9
	ldrb	w8, [x8]
	cbz	w8, LBB3_4
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	ldrsb	w0, [x8, x9]
	bl	_tolower
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	strb	w0, [x8, x9]
	b	LBB3_3
LBB3_3:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB3_1
LBB3_4:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_6
	b	LBB3_5
LBB3_5:
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	b.ne	LBB3_7
	b	LBB3_6
LBB3_6:
	mov	w8, #28
	stur	w8, [x29, #-4]
	b	LBB3_34
LBB3_7:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_8
LBB3_8:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_9
LBB3_9:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_10
LBB3_10:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_11
LBB3_11:
	ldr	w8, [sp, #12]
	subs	w8, w8, #3
	b.eq	LBB3_15
	b	LBB3_12
LBB3_12:
	ldr	w8, [sp, #12]
	subs	w8, w8, #5
	b.eq	LBB3_15
	b	LBB3_13
LBB3_13:
	ldr	w8, [sp, #12]
	subs	w8, w8, #8
	b.eq	LBB3_15
	b	LBB3_14
LBB3_14:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB3_16
	b	LBB3_15
LBB3_15:
	mov	w8, #30
	stur	w8, [x29, #-4]
	b	LBB3_34
LBB3_16:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_17
LBB3_17:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_18
LBB3_18:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_19
LBB3_19:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_20
LBB3_20:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_21
LBB3_21:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_22
LBB3_22:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_23
LBB3_23:
	ldr	w8, [sp, #12]
	cbz	w8, LBB3_30
	b	LBB3_24
LBB3_24:
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	b.eq	LBB3_30
	b	LBB3_25
LBB3_25:
	ldr	w8, [sp, #12]
	subs	w8, w8, #4
	b.eq	LBB3_30
	b	LBB3_26
LBB3_26:
	ldr	w8, [sp, #12]
	subs	w8, w8, #6
	b.eq	LBB3_30
	b	LBB3_27
LBB3_27:
	ldr	w8, [sp, #12]
	subs	w8, w8, #7
	b.eq	LBB3_30
	b	LBB3_28
LBB3_28:
	ldr	w8, [sp, #12]
	subs	w8, w8, #9
	b.eq	LBB3_30
	b	LBB3_29
LBB3_29:
	ldr	w8, [sp, #12]
	subs	w8, w8, #11
	b.ne	LBB3_31
	b	LBB3_30
LBB3_30:
	mov	w8, #31
	stur	w8, [x29, #-4]
	b	LBB3_34
LBB3_31:
	ldr	w8, [sp, #12]
	subs	w8, w8, #11
	b.le	LBB3_33
	b	LBB3_32
LBB3_32:
	stur	wzr, [x29, #-4]
	b	LBB3_34
LBB3_33:
	stur	wzr, [x29, #-4]
	b	LBB3_34
LBB3_34:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_monthinDigit                   ; -- Begin function monthinDigit
	.p2align	2
_monthinDigit:                          ; @monthinDigit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_2
	b	LBB4_1
LBB4_1:
	stur	wzr, [x29, #-4]
	b	LBB4_25
LBB4_2:
	ldr	x0, [sp]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_4
	b	LBB4_3
LBB4_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_4:
	ldr	x0, [sp]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_6
	b	LBB4_5
LBB4_5:
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_6:
	ldr	x0, [sp]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_8
	b	LBB4_7
LBB4_7:
	mov	w8, #3
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_8:
	ldr	x0, [sp]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_10
	b	LBB4_9
LBB4_9:
	mov	w8, #4
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_10:
	ldr	x0, [sp]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_12
	b	LBB4_11
LBB4_11:
	mov	w8, #5
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_12:
	ldr	x0, [sp]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_14
	b	LBB4_13
LBB4_13:
	mov	w8, #6
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_14:
	ldr	x0, [sp]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_16
	b	LBB4_15
LBB4_15:
	mov	w8, #7
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_16:
	ldr	x0, [sp]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_18
	b	LBB4_17
LBB4_17:
	mov	w8, #8
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_18:
	ldr	x0, [sp]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_20
	b	LBB4_19
LBB4_19:
	mov	w8, #9
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_20:
	ldr	x0, [sp]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_22
	b	LBB4_21
LBB4_21:
	mov	w8, #10
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_22:
	ldr	x0, [sp]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_24
	b	LBB4_23
LBB4_23:
	mov	w8, #11
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_24:
	mov	w8, #12
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_25:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_matches                        ; -- Begin function matches
	.p2align	2
_matches:                               ; @matches
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	wzr, [sp, #12]
	str	wzr, [sp, #8]
	b	LBB5_1
LBB5_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_3 Depth 2
	ldrsw	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hs	LBB5_10
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	str	wzr, [sp, #4]
	b	LBB5_3
LBB5_3:                                 ;   Parent Loop BB5_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x8, [sp, #4]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.hs	LBB5_8
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_3 Depth=2
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #20
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	mov	x10, #60
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #4
	bl	_strcmp
	cbnz	w0, LBB5_6
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB5_6
LBB5_6:                                 ;   in Loop: Header=BB5_3 Depth=2
	b	LBB5_7
LBB5_7:                                 ;   in Loop: Header=BB5_3 Depth=2
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB5_3
LBB5_8:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_9
LBB5_9:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB5_1
LBB5_10:
	ldrsw	x8, [sp, #12]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	LBB5_12
	b	LBB5_11
LBB5_11:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB5_13
LBB5_12:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB5_13
LBB5_13:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_printing                       ; -- Begin function printing
	.p2align	2
_printing:                              ; @printing
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.22@PAGE
	add	x0, x0, l_.str.22@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-16]
	b	LBB6_1
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB6_4
	b	LBB6_2
LBB6_2:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mov	x17, #532
	stur	x17, [x29, #-32]                ; 8-byte Folded Spill
	mul	x9, x9, x17
	ldr	w8, [x8, x9]
                                        ; implicit-def: $x16
	mov	x16, x8
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	add	x15, x8, #24
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	ldr	w8, [x8, #524]
                                        ; implicit-def: $x14
	mov	x14, x8
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	ldr	w8, [x8, #4]
                                        ; implicit-def: $x13
	mov	x13, x8
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	ldr	w8, [x8, #8]
                                        ; implicit-def: $x12
	mov	x12, x8
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	ldr	w8, [x8, #12]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	ldr	w8, [x8, #16]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-16]
	mul	x9, x9, x17
	add	x8, x8, x9
	ldr	w9, [x8, #20]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	stur	x9, [x29, #-24]                 ; 8-byte Folded Spill
	str	x16, [x9]
	str	x15, [x9, #8]
	str	x14, [x9, #16]
	str	x13, [x9, #24]
	str	x12, [x9, #32]
	str	x11, [x9, #40]
	str	x10, [x9, #48]
	str	x8, [x9, #56]
	adrp	x0, l_.str.23@PAGE
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_printf
	b	LBB6_3
LBB6_3:                                 ;   in Loop: Header=BB6_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB6_1
LBB6_4:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_compareints                    ; -- Begin function compareints
	.p2align	2
_compareints:                           ; @compareints
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	LBB7_2
	b	LBB7_1
LBB7_1:
	mov	w8, #-1
	str	w8, [sp, #44]
	b	LBB7_6
LBB7_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.le	LBB7_4
	b	LBB7_3
LBB7_3:
	mov	w8, #1
	str	w8, [sp, #44]
	b	LBB7_6
LBB7_4:
	b	LBB7_5
LBB7_5:
	str	wzr, [sp, #44]
	b	LBB7_6
LBB7_6:
	ldr	w0, [sp, #44]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_convert                        ; -- Begin function convert
	.p2align	2
_convert:                               ; @convert
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	mov	x0, #532
	bl	_malloc
	stur	x0, [x29, #-40]
	stur	wzr, [x29, #-44]
	ldur	x8, [x29, #-40]
	cbnz	x8, LBB8_2
	b	LBB8_1
LBB8_1:
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB8_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	_matches
	tbz	w0, #0, LBB8_49
	b	LBB8_3
LBB8_3:
	stur	wzr, [x29, #-48]
	b	LBB8_4
LBB8_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_6 Depth 2
	ldursw	x8, [x29, #-48]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.hs	LBB8_28
	b	LBB8_5
LBB8_5:                                 ;   in Loop: Header=BB8_4 Depth=1
	stur	wzr, [x29, #-52]
	b	LBB8_6
LBB8_6:                                 ;   Parent Loop BB8_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldursw	x8, [x29, #-52]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.hs	LBB8_23
	b	LBB8_7
LBB8_7:                                 ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-48]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #20
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-52]
	mov	x10, #60
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #4
	bl	_strcmp
	cbnz	w0, LBB8_21
	b	LBB8_8
LBB8_8:                                 ;   in Loop: Header=BB8_6 Depth=2
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-40]
	ldursw	x11, [x29, #-48]
	mov	x10, #532
	mul	x11, x11, x10
	str	w8, [x9, x11]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-48]
	mov	x11, #60
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	w8, [x8, #56]
	ldur	x9, [x29, #-40]
	ldursw	x11, [x29, #-48]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #524]
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #24
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	str	x10, [sp, #48]                  ; 8-byte Folded Spill
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #20
	mov	x2, #500
	bl	___strcpy_chk
	ldr	x10, [sp, #48]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #4
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB8_10
	b	LBB8_9
LBB8_9:                                 ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x9, x8, x9
	mov	w8, #-1
	str	w8, [x9, #4]
	b	LBB8_11
LBB8_10:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #4
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #4
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	_sscanf
	b	LBB8_11
LBB8_11:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #7
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB8_13
	b	LBB8_12
LBB8_12:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	wzr, [x8, #8]
	b	LBB8_14
LBB8_13:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #7
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #8
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	_sscanf
	b	LBB8_14
LBB8_14:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #10
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB8_16
	b	LBB8_15
LBB8_15:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	wzr, [x8, #12]
	b	LBB8_17
LBB8_16:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #10
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #12
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	_sscanf
	b	LBB8_17
LBB8_17:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #13
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB8_19
	b	LBB8_18
LBB8_18:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x0, [x29, #-32]
	bl	_monthinDigit
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	w0, [x8, #16]
	b	LBB8_20
LBB8_19:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #13
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #16
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	_sscanf
	b	LBB8_20
LBB8_20:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-52]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #16
	bl	_daytoInt
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	w0, [x8, #20]
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	LBB8_21
LBB8_21:                                ;   in Loop: Header=BB8_6 Depth=2
	b	LBB8_22
LBB8_22:                                ;   in Loop: Header=BB8_6 Depth=2
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	LBB8_6
LBB8_23:                                ;   in Loop: Header=BB8_4 Depth=1
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	_daysinMonth
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	b.gt	LBB8_25
	b	LBB8_24
LBB8_24:                                ;   in Loop: Header=BB8_4 Depth=1
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	subs	w8, w8, #0
	b.ge	LBB8_26
	b	LBB8_25
LBB8_25:
	ldur	x8, [x29, #-40]
	ldursw	x9, [x29, #-48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #24
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.25@PAGE
	add	x0, x0, l_.str.25@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB8_26:                                ;   in Loop: Header=BB8_4 Depth=1
	b	LBB8_27
LBB8_27:                                ;   in Loop: Header=BB8_4 Depth=1
	ldur	w8, [x29, #-48]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	b	LBB8_4
LBB8_28:
	ldur	x0, [x29, #-40]
	ldursw	x1, [x29, #-44]
	mov	x2, #532
	adrp	x3, _compareints@PAGE
	add	x3, x3, _compareints@PAGEOFF
	bl	_qsort
	ldur	x0, [x29, #-32]
	bl	_daysinMonth
	stur	w0, [x29, #-56]
	mov	w8, #1
	stur	w8, [x29, #-60]
	b	LBB8_29
LBB8_29:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_31 Depth 2
                                        ;       Child Loop BB8_33 Depth 3
                                        ;         Child Loop BB8_35 Depth 4
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-56]
	subs	w8, w8, w9
	b.ge	LBB8_48
	b	LBB8_30
LBB8_30:                                ;   in Loop: Header=BB8_29 Depth=1
	str	wzr, [sp, #64]
	b	LBB8_31
LBB8_31:                                ;   Parent Loop BB8_29 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB8_33 Depth 3
                                        ;         Child Loop BB8_35 Depth 4
	ldr	w8, [sp, #64]
	subs	w8, w8, #24
	b.ge	LBB8_46
	b	LBB8_32
LBB8_32:                                ;   in Loop: Header=BB8_31 Depth=2
	str	wzr, [sp, #60]
	b	LBB8_33
LBB8_33:                                ;   Parent Loop BB8_29 Depth=1
                                        ;     Parent Loop BB8_31 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB8_35 Depth 4
	ldr	w8, [sp, #60]
	subs	w8, w8, #60
	b.ge	LBB8_44
	b	LBB8_34
LBB8_34:                                ;   in Loop: Header=BB8_33 Depth=3
	str	wzr, [sp, #56]
	b	LBB8_35
LBB8_35:                                ;   Parent Loop BB8_29 Depth=1
                                        ;     Parent Loop BB8_31 Depth=2
                                        ;       Parent Loop BB8_33 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #56]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ge	LBB8_42
	b	LBB8_36
LBB8_36:                                ;   in Loop: Header=BB8_35 Depth=4
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	ldur	w9, [x29, #-60]
	subs	w8, w8, w9
	b.ne	LBB8_40
	b	LBB8_37
LBB8_37:                                ;   in Loop: Header=BB8_35 Depth=4
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #8]
	ldr	w9, [sp, #64]
	subs	w8, w8, w9
	b.ne	LBB8_40
	b	LBB8_38
LBB8_38:                                ;   in Loop: Header=BB8_35 Depth=4
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	ldr	w9, [sp, #60]
	subs	w8, w8, w9
	b.ne	LBB8_40
	b	LBB8_39
LBB8_39:                                ;   in Loop: Header=BB8_35 Depth=4
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	mov	x14, #532
	mul	x9, x9, x14
	add	x9, x8, x9
	mov	w8, #1
	str	w8, [x9, #528]
	ldur	w8, [x29, #-60]
                                        ; implicit-def: $x13
	mov	x13, x8
	ldr	w8, [sp, #64]
                                        ; implicit-def: $x12
	mov	x12, x8
	ldr	w8, [sp, #60]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	mul	x9, x9, x14
	add	x8, x8, x9
	add	x10, x8, #24
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #56]
	mul	x9, x9, x14
	add	x8, x8, x9
	ldr	w9, [x8, #528]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x13, [x9]
	str	x12, [x9, #8]
	str	x11, [x9, #16]
	str	x10, [x9, #24]
	str	x8, [x9, #32]
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_printf
	b	LBB8_40
LBB8_40:                                ;   in Loop: Header=BB8_35 Depth=4
	b	LBB8_41
LBB8_41:                                ;   in Loop: Header=BB8_35 Depth=4
	ldr	w8, [sp, #56]
	add	w8, w8, #1
	str	w8, [sp, #56]
	b	LBB8_35
LBB8_42:                                ;   in Loop: Header=BB8_33 Depth=3
	b	LBB8_43
LBB8_43:                                ;   in Loop: Header=BB8_33 Depth=3
	ldr	w8, [sp, #60]
	add	w8, w8, #1
	str	w8, [sp, #60]
	b	LBB8_33
LBB8_44:                                ;   in Loop: Header=BB8_31 Depth=2
	b	LBB8_45
LBB8_45:                                ;   in Loop: Header=BB8_31 Depth=2
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	str	w8, [sp, #64]
	b	LBB8_31
LBB8_46:                                ;   in Loop: Header=BB8_29 Depth=1
	b	LBB8_47
LBB8_47:                                ;   in Loop: Header=BB8_29 Depth=1
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	LBB8_29
LBB8_48:
	b	LBB8_50
LBB8_49:
	adrp	x0, l_.str.27@PAGE
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB8_50:
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_cronfile                       ; -- Begin function cronfile
	.p2align	2
_cronfile:                              ; @cronfile
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #88]
	ldr	x0, [sp, #88]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_fopen
	str	x0, [sp, #80]
	mov	w8, #1
	str	w8, [sp, #76]
	str	wzr, [sp, #72]
	ldr	x0, [sp, #88]
	bl	_amountofLines
                                        ; implicit-def: $x8
	mov	x8, x0
	sxtw	x9, w8
	mov	x8, #72
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	cbnz	x8, LBB9_2
	b	LBB9_1
LBB9_1:
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB9_2:
	ldr	x8, [sp, #80]
	cbnz	x8, LBB9_4
	b	LBB9_3
LBB9_3:
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB9_4:
	b	LBB9_5
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x2, [sp, #80]
	add	x0, sp, #100
	mov	w1, #100
	bl	_fgets
	cbz	x0, LBB9_9
	b	LBB9_6
LBB9_6:                                 ;   in Loop: Header=BB9_5 Depth=1
	add	x0, sp, #100
	mov	w1, #35
	bl	_strchr
	cbz	x0, LBB9_8
	b	LBB9_7
LBB9_7:                                 ;   in Loop: Header=BB9_5 Depth=1
	b	LBB9_5
LBB9_8:                                 ;   in Loop: Header=BB9_5 Depth=1
	ldr	w8, [sp, #76]
	ldr	x9, [sp, #64]
	ldrsw	x10, [sp, #72]
	mov	x15, #72
	mul	x10, x10, x15
	str	w8, [x9, x10]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #72]
	mul	x9, x9, x15
	add	x8, x8, x9
	add	x14, x8, #4
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #72]
	mul	x9, x9, x15
	add	x8, x8, x9
	add	x13, x8, #7
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #72]
	mul	x9, x9, x15
	add	x8, x8, x9
	add	x12, x8, #10
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #72]
	mul	x9, x9, x15
	add	x8, x8, x9
	add	x11, x8, #13
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #72]
	mul	x9, x9, x15
	add	x8, x8, x9
	add	x10, x8, #16
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #72]
	mul	x9, x9, x15
	add	x8, x8, x9
	add	x8, x8, #20
	mov	x9, sp
	str	x14, [x9]
	str	x13, [x9, #8]
	str	x12, [x9, #16]
	str	x11, [x9, #24]
	str	x10, [x9, #32]
	str	x8, [x9, #40]
	add	x0, sp, #100
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	_sscanf
	ldr	w8, [sp, #76]
	add	w8, w8, #1
	str	w8, [sp, #76]
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	b	LBB9_5
LBB9_9:
	b	LBB9_10
LBB9_10:
	ldr	x0, [sp, #80]
	bl	_fclose
	ldr	x8, [sp, #64]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB9_12
	b	LBB9_11
LBB9_11:
	bl	___stack_chk_fail
LBB9_12:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_estimeFile                     ; -- Begin function estimeFile
	.p2align	2
_estimeFile:                            ; @estimeFile
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #56]
	ldr	x0, [sp, #56]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_fopen
	str	x0, [sp, #48]
	ldr	x0, [sp, #56]
	bl	_amountofLines
                                        ; implicit-def: $x8
	mov	x8, x0
	sxtw	x9, w8
	mov	x8, #8
	mul	x0, x8, x9
	bl	_malloc
	str	x0, [sp, #40]
	mov	w8, #1
	str	w8, [sp, #36]
	str	wzr, [sp, #32]
	ldr	x8, [sp, #40]
	cbnz	x8, LBB10_2
	b	LBB10_1
LBB10_1:
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB10_2:
	ldr	x8, [sp, #48]
	cbnz	x8, LBB10_4
	b	LBB10_3
LBB10_3:
	adrp	x0, l_.str.31@PAGE
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB10_4:
	b	LBB10_5
LBB10_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	x2, [sp, #48]
	add	x0, sp, #68
	mov	w1, #100
	bl	_fgets
	cbz	x0, LBB10_9
	b	LBB10_6
LBB10_6:                                ;   in Loop: Header=BB10_5 Depth=1
	add	x0, sp, #68
	mov	w1, #35
	bl	_strchr
	cbz	x0, LBB10_8
	b	LBB10_7
LBB10_7:                                ;   in Loop: Header=BB10_5 Depth=1
	b	LBB10_5
LBB10_8:                                ;   in Loop: Header=BB10_5 Depth=1
	ldr	w8, [sp, #36]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #32]
	mov	x11, #60
	mul	x10, x10, x11
	str	w8, [x9, x10]
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #32]
	mul	x9, x9, x11
	add	x8, x8, x9
	add	x10, x8, #4
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #32]
	mul	x9, x9, x11
	add	x8, x8, x9
	add	x8, x8, #56
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	add	x0, sp, #68
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	_sscanf
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB10_5
LBB10_9:
	ldr	x0, [sp, #48]
	bl	_fclose
	ldr	x8, [sp, #40]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB10_11
	b	LBB10_10
LBB10_10:
	bl	___stack_chk_fail
LBB10_11:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #4
	b.eq	LBB11_2
	b	LBB11_1
LBB11_1:
	adrp	x0, l_.str.33@PAGE
	add	x0, x0, l_.str.33@PAGEOFF
	bl	_printf
	b	LBB11_6
LBB11_2:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	bl	_validMonth
	tbnz	w0, #0, LBB11_4
	b	LBB11_3
LBB11_3:
	adrp	x0, l_.str.34@PAGE
	add	x0, x0, l_.str.34@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB11_4:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #16]
	bl	_cronfile
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	bl	_estimeFile
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #24]
	bl	_amountofLines
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x2, w8
	ldr	x8, [sp, #16]
	ldr	x3, [x8, #8]
	bl	_convert
	b	LBB11_5
LBB11_5:
	b	LBB11_6
LBB11_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_totalNum                       ; @totalNum
.zerofill __DATA,__common,_totalNum,4,2
	.globl	_anyTime                        ; @anyTime
.zerofill __DATA,__common,_anyTime,4,2
	.globl	_nrunning                       ; @nrunning
.zerofill __DATA,__common,_nrunning,4,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"sun"

l_.str.1:                               ; @.str.1
	.asciz	"mon"

l_.str.2:                               ; @.str.2
	.asciz	"tue"

l_.str.3:                               ; @.str.3
	.asciz	"wed"

l_.str.4:                               ; @.str.4
	.asciz	"thu"

l_.str.5:                               ; @.str.5
	.asciz	"fri"

l_.str.6:                               ; @.str.6
	.asciz	"sat"

l_.str.7:                               ; @.str.7
	.asciz	"*"

l_.str.8:                               ; @.str.8
	.asciz	"r"

l_.str.9:                               ; @.str.9
	.asciz	"jan"

l_.str.10:                              ; @.str.10
	.asciz	"feb"

l_.str.11:                              ; @.str.11
	.asciz	"mar"

l_.str.12:                              ; @.str.12
	.asciz	"apr"

l_.str.13:                              ; @.str.13
	.asciz	"may"

l_.str.14:                              ; @.str.14
	.asciz	"jun"

l_.str.15:                              ; @.str.15
	.asciz	"jul"

l_.str.16:                              ; @.str.16
	.asciz	"aug"

l_.str.17:                              ; @.str.17
	.asciz	"oct"

l_.str.18:                              ; @.str.18
	.asciz	"sep"

l_.str.19:                              ; @.str.19
	.asciz	"nov"

l_.str.20:                              ; @.str.20
	.asciz	"dec"

	.section	__DATA,__const
	.p2align	3                               ; @__const.validMonth.months
l___const.validMonth.months:
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16
	.quad	l_.str.17
	.quad	l_.str.18
	.quad	l_.str.19
	.quad	l_.str.20

	.section	__TEXT,__cstring,cstring_literals
l_.str.21:                              ; @.str.21
	.asciz	"10"

l_.str.22:                              ; @.str.22
	.asciz	"%d"

l_.str.23:                              ; @.str.23
	.asciz	"id:%d\n task:%s\n dur:%d\n min:%d\n hour:%d\n date:%d\n month:%d\n day:%d\n"

l_.str.24:                              ; @.str.24
	.asciz	"malloc failed"

l_.str.25:                              ; @.str.25
	.asciz	"invalid date for %s\n"

l_.str.26:                              ; @.str.26
	.asciz	"%d:%d:%d:%s:%d\n"

l_.str.27:                              ; @.str.27
	.asciz	"Unable to run program, please enter a matching set of crontab and estim files and make sure there in the right order!!\n"

l_.str.28:                              ; @.str.28
	.asciz	"Cannot allocate the required bytes of memory\n"

l_.str.29:                              ; @.str.29
	.asciz	"Error Opening File: crontab-file\n"

l_.str.30:                              ; @.str.30
	.asciz	"%s %s %s %s %s %s"

l_.str.31:                              ; @.str.31
	.asciz	"Error Opening File: estim-file\n"

l_.str.32:                              ; @.str.32
	.asciz	"%s %d"

l_.str.33:                              ; @.str.33
	.asciz	"Usage: ./estimatecron <month> <crontab-file> <estimates-file>\n"

l_.str.34:                              ; @.str.34
	.asciz	"Please input a valid month, 0->11 or jan->dec!!\n"

	.comm	_mostFreq,50,0                  ; @mostFreq
.subsections_via_symbols
