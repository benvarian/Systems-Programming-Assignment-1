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
	b	LBB0_15
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
	b	LBB0_15
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
	b	LBB0_15
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
	b	LBB0_15
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
	b	LBB0_15
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
	b	LBB0_15
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
	b	LBB0_15
LBB0_14:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB0_15
LBB0_15:
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
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
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
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
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
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_8
LBB3_8:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_9
LBB3_9:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_15
	b	LBB3_10
LBB3_10:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
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
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB3_16
	b	LBB3_15
LBB3_15:
	mov	w8, #30
	stur	w8, [x29, #-4]
	b	LBB3_34
LBB3_16:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_17
LBB3_17:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_18
LBB3_18:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_19
LBB3_19:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_20
LBB3_20:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_21
LBB3_21:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	_strcmp
	cbz	w0, LBB3_30
	b	LBB3_22
LBB3_22:
	ldr	x0, [sp, #16]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
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
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_2
	b	LBB4_1
LBB4_1:
	stur	wzr, [x29, #-4]
	b	LBB4_25
LBB4_2:
	ldr	x0, [sp]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_4
	b	LBB4_3
LBB4_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_4:
	ldr	x0, [sp]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_6
	b	LBB4_5
LBB4_5:
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_6:
	ldr	x0, [sp]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_8
	b	LBB4_7
LBB4_7:
	mov	w8, #3
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_8:
	ldr	x0, [sp]
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_10
	b	LBB4_9
LBB4_9:
	mov	w8, #4
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_10:
	ldr	x0, [sp]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_12
	b	LBB4_11
LBB4_11:
	mov	w8, #5
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_12:
	ldr	x0, [sp]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_14
	b	LBB4_13
LBB4_13:
	mov	w8, #6
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_14:
	ldr	x0, [sp]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_16
	b	LBB4_15
LBB4_15:
	mov	w8, #7
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_16:
	ldr	x0, [sp]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_18
	b	LBB4_17
LBB4_17:
	mov	w8, #8
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_18:
	ldr	x0, [sp]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_20
	b	LBB4_19
LBB4_19:
	mov	w8, #9
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_20:
	ldr	x0, [sp]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB4_22
	b	LBB4_21
LBB4_21:
	mov	w8, #10
	stur	w8, [x29, #-4]
	b	LBB4_25
LBB4_22:
	ldr	x0, [sp]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
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
	.globl	_weekdayValue                   ; -- Begin function weekdayValue
	.p2align	2
_weekdayValue:                          ; @weekdayValue
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	mov	w1, #0
	stur	wzr, [x29, #-16]
	add	x0, sp, #40
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x2, #56
	bl	_memset
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	w8, #122
	str	w8, [sp, #60]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #56]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #52]
	str	wzr, [sp, #48]
	str	wzr, [sp, #44]
	str	wzr, [sp, #40]
	mov	w8, #-1
	str	w8, [sp, #72]
	bl	_mktime
	mov	x8, x0
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	adds	w8, w8, #1
	b.ne	LBB6_2
	b	LBB6_1
LBB6_1:
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB6_2:
	add	x0, sp, #37
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #3
	adrp	x2, l_.str.22@PAGE
	add	x2, x2, l_.str.22@PAGEOFF
	add	x3, sp, #40
	bl	_strftime
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, sp
	sub	x8, x29, #16
	str	x8, [x9]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_sscanf
	ldur	w0, [x29, #-16]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_convert                        ; -- Begin function convert
	.p2align	2
_convert:                               ; @convert
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
	stur	x0, [x29, #-72]
	stur	x1, [x29, #-80]
	stur	x2, [x29, #-88]
	stur	x3, [x29, #-96]
	mov	x0, #532
	bl	_malloc
	str	x0, [sp, #104]
	str	wzr, [sp, #100]
	ldur	x8, [x29, #-96]
	ldrsb	w0, [x8]
	bl	_isdigit
	cbnz	w0, LBB7_2
	b	LBB7_1
LBB7_1:
	ldur	x0, [x29, #-96]
	bl	_monthinDigit
	str	w0, [sp, #96]
	b	LBB7_3
LBB7_2:
	ldur	x0, [x29, #-96]
	bl	_atoi
	str	w0, [sp, #96]
	b	LBB7_3
LBB7_3:
	ldr	x8, [sp, #104]
	cbnz	x8, LBB7_5
	b	LBB7_4
LBB7_4:
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB7_5:
	ldur	x0, [x29, #-72]
	ldur	x1, [x29, #-80]
	ldur	x2, [x29, #-88]
	bl	_matches
	tbz	w0, #0, LBB7_61
	b	LBB7_6
LBB7_6:
	str	wzr, [sp, #92]
	b	LBB7_7
LBB7_7:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_9 Depth 2
	ldrsw	x8, [sp, #92]
	ldur	x9, [x29, #-88]
	subs	x8, x8, x9
	b.hs	LBB7_31
	b	LBB7_8
LBB7_8:                                 ;   in Loop: Header=BB7_7 Depth=1
	str	wzr, [sp, #88]
	b	LBB7_9
LBB7_9:                                 ;   Parent Loop BB7_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x8, [sp, #88]
	ldur	x9, [x29, #-88]
	subs	x8, x8, x9
	b.hs	LBB7_26
	b	LBB7_10
LBB7_10:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #92]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #20
	ldur	x8, [x29, #-80]
	ldrsw	x9, [sp, #88]
	mov	x10, #60
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #4
	bl	_strcmp
	cbnz	w0, LBB7_24
	b	LBB7_11
LBB7_11:                                ;   in Loop: Header=BB7_9 Depth=2
	ldr	w8, [sp, #92]
	ldr	x9, [sp, #104]
	ldrsw	x11, [sp, #92]
	mov	x10, #532
	mul	x11, x11, x10
	str	w8, [x9, x11]
	ldur	x8, [x29, #-80]
	ldrsw	x9, [sp, #92]
	mov	x11, #60
	mul	x9, x9, x11
	add	x8, x8, x9
	ldr	w8, [x8, #56]
	ldr	x9, [sp, #104]
	ldrsw	x11, [sp, #92]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #524]
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #24
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	str	x10, [sp, #40]                  ; 8-byte Folded Spill
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #20
	mov	x2, #500
	bl	___strcpy_chk
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #4
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB7_13
	b	LBB7_12
LBB7_12:                                ;   in Loop: Header=BB7_9 Depth=2
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x9, x8, x9
	mov	w8, #-1
	str	w8, [x9, #4]
	b	LBB7_14
LBB7_13:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #4
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_sscanf
	b	LBB7_14
LBB7_14:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #7
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB7_16
	b	LBB7_15
LBB7_15:                                ;   in Loop: Header=BB7_9 Depth=2
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	wzr, [x8, #8]
	b	LBB7_17
LBB7_16:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #7
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #8
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_sscanf
	b	LBB7_17
LBB7_17:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #10
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB7_19
	b	LBB7_18
LBB7_18:                                ;   in Loop: Header=BB7_9 Depth=2
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	wzr, [x8, #12]
	b	LBB7_20
LBB7_19:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #10
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #12
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_sscanf
	b	LBB7_20
LBB7_20:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #13
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB7_22
	b	LBB7_21
LBB7_21:                                ;   in Loop: Header=BB7_9 Depth=2
	ldr	w8, [sp, #96]
	ldr	x9, [sp, #104]
	ldrsw	x10, [sp, #92]
	mov	x11, #532
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #16]
	b	LBB7_23
LBB7_22:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #13
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #16
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_sscanf
	b	LBB7_23
LBB7_23:                                ;   in Loop: Header=BB7_9 Depth=2
	ldur	x8, [x29, #-72]
	ldrsw	x9, [sp, #88]
	mov	x10, #72
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #16
	bl	_daytoInt
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	str	w0, [x8, #20]
	ldr	w8, [sp, #100]
	add	w8, w8, #1
	str	w8, [sp, #100]
	b	LBB7_24
LBB7_24:                                ;   in Loop: Header=BB7_9 Depth=2
	b	LBB7_25
LBB7_25:                                ;   in Loop: Header=BB7_9 Depth=2
	ldr	w8, [sp, #88]
	add	w8, w8, #1
	str	w8, [sp, #88]
	b	LBB7_9
LBB7_26:                                ;   in Loop: Header=BB7_7 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-96]
	bl	_daysinMonth
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	b.gt	LBB7_28
	b	LBB7_27
LBB7_27:                                ;   in Loop: Header=BB7_7 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	subs	w8, w8, #0
	b.ge	LBB7_29
	b	LBB7_28
LBB7_28:
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #92]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #24
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB7_29:                                ;   in Loop: Header=BB7_7 Depth=1
	b	LBB7_30
LBB7_30:                                ;   in Loop: Header=BB7_7 Depth=1
	ldr	w8, [sp, #92]
	add	w8, w8, #1
	str	w8, [sp, #92]
	b	LBB7_7
LBB7_31:
	ldur	x0, [x29, #-72]
	bl	_free
	ldur	x0, [x29, #-80]
	bl	_free
	str	wzr, [sp, #84]
	ldur	x0, [x29, #-96]
	bl	_daysinMonth
	str	w0, [sp, #80]
	mov	w8, #1
	str	w8, [sp, #76]
	b	LBB7_32
LBB7_32:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_34 Depth 2
                                        ;       Child Loop BB7_36 Depth 3
                                        ;         Child Loop BB7_40 Depth 4
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #80]
	subs	w8, w8, w9
	b.ge	LBB7_60
	b	LBB7_33
LBB7_33:                                ;   in Loop: Header=BB7_32 Depth=1
	str	wzr, [sp, #72]
	b	LBB7_34
LBB7_34:                                ;   Parent Loop BB7_32 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB7_36 Depth 3
                                        ;         Child Loop BB7_40 Depth 4
	ldr	w8, [sp, #72]
	subs	w8, w8, #24
	b.ge	LBB7_58
	b	LBB7_35
LBB7_35:                                ;   in Loop: Header=BB7_34 Depth=2
	str	wzr, [sp, #68]
	b	LBB7_36
LBB7_36:                                ;   Parent Loop BB7_32 Depth=1
                                        ;     Parent Loop BB7_34 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB7_40 Depth 4
	ldr	w8, [sp, #68]
	subs	w8, w8, #60
	b.ge	LBB7_56
	b	LBB7_37
LBB7_37:                                ;   in Loop: Header=BB7_36 Depth=3
	ldr	w8, [sp, #84]
	subs	w8, w8, #20
	b.lt	LBB7_39
	b	LBB7_38
LBB7_38:                                ;   in Loop: Header=BB7_34 Depth=2
	b	LBB7_56
LBB7_39:                                ;   in Loop: Header=BB7_36 Depth=3
	str	wzr, [sp, #64]
	b	LBB7_40
LBB7_40:                                ;   Parent Loop BB7_32 Depth=1
                                        ;     Parent Loop BB7_34 Depth=2
                                        ;       Parent Loop BB7_36 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #100]
	subs	w8, w8, w9
	b.ge	LBB7_54
	b	LBB7_41
LBB7_41:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	ldr	w9, [sp, #76]
	subs	w8, w8, w9
	b.eq	LBB7_43
	b	LBB7_42
LBB7_42:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	cbnz	w8, LBB7_52
	b	LBB7_43
LBB7_43:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #8]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.eq	LBB7_45
	b	LBB7_44
LBB7_44:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #8]
	cbnz	w8, LBB7_52
	b	LBB7_45
LBB7_45:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	b.eq	LBB7_47
	b	LBB7_46
LBB7_46:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	adds	w8, w8, #1
	b.ne	LBB7_52
	b	LBB7_47
LBB7_47:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #16]
	ldr	w9, [sp, #96]
	subs	w8, w8, w9
	b.ne	LBB7_52
	b	LBB7_48
LBB7_48:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #20]
	adds	w8, w8, #1
	b.eq	LBB7_50
	b	LBB7_49
LBB7_49:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	w0, [sp, #76]
	ldr	w1, [sp, #96]
	bl	_weekdayValue
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #20]
	subs	w8, w0, w8
	b.ne	LBB7_51
	b	LBB7_50
LBB7_50:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #64]
	mov	x10, #532
	mul	x9, x9, x10
	add	x9, x8, x9
	ldr	w8, [x9, #528]
	add	w8, w8, #1
	str	w8, [x9, #528]
	b	LBB7_51
LBB7_51:                                ;   in Loop: Header=BB7_40 Depth=4
	b	LBB7_52
LBB7_52:                                ;   in Loop: Header=BB7_40 Depth=4
	b	LBB7_53
LBB7_53:                                ;   in Loop: Header=BB7_40 Depth=4
	ldr	w8, [sp, #64]
	add	w8, w8, #1
	str	w8, [sp, #64]
	b	LBB7_40
LBB7_54:                                ;   in Loop: Header=BB7_36 Depth=3
	b	LBB7_55
LBB7_55:                                ;   in Loop: Header=BB7_36 Depth=3
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	b	LBB7_36
LBB7_56:                                ;   in Loop: Header=BB7_34 Depth=2
	b	LBB7_57
LBB7_57:                                ;   in Loop: Header=BB7_34 Depth=2
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	b	LBB7_34
LBB7_58:                                ;   in Loop: Header=BB7_32 Depth=1
	b	LBB7_59
LBB7_59:                                ;   in Loop: Header=BB7_32 Depth=1
	ldr	w8, [sp, #76]
	add	w8, w8, #1
	str	w8, [sp, #76]
	b	LBB7_32
LBB7_60:
	b	LBB7_62
LBB7_61:
	adrp	x0, l_.str.27@PAGE
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB7_62:
	str	wzr, [sp, #60]
	str	wzr, [sp, #56]
	b	LBB7_63
LBB7_63:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #100]
	subs	w8, w8, w9
	b.ge	LBB7_69
	b	LBB7_64
LBB7_64:                                ;   in Loop: Header=BB7_63 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #56]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #528]
	subs	w8, w8, #0
	b.le	LBB7_67
	b	LBB7_65
LBB7_65:                                ;   in Loop: Header=BB7_63 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #56]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #528]
	subs	w8, w8, #1000
	b.ge	LBB7_67
	b	LBB7_66
LBB7_66:                                ;   in Loop: Header=BB7_63 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #56]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w9, [x8, #528]
	ldr	w8, [sp, #60]
	add	w8, w8, w9
	str	w8, [sp, #60]
	b	LBB7_67
LBB7_67:                                ;   in Loop: Header=BB7_63 Depth=1
	b	LBB7_68
LBB7_68:                                ;   in Loop: Header=BB7_63 Depth=1
	ldr	w8, [sp, #56]
	add	w8, w8, #1
	str	w8, [sp, #56]
	b	LBB7_63
LBB7_69:
	str	wzr, [sp, #52]
	str	wzr, [sp, #48]
	b	LBB7_70
LBB7_70:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #100]
	subs	w8, w8, w9
	b.ge	LBB7_78
	b	LBB7_71
LBB7_71:                                ;   in Loop: Header=BB7_70 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #528]
	subs	w8, w8, #0
	b.le	LBB7_76
	b	LBB7_72
LBB7_72:                                ;   in Loop: Header=BB7_70 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #528]
	subs	w8, w8, #1000
	b.ge	LBB7_76
	b	LBB7_73
LBB7_73:                                ;   in Loop: Header=BB7_70 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #528]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	b.le	LBB7_75
	b	LBB7_74
LBB7_74:                                ;   in Loop: Header=BB7_70 Depth=1
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #48]
	mov	x10, #532
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #528]
	str	w8, [sp, #52]
	ldr	x8, [sp, #104]
	ldrsw	x9, [sp, #48]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #24
	sub	x0, x29, #58
	mov	x2, #50
	bl	___strcpy_chk
	b	LBB7_75
LBB7_75:                                ;   in Loop: Header=BB7_70 Depth=1
	b	LBB7_76
LBB7_76:                                ;   in Loop: Header=BB7_70 Depth=1
	b	LBB7_77
LBB7_77:                                ;   in Loop: Header=BB7_70 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	LBB7_70
LBB7_78:
	ldr	w9, [sp, #60]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	sub	x10, x29, #58
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #104]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB7_80
	b	LBB7_79
LBB7_79:
	bl	___stack_chk_fail
LBB7_80:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #224
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
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
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
	cbnz	x8, LBB8_2
	b	LBB8_1
LBB8_1:
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB8_2:
	ldr	x8, [sp, #80]
	cbnz	x8, LBB8_4
	b	LBB8_3
LBB8_3:
	adrp	x0, l_.str.30@PAGE
	add	x0, x0, l_.str.30@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB8_4:
	b	LBB8_5
LBB8_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x2, [sp, #80]
	add	x0, sp, #100
	mov	w1, #100
	bl	_fgets
	cbz	x0, LBB8_9
	b	LBB8_6
LBB8_6:                                 ;   in Loop: Header=BB8_5 Depth=1
	add	x0, sp, #100
	mov	w1, #35
	bl	_strchr
	cbz	x0, LBB8_8
	b	LBB8_7
LBB8_7:                                 ;   in Loop: Header=BB8_5 Depth=1
	b	LBB8_5
LBB8_8:                                 ;   in Loop: Header=BB8_5 Depth=1
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
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	_sscanf
	ldr	w8, [sp, #76]
	add	w8, w8, #1
	str	w8, [sp, #76]
	ldr	w8, [sp, #72]
	add	w8, w8, #1
	str	w8, [sp, #72]
	b	LBB8_5
LBB8_9:
	b	LBB8_10
LBB8_10:
	ldr	x0, [sp, #80]
	bl	_fclose
	ldr	x8, [sp, #64]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB8_12
	b	LBB8_11
LBB8_11:
	bl	___stack_chk_fail
LBB8_12:
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
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
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
	cbnz	x8, LBB9_2
	b	LBB9_1
LBB9_1:
	adrp	x0, l_.str.29@PAGE
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB9_2:
	ldr	x8, [sp, #48]
	cbnz	x8, LBB9_4
	b	LBB9_3
LBB9_3:
	adrp	x0, l_.str.32@PAGE
	add	x0, x0, l_.str.32@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB9_4:
	b	LBB9_5
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x2, [sp, #48]
	add	x0, sp, #68
	mov	w1, #100
	bl	_fgets
	cbz	x0, LBB9_9
	b	LBB9_6
LBB9_6:                                 ;   in Loop: Header=BB9_5 Depth=1
	add	x0, sp, #68
	mov	w1, #35
	bl	_strchr
	cbz	x0, LBB9_8
	b	LBB9_7
LBB9_7:                                 ;   in Loop: Header=BB9_5 Depth=1
	b	LBB9_5
LBB9_8:                                 ;   in Loop: Header=BB9_5 Depth=1
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
	adrp	x1, l_.str.33@PAGE
	add	x1, x1, l_.str.33@PAGEOFF
	bl	_sscanf
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB9_5
LBB9_9:
	ldr	x0, [sp, #48]
	bl	_fclose
	ldr	x8, [sp, #40]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB9_11
	b	LBB9_10
LBB9_10:
	bl	___stack_chk_fail
LBB9_11:
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
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #4
	b.eq	LBB10_2
	b	LBB10_1
LBB10_1:
	adrp	x0, l_.str.34@PAGE
	add	x0, x0, l_.str.34@PAGEOFF
	bl	_printf
	b	LBB10_6
LBB10_2:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_validMonth
	tbnz	w0, #0, LBB10_4
	b	LBB10_3
LBB10_3:
	adrp	x0, l_.str.35@PAGE
	add	x0, x0, l_.str.35@PAGEOFF
	bl	_printf
	mov	w0, #1
	bl	_exit
LBB10_4:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	_cronfile
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	_estimeFile
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	_amountofLines
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x2, w8
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #8]
	bl	_convert
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	_cronfile
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	_estimeFile
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	_amountofLines
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x2, w8
	ldur	x8, [x29, #-16]
	ldr	x3, [x8, #8]
	bl	_convert
	bl	_free
	b	LBB10_5
LBB10_5:
	b	LBB10_6
LBB10_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
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
	.asciz	"r"

l_.str.8:                               ; @.str.8
	.asciz	"jan"

l_.str.9:                               ; @.str.9
	.asciz	"feb"

l_.str.10:                              ; @.str.10
	.asciz	"mar"

l_.str.11:                              ; @.str.11
	.asciz	"apr"

l_.str.12:                              ; @.str.12
	.asciz	"may"

l_.str.13:                              ; @.str.13
	.asciz	"jun"

l_.str.14:                              ; @.str.14
	.asciz	"jul"

l_.str.15:                              ; @.str.15
	.asciz	"aug"

l_.str.16:                              ; @.str.16
	.asciz	"oct"

l_.str.17:                              ; @.str.17
	.asciz	"sep"

l_.str.18:                              ; @.str.18
	.asciz	"nov"

l_.str.19:                              ; @.str.19
	.asciz	"dec"

	.section	__DATA,__const
	.p2align	3                               ; @__const.validMonth.months
l___const.validMonth.months:
	.quad	l_.str.8
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

	.section	__TEXT,__cstring,cstring_literals
l_.str.20:                              ; @.str.20
	.asciz	"10"

l_.str.21:                              ; @.str.21
	.asciz	"Error: unable to make time using mktime\n"

l_.str.22:                              ; @.str.22
	.asciz	"%w"

l_.str.23:                              ; @.str.23
	.asciz	"%d"

l_.str.24:                              ; @.str.24
	.asciz	"malloc failed"

l_.str.25:                              ; @.str.25
	.asciz	"*"

l_.str.26:                              ; @.str.26
	.asciz	"invalid date for %s\n"

l_.str.27:                              ; @.str.27
	.asciz	"Unable to run program, please enter a matching set of crontab and estim files and make sure there in the right order!!\n"

l_.str.28:                              ; @.str.28
	.asciz	"%s\t%d\t0\n"

l_.str.29:                              ; @.str.29
	.asciz	"Cannot allocate the required bytes of memory\n"

l_.str.30:                              ; @.str.30
	.asciz	"Error Opening File: crontab-file\n"

l_.str.31:                              ; @.str.31
	.asciz	"%s %s %s %s %s %s"

l_.str.32:                              ; @.str.32
	.asciz	"Error Opening File: estim-file\n"

l_.str.33:                              ; @.str.33
	.asciz	"%s %d"

l_.str.34:                              ; @.str.34
	.asciz	"Usage: ./estimatecron <month> <crontab-file> <estimates-file>\n"

l_.str.35:                              ; @.str.35
	.asciz	"Please input a valid month, 0->11 or jan->dec!!\n"

.subsections_via_symbols
