opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	dw 0x3f72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_command
	FNCALL	_main,_output
	FNCALL	_main,_delay
	FNCALL	_initial,_command
	FNCALL	_output,_data
	FNCALL	_delay,___wmul
	FNROOT	_main
	global	_PORTB
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TMR0
_TMR0	set	1
	global	_RB0
_RB0	set	48
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TMR0IF
_TMR0IF	set	90
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_BRGH
_BRGH	set	1218
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	73	;'I'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_3:	
	retlw	70	;'F'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_1:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_4:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_5:	
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_6:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"USART_BT_1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_command
?_command:	; 0 bytes @ 0x0
	global	??_command
??_command:	; 0 bytes @ 0x0
	global	?_data
?_data:	; 0 bytes @ 0x0
	global	??_data
??_data:	; 0 bytes @ 0x0
	global	?_output
?_output:	; 0 bytes @ 0x0
	global	?_initial
?_initial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
	global	command@y
command@y:	; 1 bytes @ 0x1
	global	data@z
data@z:	; 1 bytes @ 0x1
	ds	1
	global	??_output
??_output:	; 0 bytes @ 0x2
	global	??_initial
??_initial:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	output@value
output@value:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?_delay
?_delay:	; 0 bytes @ 0x6
	global	delay@n
delay@n:	; 2 bytes @ 0x6
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x8
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
;;Data sizes: Strings 52, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; output@value	PTR unsigned char  size(1) Largest target is 17
;;		 -> STR_6(CODE[5]), STR_5(CODE[6]), STR_4(CODE[8]), STR_3(CODE[8]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;   _initial->_command
;;   _output->_data
;;   _delay->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     165
;;                            _initial
;;                            _command
;;                             _output
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _initial                                              0     0      0      15
;;                            _command
;; ---------------------------------------------------------------------------------
;; (1) _output                                               2     2      0      45
;;                                              2 COMMON     2     2      0
;;                               _data
;; ---------------------------------------------------------------------------------
;; (2) _data                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                5     3      2      90
;;                                              6 COMMON     5     3      2
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      60
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initial
;;     _command
;;   _command
;;   _output
;;     _data
;;   _delay
;;     ___wmul
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 55 in file "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initial
;;		_command
;;		_output
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	56
	
l1810:	
;USART_BT_1.C: 56: TRISD=0X00;TRISC=0X80;TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	
l1812:	
	movlw	(080h)
	movwf	(135)^080h	;volatile
	
l1814:	
	clrf	(134)^080h	;volatile
	line	57
	
l1816:	
;USART_BT_1.C: 57: PORTC=0X00;PORTD=0X00;PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	
l1818:	
	clrf	(8)	;volatile
	
l1820:	
	clrf	(6)	;volatile
	line	58
	
l1822:	
;USART_BT_1.C: 58: initial();
	fcall	_initial
	line	59
	
l1824:	
;USART_BT_1.C: 59: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	60
	
l1826:	
;USART_BT_1.C: 60: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	61
	
l1828:	
;USART_BT_1.C: 61: BRGH=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	62
	
l1830:	
;USART_BT_1.C: 62: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	63
	
l1832:	
;USART_BT_1.C: 63: command(0x80);
	movlw	(080h)
	fcall	_command
	line	64
	
l1834:	
;USART_BT_1.C: 64: output("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_output
	line	65
	
l1836:	
;USART_BT_1.C: 65: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	66
	
l1838:	
;USART_BT_1.C: 66: command(0x01);
	movlw	(01h)
	fcall	_command
	line	67
	
l1840:	
;USART_BT_1.C: 67: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	68
	
l1842:	
;USART_BT_1.C: 68: command(0x80);
	movlw	(080h)
	fcall	_command
	line	69
	
l1844:	
;USART_BT_1.C: 69: output("READY TO RECEIVE");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_output
	line	70
	
l1846:	
;USART_BT_1.C: 70: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	71
	
l1848:	
;USART_BT_1.C: 71: command(0x01);
	movlw	(01h)
	fcall	_command
	line	72
;USART_BT_1.C: 72: while(1)
	
l585:	
	line	75
	
l1850:	
;USART_BT_1.C: 73: {
;USART_BT_1.C: 75: if(RCREG=='1')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	031h
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l586
u2170:
	line	76
	
l1852:	
;USART_BT_1.C: 76: {RB0=1;
	bsf	(48/8),(48)&7
	line	77
	
l1854:	
;USART_BT_1.C: 77: command(0x80);
	movlw	(080h)
	fcall	_command
	line	78
	
l1856:	
;USART_BT_1.C: 78: output("FORWARD");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_output
	line	79
	
l1858:	
;USART_BT_1.C: 79: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	80
	
l1860:	
;USART_BT_1.C: 80: command(0x01);
	movlw	(01h)
	fcall	_command
	line	81
;USART_BT_1.C: 81: }
	goto	l587
	line	82
	
l586:	
	
l1862:	
;USART_BT_1.C: 82: else if(RCREG=='2')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	032h
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l588
u2180:
	line	84
	
l1864:	
;USART_BT_1.C: 83: {
;USART_BT_1.C: 84: command(0x80);
	movlw	(080h)
	fcall	_command
	line	85
	
l1866:	
;USART_BT_1.C: 85: output("REVERSE");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_output
	line	86
	
l1868:	
;USART_BT_1.C: 86: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	87
	
l1870:	
;USART_BT_1.C: 87: command(0x01);
	movlw	(01h)
	fcall	_command
	line	88
;USART_BT_1.C: 88: }
	goto	l589
	line	89
	
l588:	
	
l1872:	
;USART_BT_1.C: 89: else if(RCREG=='3')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	033h
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l590
u2190:
	line	91
	
l1874:	
;USART_BT_1.C: 90: {
;USART_BT_1.C: 91: command(0x80);
	movlw	(080h)
	fcall	_command
	line	92
	
l1876:	
;USART_BT_1.C: 92: output("RIGHT");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_output
	line	93
	
l1878:	
;USART_BT_1.C: 93: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	94
	
l1880:	
;USART_BT_1.C: 94: command(0x01);
	movlw	(01h)
	fcall	_command
	line	95
;USART_BT_1.C: 95: }
	goto	l591
	line	96
	
l590:	
	
l1882:	
;USART_BT_1.C: 96: else if(RCREG=='4')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	xorlw	034h
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l592
u2200:
	line	98
	
l1884:	
;USART_BT_1.C: 97: {
;USART_BT_1.C: 98: command(0x80);
	movlw	(080h)
	fcall	_command
	line	99
	
l1886:	
;USART_BT_1.C: 99: output("LEFT");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_output
	line	100
	
l1888:	
;USART_BT_1.C: 100: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	101
	
l1890:	
;USART_BT_1.C: 101: command(0x01);
	movlw	(01h)
	fcall	_command
	line	102
	
l592:	
	line	104
	
l591:	
	
l589:	
	
l587:	
	
l593:	
	line	72
	goto	l585
	
l594:	
	line	105
	
l595:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initial
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _initial *****************
;; Defined at:
;;		line 46 in file "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	line	46
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	47
	
l1808:	
;USART_BT_1.C: 47: command(0x38);
	movlw	(038h)
	fcall	_command
	line	48
;USART_BT_1.C: 48: command(0x01);
	movlw	(01h)
	fcall	_command
	line	49
;USART_BT_1.C: 49: command(0x06);
	movlw	(06h)
	fcall	_command
	line	50
;USART_BT_1.C: 50: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	51
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	_output
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _output *****************
;; Defined at:
;;		line 39 in file "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     PTR unsigned char 
;;		 -> STR_6(5), STR_5(6), STR_4(8), STR_3(8), 
;;		 -> STR_2(17), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMMON] PTR unsigned char 
;;		 -> STR_6(5), STR_5(6), STR_4(8), STR_3(8), 
;;		 -> STR_2(17), STR_1(8), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text103
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	line	39
	global	__size_of_output
	__size_of_output	equ	__end_of_output-_output
	
_output:	
	opt	stack 7
; Regs used in _output: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;output@value stored from wreg
	movwf	(output@value)
	line	40
	
l1800:	
;USART_BT_1.C: 40: while(*value!='\0')
	goto	l576
	
l577:	
	line	41
	
l1802:	
;USART_BT_1.C: 41: {data(*value);
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	42
	
l1804:	
;USART_BT_1.C: 42: value++;
	movlw	(01h)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	addwf	(output@value),f
	line	43
	
l576:	
	line	40
	
l1806:	
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l577
u2160:
	
l578:	
	line	44
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_output
	__end_of_output:
;; =============== function _output ends ============

	signat	_output,4216
	global	_data
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _data *****************
;; Defined at:
;;		line 31 in file "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
;; Parameters:    Size  Location     Type
;;  z               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  z               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_output
;; This function uses a non-reentrant model
;;
psect	text104
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	line	31
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 6
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	
l1790:	
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l1792:	
;USART_BT_1.C: 32: RC0=1;
	bsf	(56/8),(56)&7
	line	33
	
l1794:	
;USART_BT_1.C: 33: RC1=0;
	bcf	(57/8),(57)&7
	line	34
	
l1796:	
;USART_BT_1.C: 34: RC2=1;
	bsf	(58/8),(58)&7
	line	35
;USART_BT_1.C: 35: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u2217:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u2217
	nop2	;nop
	clrwdt
opt asmopt_on

	line	36
	
l1798:	
;USART_BT_1.C: 36: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	37
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:

;; *************** function _command *****************
;; Defined at:
;;		line 21 in file "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text105
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	line	21
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	22
	
l1780:	
;USART_BT_1.C: 22: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	23
	
l1782:	
;USART_BT_1.C: 23: RC0=0;
	bcf	(56/8),(56)&7
	line	24
	
l1784:	
;USART_BT_1.C: 24: RC1=0;
	bcf	(57/8),(57)&7
	line	25
	
l1786:	
;USART_BT_1.C: 25: RC2=1;
	bsf	(58/8),(58)&7
	line	26
;USART_BT_1.C: 26: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u2227:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u2227
	nop2	;nop
	clrwdt
opt asmopt_on

	line	27
	
l1788:	
;USART_BT_1.C: 27: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	28
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
	global	_delay
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:

;; *************** function _delay *****************
;; Defined at:
;;		line 9 in file "C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
;; Parameters:    Size  Location     Type
;;  n               2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text106
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\11.USART_TASKS\3.USART_BT_1\USART_BT_1.C"
	line	9
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l1772:	
;USART_BT_1.C: 10: for(int i=0;i<n*20;i++)
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	goto	l561
	line	11
	
l562:	
	line	12
;USART_BT_1.C: 11: {
;USART_BT_1.C: 12: PS0=1;PS1=1;PS2=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1032/8)^080h,(1032)&7
	bsf	(1033/8)^080h,(1033)&7
	bsf	(1034/8)^080h,(1034)&7
	line	13
;USART_BT_1.C: 13: T0CS=0;
	bcf	(1037/8)^080h,(1037)&7
	line	14
;USART_BT_1.C: 14: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	15
	
l1774:	
;USART_BT_1.C: 15: TMR0=59.6875;
	movlw	(03Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	16
;USART_BT_1.C: 16: while(TMR0IF==0);
	goto	l563
	
l564:	
	
l563:	
	btfss	(90/8),(90)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l564
u2140:
	
l565:	
	line	17
;USART_BT_1.C: 17: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	10
	
l1776:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l561:	
	
l1778:	
	movf	(delay@n+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(delay@n),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(014h)
	movwf	0+(?___wmul)+02h
	movlw	high(014h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(1+(?___wmul)),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u2155
	movf	(0+(?___wmul)),w
	subwf	(delay@i),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l562
u2150:
	
l566:	
	line	19
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	___wmul
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay
;; This function uses a non-reentrant model
;;
psect	text107
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l994:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	line	6
	
l604:	
	line	7
	
l996:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u31
	goto	u30
u31:
	goto	l605
u30:
	line	8
	
l998:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l605:	
	line	9
	movlw	01h
	
u45:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u45
	line	10
	
l1000:	
	movlw	01h
	
u55:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u55
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l604
u60:
	
l606:	
	line	12
	
l1002:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l1004:	
	line	13
	
l607:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
