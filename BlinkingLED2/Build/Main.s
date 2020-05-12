	.file	"Main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ConfigurePins,"ax",@progbits
.global	ConfigurePins
	.type	ConfigurePins, @function
ConfigurePins:
.LFB6:
	.file 1 "D:\\Benutzer\\sct\\Documents\\Schule\\M242\\Source\\avr\\BlinkingLED1\\Build\\Main.c"
	.loc 1 16 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 17 0
	ldi r24,lo8(24)
	out 0x4,r24
	.loc 1 18 0
	ldi r24,lo8(8)
	out 0x5,r24
	ret
	.cfi_endproc
.LFE6:
	.size	ConfigurePins, .-ConfigurePins
	.section	.text.ConfigureTimerCounter,"ax",@progbits
.global	ConfigureTimerCounter
	.type	ConfigureTimerCounter, @function
ConfigureTimerCounter:
.LFB7:
	.loc 1 23 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 25 0
	ldi r24,lo8(2)
	out 0x24,r24
	.loc 1 26 0
	ldi r25,lo8(5)
	out 0x25,r25
	.loc 1 28 0
	ldi r25,lo8(41)
	out 0x27,r25
	.loc 1 31 0
	ldi r30,lo8(-80)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 32 0
	ldi r25,lo8(7)
	std Z+1,r25
	.loc 1 35 0
	sts 110,r24
	.loc 1 36 0
	ldi r24,lo8(1)
	sts 112,r24
	ret
	.cfi_endproc
.LFE7:
	.size	ConfigureTimerCounter, .-ConfigureTimerCounter
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 40 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 41 0
	ldi r22,lo8(-112)
	ldi r23,lo8(-48)
	ldi r24,lo8(3)
	ldi r25,0
	call Usart_Init
.LVL0:
	.loc 1 45 0
	ldi r24,lo8(1)
	ldi r25,0
	call Usart_Trace0
.LVL1:
	.loc 1 47 0
	call ConfigurePins
.LVL2:
	.loc 1 48 0
	call ConfigureTimerCounter
.LVL3:
.L4:
	rjmp .L4
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.text.__vector_9,"ax",@progbits
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
.LFB9:
	.loc 1 59 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 61 0
	sbi 0xb,6
