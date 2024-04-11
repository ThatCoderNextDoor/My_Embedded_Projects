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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	dw 0x3F72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_command
	FNCALL	_main,_output
	FNCALL	_initial,_command
	FNCALL	_output,_data
	FNROOT	_main
	global	_PORTD
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	
STR_2:	
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	85	;'U'
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_6:	
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	33	;'!'
	retlw	0
psect	strings
	
STR_5:	
	retlw	48	;'0'
	retlw	52	;'4'
	retlw	50	;'2'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	57	;'9'
	retlw	55	;'7'
	retlw	55	;'7'
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
	
STR_3:	
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"RUNNING_LCD.as"
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
;;Data sizes: Strings 60, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; output@value	PTR unsigned char  size(1) Largest target is 15
;;		 -> STR_6(CODE[11]), STR_5(CODE[10]), STR_4(CODE[8]), STR_3(CODE[8]), 
;;		 -> STR_2(CODE[15]), STR_1(CODE[8]), 
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
;; (0) _main                                                 5     5      0      75
;;                                              4 COMMON     3     3      0
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
;;COMMON               E      7       7       1       50.0%
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
;;		line 49 in file "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	line	49
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	50
	
l1768:	
;RUNNING_LCD.C: 50: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	51
;RUNNING_LCD.C: 51: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	52
	
l1770:	
;RUNNING_LCD.C: 52: initial();
	fcall	_initial
	line	54
;RUNNING_LCD.C: 53: int i;
;RUNNING_LCD.C: 54: while(1)
	
l576:	
	line	56
	
