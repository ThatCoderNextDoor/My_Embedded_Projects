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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	dw 0x3f72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_command
	FNCALL	_main,_output
	FNCALL	_initial,_command
	FNCALL	_output,_data
	FNROOT	_main
	global	_PORTB
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
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
	
STR_3:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_1:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
STR_2	equ	STR_1+0
STR_4	equ	STR_3+0
	file	"WATER_TANK1.as"
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
	ds	1
	global	output@value
output@value:	; 1 bytes @ 0x3
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	3
	global	main@x
main@x:	; 2 bytes @ 0x7
	ds	2
;;Data sizes: Strings 19, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; output@value	PTR unsigned char  size(1) Largest target is 10
;;		 -> STR_4(CODE[10]), STR_3(CODE[10]), STR_2(CODE[9]), STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_output
;;   _initial->_command
;;   _output->_data
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0      90
;;                                              4 COMMON     5     5      0
;;                            _initial
;;                            _command
;;                             _output
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
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initial
;;     _command
;;   _command
;;   _output
;;     _data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       9       1       64.3%
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
;;		line 44 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    7[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initial
;;		_command
;;		_output
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	45
	
l1775:	
;WATER_TANK1.C: 45: TRISB=0X03;PORTB=0X00;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l1777:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	46
	
l1779:	
;WATER_TANK1.C: 46: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	47
	
l1781:	
;WATER_TANK1.C: 47: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	49
	
l1783:	
;WATER_TANK1.C: 48: int x;
;WATER_TANK1.C: 49: initial();
	fcall	_initial
	line	50
;WATER_TANK1.C: 50: while(1){
	
l576:	
	line	51
	
l1785:	
;WATER_TANK1.C: 51: if(RB0==0 && RB1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l577
u2150:
	
l1787:	
	btfsc	(49/8),(49)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l577
u2160:
	line	52
	
l1789:	
;WATER_TANK1.C: 52: { command(0x01);
	movlw	(01h)
	fcall	_command
	line	53
;WATER_TANK1.C: 53: command(0x80);
	movlw	(080h)
	fcall	_command
	line	54
	
l1791:	
;WATER_TANK1.C: 54: output("MOTOR ON");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_output
	line	55
	
l1793:	
;WATER_TANK1.C: 55: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2227:
	decfsz	((??_main+0)+0),f
	goto	u2227
	decfsz	((??_main+0)+0+1),f
	goto	u2227
	decfsz	((??_main+0)+0+2),f
	goto	u2227
opt asmopt_on

	line	56
	
l1795:	
;WATER_TANK1.C: 56: x=0;
	movlw	low(0)
	movwf	(main@x)
	movlw	high(0)
	movwf	((main@x))+1
	line	57
;WATER_TANK1.C: 57: }
	goto	l578
	line	58
	
l577:	
;WATER_TANK1.C: 58: else if(RB0==1 && RB1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l579
u2170:
	
l1797:	
	btfsc	(49/8),(49)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l579
u2180:
	line	59
	
l1799:	
;WATER_TANK1.C: 59: { if(x==0){
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l580
u2190:
	line	60
	
l1801:	
;WATER_TANK1.C: 60: command(0x01);
	movlw	(01h)
	fcall	_command
	line	61
;WATER_TANK1.C: 61: command(0x80);
	movlw	(080h)
	fcall	_command
	line	62
	
l1803:	
;WATER_TANK1.C: 62: output("MOTOR ON");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_output
	line	63
	
l1805:	
;WATER_TANK1.C: 63: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
	decfsz	((??_main+0)+0+2),f
	goto	u2237
opt asmopt_on

	line	64
;WATER_TANK1.C: 64: }
	goto	l581
	line	65
	
l580:	
	line	67
	
l1807:	
;WATER_TANK1.C: 65: else
;WATER_TANK1.C: 66: {
;WATER_TANK1.C: 67: command(0x01);
	movlw	(01h)
	fcall	_command
	line	68
;WATER_TANK1.C: 68: command(0x80);
	movlw	(080h)
	fcall	_command
	line	69
	
l1809:	
;WATER_TANK1.C: 69: output("MOTOR OFF");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_output
	line	70
	
l1811:	
;WATER_TANK1.C: 70: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	decfsz	((??_main+0)+0+2),f
	goto	u2247
opt asmopt_on

	line	71
	
l581:	
	line	72
;WATER_TANK1.C: 71: }
;WATER_TANK1.C: 72: }
	goto	l582
	line	73
	
l579:	
;WATER_TANK1.C: 73: else if(RB1==1 && RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l583
u2200:
	
l1813:	
	btfss	(48/8),(48)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l583
u2210:
	line	74
	
l1815:	
;WATER_TANK1.C: 74: { command(0x01);
	movlw	(01h)
	fcall	_command
	line	75
;WATER_TANK1.C: 75: command(0x80);
	movlw	(080h)
	fcall	_command
	line	76
	
l1817:	
;WATER_TANK1.C: 76: output("MOTOR OFF");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_output
	line	77
	
l1819:	
;WATER_TANK1.C: 77: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	78
	
l1821:	
;WATER_TANK1.C: 78: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
opt asmopt_on

	line	79
	
l1823:	
;WATER_TANK1.C: 79: x=1;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	line	80
	
l1825:	
;WATER_TANK1.C: 80: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	81
	
l583:	
	line	82
	
l582:	
	
l578:	
	
l584:	
	line	50
	goto	l576
	
l585:	
	line	84
	
l586:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initial
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _initial *****************
;; Defined at:
;;		line 37 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
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
psect	text85
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	line	37
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1773:	
;WATER_TANK1.C: 38: command(0x38);
	movlw	(038h)
	fcall	_command
	line	39
;WATER_TANK1.C: 39: command(0x01);
	movlw	(01h)
	fcall	_command
	line	40
;WATER_TANK1.C: 40: command(0x06);
	movlw	(06h)
	fcall	_command
	line	41
;WATER_TANK1.C: 41: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	42
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	_output
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _output *****************
;; Defined at:
;;		line 30 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     PTR unsigned char 
;;		 -> STR_4(10), STR_3(10), STR_2(9), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMMON] PTR unsigned char 
;;		 -> STR_4(10), STR_3(10), STR_2(9), STR_1(9), 
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
psect	text86
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	line	30
	global	__size_of_output
	__size_of_output	equ	__end_of_output-_output
	
_output:	
	opt	stack 7
; Regs used in _output: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;output@value stored from wreg
	movwf	(output@value)
	line	31
	
l1765:	
;WATER_TANK1.C: 31: while(*value!='\0')
	goto	l567
	
l568:	
	line	33
	
l1767:	
;WATER_TANK1.C: 32: {
;WATER_TANK1.C: 33: data(*value);
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	34
	
l1769:	
;WATER_TANK1.C: 34: value++;}
	movlw	(01h)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	addwf	(output@value),f
	
l567:	
	line	31
	
l1771:	
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l568
u2140:
	
l569:	
	line	35
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_output
	__end_of_output:
;; =============== function _output ends ============

	signat	_output,4216
	global	_data
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _data *****************
;; Defined at:
;;		line 22 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
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
psect	text87
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	line	22
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 6
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	
l1755:	
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	23
	
l1757:	
;WATER_TANK1.C: 23: RC0=1;
	bsf	(56/8),(56)&7
	line	24
	
l1759:	
;WATER_TANK1.C: 24: RC1=0;
	bcf	(57/8),(57)&7
	line	25
	
l1761:	
;WATER_TANK1.C: 25: RC2=1;
	bsf	(58/8),(58)&7
	line	26
;WATER_TANK1.C: 26: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u2267:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u2267
	nop2	;nop
	clrwdt
opt asmopt_on

	line	27
	
l1763:	
;WATER_TANK1.C: 27: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	28
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _command *****************
;; Defined at:
;;		line 12 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
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
psect	text88
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\3.WATER_TANK\WATER_TANK1.C"
	line	12
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	13
	
l1745:	
;WATER_TANK1.C: 13: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	14
	
l1747:	
;WATER_TANK1.C: 14: RC0=0;
	bcf	(56/8),(56)&7
	line	15
	
l1749:	
;WATER_TANK1.C: 15: RC1=0;
	bcf	(57/8),(57)&7
	line	16
	
l1751:	
;WATER_TANK1.C: 16: RC2=1;
	bsf	(58/8),(58)&7
	line	17
;WATER_TANK1.C: 17: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u2277:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u2277
	nop2	;nop
	clrwdt
opt asmopt_on

	line	18
	
l1753:	
;WATER_TANK1.C: 18: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	19
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