.LVL4:
.LBB6:
.LBB7:
	.file 2 "d:\\benutzer\\sct\\documents\\schule\\m242\\source\\avr\\toolchain\\avr8-gnu-toolchain-win32_x86\\avr\\include\\util\\delay.h"
	.loc 2 276 0
	ldi r24,lo8(1999)
	ldi r25,hi8(1999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL5:
.LBE7:
.LBE6:
	.loc 1 63 0
	cbi 0xb,6
	.loc 1 65 0
	ldi r24,lo8(2)
	ldi r25,0
	call Usart_Trace0
.LVL6:
/* epilogue start */
	.loc 1 66 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE9:
	.size	__vector_9, .-__vector_9
	.section	.text.__vector_14,"ax",@progbits
.global	__vector_14
	.type	__vector_14, @function
__vector_14:
.LFB10:
	.loc 1 70 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 72 0
	sbi 0xb,7
.LVL7:
.LBB8:
.LBB9:
	.loc 2 276 0
	ldi r24,lo8(1999)
	ldi r25,hi8(1999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL8:
.LBE9:
.LBE8:
	.loc 1 74 0
	cbi 0xb,7
	.loc 1 76 0
	ldi r24,lo8(3)
	ldi r25,0
	call Usart_Trace0
.LVL9:
/* epilogue start */
	.loc 1 77 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE10:
	.size	__vector_14, .-__vector_14
	.text
.Letext0:
	.file 3 "d:\\benutzer\\sct\\documents\\schule\\m242\\source\\avr\\toolchain\\avr8-gnu-toolchain-win32_x86\\avr\\include\\stdint.h"
	.file 4 "D:\\Benutzer\\sct\\Documents\\Schule\\M242\\Source\\avr\\ToolChain\\AvrLib\\include/Atmega328P.h"
	.file 5 "D:\\Benutzer\\sct\\Documents\\Schule\\M242\\Source\\avr\\ToolChain\\AvrLib\\include/avrlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x395
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0xc
	.long	.LASF51
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
	.byte	0x7e
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x82
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0x4
	.byte	0x9e
	.long	0xaa
	.uleb128 0x6
	.string	"PIN"
	.byte	0x4
	.byte	0xa0
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"DDR"
	.byte	0x4
	.byte	0xa1
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF9
	.byte	0x4
	.byte	0xa2
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.long	0x2c
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0xa3
	.long	0x73
	.uleb128 0x9
	.byte	0x1
	.long	0x37
	.byte	0x4
	.byte	0xe1
	.long	0xd3
	.uleb128 0xa
	.long	.LASF11
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF14
	.byte	0x5
	.byte	0x4
	.byte	0xec
	.long	0x126
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0xee
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF16
	.byte	0x4
	.byte	0xef
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0xf0
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.byte	0xf1
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.byte	0xf2
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0xf3
	.long	0xd3
	.uleb128 0xb
	.byte	0x1
	.long	0x37
	.byte	0x4
	.word	0x113
	.long	0x157
	.uleb128 0xa
	.long	.LASF21
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x2
	.uleb128 0xa
	.long	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	0x37
	.byte	0x4
	.word	0x143
	.long	0x1b3
	.uleb128 0xa
	.long	.LASF25
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.uleb128 0xa
	.long	.LASF28
	.byte	0x3
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.uleb128 0xa
	.long	.LASF33
	.byte	0x3
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	0x37
	.byte	0x5
	.byte	0x1a
	.long	0x1cc
	.uleb128 0xa
	.long	.LASF38
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF40
	.uleb128 0xc
	.long	.LASF52
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x20f
	.uleb128 0xd
	.long	.LASF53
	.byte	0x2
	.byte	0xff
	.long	0x20f
	.uleb128 0xe
	.long	.LASF41
	.byte	0x2
	.word	0x101
	.long	0x20f
	.uleb128 0xe
	.long	.LASF42
	.byte	0x2
	.word	0x105
	.long	0x53
	.uleb128 0xf
	.byte	0x1
	.long	.LASF54
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF43
	.uleb128 0x10
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x3e
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2ae
	.uleb128 0x12
	.long	.LVL0
	.long	0x37e
	.long	0x283
	.uleb128 0x13
	.byte	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0xc
	.long	0x3d090
	.byte	0
	.uleb128 0x12
	.long	.LVL1
	.long	0x38b
	.long	0x29b
	.uleb128 0x13
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.long	.LVL2
	.long	0x216
	.uleb128 0x14
	.long	.LVL3
	.long	0x22c
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.byte	0x1
	.long	0x316
	.uleb128 0x16
	.long	0x1d3
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x3e
	.long	0x301
	.uleb128 0x17
	.long	0x1e0
	.long	.LLST1
	.uleb128 0x18
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x19
	.long	0x1eb
	.long	.LLST2
	.uleb128 0x19
	.long	0x1f7
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL6
	.long	0x38b
	.uleb128 0x13
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST4
	.byte	0x1
	.long	0x37e
	.uleb128 0x16
	.long	0x1d3
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x49
	.long	0x369
	.uleb128 0x17
	.long	0x1e0
	.long	.LLST5
	.uleb128 0x18
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x19
	.long	0x1eb
	.long	.LLST6
	.uleb128 0x19
	.long	0x1f7
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL9
	.long	0x38b
	.uleb128 0x13
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.long	.LASF48
	.long	.LASF48
	.byte	0x5
	.byte	0x8e
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.long	.LASF49
	.long	.LASF49
	.byte	0x5
	.byte	0x94
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB9
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43fa0000
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x45fa0000
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x4
	.byte	0xa
	.word	0x1f40
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LFB10
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI27
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43fa0000
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x45fa0000
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xa
	.word	0x1f40
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"CS_Off"
.LASF34:
	.string	"CsT2_Div64"
.LASF26:
	.string	"CS_Div1"
.LASF37:
	.string	"CsT2_Div1024"
.LASF24:
	.string	"FastPwm"
.LASF27:
	.string	"CS_Div8"
.LASF35:
	.string	"CsT2_Div128"
.LASF15:
	.string	"TCCRA"
.LASF53:
	.string	"__us"
.LASF54:
	.string	"__builtin_avr_delay_cycles"
.LASF29:
	.string	"CsT1_Div256"
.LASF18:
	.string	"OCRA"
.LASF19:
	.string	"OCRB"
.LASF49:
	.string	"Usart_Trace0"
.LASF47:
	.string	"__vector_14"
.LASF14:
	.string	"TCNT8_T_tag"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"True"
.LASF21:
	.string	"Normal"
.LASF50:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF6:
	.string	"long unsigned int"
.LASF32:
	.string	"CsT1_T0Raising"
.LASF45:
	.string	"ConfigureTimerCounter"
.LASF38:
	.string	"False"
.LASF43:
	.string	"double"
.LASF55:
	.string	"main"
.LASF31:
	.string	"CsT1_T0Falling"
.LASF44:
	.string	"ConfigurePins"
.LASF2:
	.string	"unsigned int"
.LASF52:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF16:
	.string	"TCCRB"
.LASF11:
	.string	"DdrInput"
.LASF48:
	.string	"Usart_Init"
.LASF33:
	.string	"CsT2_Div32"
.LASF22:
	.string	"PwmNormal"
.LASF40:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"TCNT"
.LASF9:
	.string	"PORT"
.LASF36:
	.string	"CsT2_Div256"
.LASF13:
	.string	"GPIO_T_tag"
.LASF42:
	.string	"__ticks_dc"
.LASF30:
	.string	"CsT1_Div1024"
.LASF4:
	.string	"uint8_t"
.LASF10:
	.string	"GPIO_T"
.LASF41:
	.string	"__tmp"
.LASF5:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF46:
	.string	"__vector_9"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"TCNT8_T"
.LASF28:
	.string	"CsT1_Div64"
.LASF51:
	.string	"D:\\Benutzer\\sct\\Documents\\Schule\\M242\\Source\\avr\\BlinkingLED1\\Build\\Main.c"
.LASF12:
	.string	"DdrOutput"
.LASF23:
	.string	"ClrTmrOnCmpMatch"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