l1772:	
;RUNNING_LCD.C: 55: {
;RUNNING_LCD.C: 56: command(0x86);
	movlw	(086h)
	fcall	_command
	line	57
	
l1774:	
;RUNNING_LCD.C: 57: output("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_output
	line	58
	
l1776:	
;RUNNING_LCD.C: 58: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2157:
	decfsz	((??_main+0)+0),f
	goto	u2157
	decfsz	((??_main+0)+0+1),f
	goto	u2157
	decfsz	((??_main+0)+0+2),f
	goto	u2157
	nop2
opt asmopt_on

	line	59
	
l1778:	
;RUNNING_LCD.C: 59: command(0x01);
	movlw	(01h)
	fcall	_command
	line	60
	
l1780:	
;RUNNING_LCD.C: 60: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2167:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2167
	nop2	;nop
	clrwdt
opt asmopt_on

	line	61
	
l1782:	
;RUNNING_LCD.C: 61: command(0x81);
	movlw	(081h)
	fcall	_command
	line	62
	
l1784:	
;RUNNING_LCD.C: 62: output("PALANI MURUGAN");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_output
	line	63
	
l1786:	
;RUNNING_LCD.C: 63: command(0xC5);
	movlw	(0C5h)
	fcall	_command
	line	64
	
l1788:	
;RUNNING_LCD.C: 64: output("MEDICAL");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_output
	line	65
	
l1790:	
;RUNNING_LCD.C: 65: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2177:
	decfsz	((??_main+0)+0),f
	goto	u2177
	decfsz	((??_main+0)+0+1),f
	goto	u2177
	decfsz	((??_main+0)+0+2),f
	goto	u2177
	nop2
opt asmopt_on

	line	66
	
l1792:	
;RUNNING_LCD.C: 66: command(0x01);
	movlw	(01h)
	fcall	_command
	line	67
	
l1794:	
;RUNNING_LCD.C: 67: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2187:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2187
	nop2	;nop
	clrwdt
opt asmopt_on

	line	68
	
l1796:	
;RUNNING_LCD.C: 68: command(0x85);
	movlw	(085h)
	fcall	_command
	line	69
	
l1798:	
;RUNNING_LCD.C: 69: output("CONTACT");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_output
	line	70
	
l1800:	
;RUNNING_LCD.C: 70: command(0xC5);
	movlw	(0C5h)
	fcall	_command
	line	71
	
l1802:	
;RUNNING_LCD.C: 71: output("0422 1977");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_output
	line	72
	
l1804:	
;RUNNING_LCD.C: 72: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2197:
	decfsz	((??_main+0)+0),f
	goto	u2197
	decfsz	((??_main+0)+0+1),f
	goto	u2197
	decfsz	((??_main+0)+0+2),f
	goto	u2197
	nop2
opt asmopt_on

	line	73
	
l1806:	
;RUNNING_LCD.C: 73: command(0x01);
	movlw	(01h)
	fcall	_command
	line	74
	
l1808:	
;RUNNING_LCD.C: 74: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2207:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2207
	nop2	;nop
	clrwdt
opt asmopt_on

	line	75
	
l1810:	
;RUNNING_LCD.C: 75: command(0x84);
	movlw	(084h)
	fcall	_command
	line	76
	
l1812:	
;RUNNING_LCD.C: 76: output("THANK YOU!");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_output
	line	77
	
l1814:	
;RUNNING_LCD.C: 77: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	decfsz	((??_main+0)+0+2),f
	goto	u2217
	nop2
opt asmopt_on

	line	78
	
l1816:	
;RUNNING_LCD.C: 78: command(0x01);
	movlw	(01h)
	fcall	_command
	line	79
	
l1818:	
;RUNNING_LCD.C: 79: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2227:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2227
	nop2	;nop
	clrwdt
opt asmopt_on

	line	80
	
l577:	
	line	54
	goto	l576
	
l578:	
	line	81
	
l579:	
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
;;		line 42 in file "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	line	42
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l1766:	
;RUNNING_LCD.C: 43: command(0x38);
	movlw	(038h)
	fcall	_command
	line	44
;RUNNING_LCD.C: 44: command(0x01);
	movlw	(01h)
	fcall	_command
	line	45
;RUNNING_LCD.C: 45: command(0x06);
	movlw	(06h)
	fcall	_command
	line	46
;RUNNING_LCD.C: 46: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	47
	
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
;;		line 35 in file "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     PTR unsigned char 
;;		 -> STR_6(11), STR_5(10), STR_4(8), STR_3(8), 
;;		 -> STR_2(15), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMMON] PTR unsigned char 
;;		 -> STR_6(11), STR_5(10), STR_4(8), STR_3(8), 
;;		 -> STR_2(15), STR_1(8), 
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	line	35
	global	__size_of_output
	__size_of_output	equ	__end_of_output-_output
	
_output:	
	opt	stack 7
; Regs used in _output: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;output@value stored from wreg
	movwf	(output@value)
	
l1758:	
	goto	l567
	
l568:	
	line	36
	
l1760:	
;RUNNING_LCD.C: 36: {data(*value);
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	37
	
l1762:	
;RUNNING_LCD.C: 37: value++;
	movlw	(01h)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	addwf	(output@value),f
	line	38
	
l567:	
	line	35
	
l1764:	
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
	line	39
	
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
;;		line 27 in file "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	line	27
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 6
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	
l1748:	
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	28
	
l1750:	
;RUNNING_LCD.C: 28: RC0=1;
	bsf	(56/8),(56)&7
	line	29
	
l1752:	
;RUNNING_LCD.C: 29: RC1=0;
	bcf	(57/8),(57)&7
	line	30
	
l1754:	
;RUNNING_LCD.C: 30: RC2=1;
	bsf	(58/8),(58)&7
	line	31
;RUNNING_LCD.C: 31: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u2237:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u2237
	nop2	;nop
	clrwdt
opt asmopt_on

	line	32
	
l1756:	
;RUNNING_LCD.C: 32: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	33
	
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
;;		line 17 in file "C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\33.RUNNING_LCD\RUNNING_LCD.C"
	line	17
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	18
	
l1738:	
;RUNNING_LCD.C: 18: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	19
	
l1740:	
;RUNNING_LCD.C: 19: RC0=0;
	bcf	(56/8),(56)&7
	line	20
	
l1742:	
;RUNNING_LCD.C: 20: RC1=0;
	bcf	(57/8),(57)&7
	line	21
	
l1744:	
;RUNNING_LCD.C: 21: RC2=1;
	bsf	(58/8),(58)&7
	line	22
;RUNNING_LCD.C: 22: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u2247:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u2247
	nop2	;nop
	clrwdt
opt asmopt_on

	line	23
	
l1746:	
;RUNNING_LCD.C: 23: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	24
	
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
