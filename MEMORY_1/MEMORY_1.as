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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	dw 0x3f72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_command
	FNCALL	_main,_output
	FNCALL	_main,_keypad
	FNCALL	_output,_data
	FNCALL	_keypad,_data
	FNCALL	_initial,_command
	FNROOT	_main
	global	main@F523
	global	main@F525
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	67

;initializer for main@F523
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	line	68

;initializer for main@F525
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	global	_d
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
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
	
STR_1:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	0
psect	strings
STR_2	equ	STR_3+2
	file	"MEMORY_1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_d:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	67
main@F523:
       ds      4

psect	dataBANK0
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	68
main@F525:
       ds      4

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+8)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	global	?_initial
?_initial:	; 0 bytes @ 0x0
	global	?_data
?_data:	; 0 bytes @ 0x0
	global	??_data
??_data:	; 0 bytes @ 0x0
	global	?_output
?_output:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_keypad
?_keypad:	; 1 bytes @ 0x0
	ds	2
	global	command@y
command@y:	; 1 bytes @ 0x2
	global	data@x
data@x:	; 1 bytes @ 0x2
	ds	1
	global	??_initial
??_initial:	; 0 bytes @ 0x3
	global	??_keypad
??_keypad:	; 0 bytes @ 0x3
	global	??_output
??_output:	; 0 bytes @ 0x3
	ds	1
	global	output@value
output@value:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@check_p
main@check_p:	; 4 bytes @ 0x0
	ds	4
	global	main@user_p
main@user_p:	; 4 bytes @ 0x4
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x8
	ds	2
;;Data sizes: Strings 23, constant 0, data 8, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80     10      19
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; output@value	PTR unsigned char  size(1) Largest target is 15
;;		 -> STR_3(CODE[8]), STR_2(CODE[6]), STR_1(CODE[15]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_output
;;   _output->_data
;;   _keypad->_data
;;   _initial->_command
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
;; (0) _main                                                13    13      0     387
;;                                              5 COMMON     3     3      0
;;                                              0 BANK0     10    10      0
;;                            _initial
;;                            _command
;;                             _output
;;                             _keypad
;; ---------------------------------------------------------------------------------
;; (1) _output                                               2     2      0      67
;;                                              3 COMMON     2     2      0
;;                               _data
;; ---------------------------------------------------------------------------------
;; (1) _keypad                                               0     0      0      22
;;                               _data
;; ---------------------------------------------------------------------------------
;; (1) _initial                                              0     0      0      22
;;                            _command
;; ---------------------------------------------------------------------------------
;; (2) _data                                                 3     3      0      22
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              3     3      0      22
;;                                              0 COMMON     3     3      0
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
;;   _keypad
;;     _data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      1D      12        0.0%
;;ABS                  0      0      1B       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      A      13       5       23.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 62 in file "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  user_p          4    4[BANK0 ] unsigned char [4]
;;  check_p         4    0[BANK0 ] unsigned char [4]
;;  i               2    8[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3      10       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initial
;;		_command
;;		_output
;;		_keypad
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	
l2130:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	63
;MEMORY_1.C: 63: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	64
	
l2132:	
;MEMORY_1.C: 64: TRISD=0X07;
	movlw	(07h)
	movwf	(136)^080h	;volatile
	line	65
	
l2134:	
;MEMORY_1.C: 65: PORTB=0X00; PORTC=0X00; PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	
l2136:	
	clrf	(7)	;volatile
	
l2138:	
	clrf	(8)	;volatile
	line	67
;MEMORY_1.C: 67: char check_p[4]={'1','2','3','4'};
	movf	(main@F523+3),w
	movwf	(main@check_p+3)
	movf	(main@F523+2),w
	movwf	(main@check_p+2)
	movf	(main@F523+1),w
	movwf	(main@check_p+1)
	movf	(main@F523),w
	movwf	(main@check_p)

	line	68
;MEMORY_1.C: 68: char user_p[4]={'0','0','0','0'};
	movf	(main@F525+3),w
	movwf	(main@user_p+3)
	movf	(main@F525+2),w
	movwf	(main@user_p+2)
	movf	(main@F525+1),w
	movwf	(main@user_p+1)
	movf	(main@F525),w
	movwf	(main@user_p)

	line	69
;MEMORY_1.C: 69: int i=0;
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	line	70
	
l2140:	
;MEMORY_1.C: 70: initial();
	fcall	_initial
	line	71
;MEMORY_1.C: 71: while(1)
	
l633:	
	line	72
	
l2142:	
;MEMORY_1.C: 72: { command(0X80);
	movlw	(080h)
	fcall	_command
	line	73
	
l2144:	
;MEMORY_1.C: 73: output("Enter Password");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_output
	line	74
	
l2146:	
;MEMORY_1.C: 74: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2787:
	decfsz	((??_main+0)+0),f
	goto	u2787
	decfsz	((??_main+0)+0+1),f
	goto	u2787
	nop2
opt asmopt_on

	line	75
	
l2148:	
;MEMORY_1.C: 75: command(0x01);
	movlw	(01h)
	fcall	_command
	line	76
;MEMORY_1.C: 76: while(i<=5)
	goto	l634
	
l635:	
	line	78
;MEMORY_1.C: 77: {
;MEMORY_1.C: 78: while(d=='\0')
	goto	l636
	
l637:	
	line	79
	
l2150:	
;MEMORY_1.C: 79: {d=keypad();
	fcall	_keypad
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	line	80
	
l636:	
	line	78
	
l2152:	
	movf	(_d),w
	skipz
	goto	u2710
	goto	l637
u2710:
	
l638:	
	line	81
	
l2154:	
;MEMORY_1.C: 80: }
;MEMORY_1.C: 81: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2797:
	decfsz	((??_main+0)+0),f
	goto	u2797
	decfsz	((??_main+0)+0+1),f
	goto	u2797
	nop2
opt asmopt_on

	line	82
	
l2156:	
;MEMORY_1.C: 82: user_p[i]=d;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d),w
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@user_p&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	83
	
l2158:	
;MEMORY_1.C: 83: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	84
	
l2160:	
;MEMORY_1.C: 84: d=keypad();
	fcall	_keypad
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	line	85
	
l2162:	
;MEMORY_1.C: 85: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2807:
	decfsz	((??_main+0)+0),f
	goto	u2807
	decfsz	((??_main+0)+0+1),f
	goto	u2807
	nop2
opt asmopt_on

	line	86
;MEMORY_1.C: 86: while(d=='#')
	goto	l639
	
l640:	
	line	87
	
l2164:	
;MEMORY_1.C: 87: {d=keypad();
	fcall	_keypad
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	line	88
;MEMORY_1.C: 88: break; }
	goto	l641
	
l639:	
	line	86
	
l2166:	
	movf	(_d),w
	xorlw	023h
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l640
u2720:
	
l641:	
	line	89
	
l634:	
	line	76
	
l2168:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(06h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2735
	movlw	low(06h)
	subwf	(main@i),w
u2735:

	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l635
u2730:
	
l642:	
	line	90
	
l2170:	
;MEMORY_1.C: 89: }
;MEMORY_1.C: 90: d='\0';
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_d)
	line	91
	
l2172:	
;MEMORY_1.C: 91: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2817:
	decfsz	((??_main+0)+0),f
	goto	u2817
	decfsz	((??_main+0)+0+1),f
	goto	u2817
	nop2
opt asmopt_on

	line	92
	
l2174:	
;MEMORY_1.C: 92: if(check_p[0]==user_p[0] && check_p[1]==user_p[1] && check_p[2]==user_p[2] && check_p[3]==user_p[3])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@check_p),w
	xorwf	(main@user_p),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l643
u2740:
	
l2176:	
	movf	0+(main@check_p)+01h,w
	xorwf	0+(main@user_p)+01h,w
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l643
u2750:
	
l2178:	
	movf	0+(main@check_p)+02h,w
	xorwf	0+(main@user_p)+02h,w
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l643
u2760:
	
l2180:	
	movf	0+(main@check_p)+03h,w
	xorwf	0+(main@user_p)+03h,w
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l643
u2770:
	line	93
	
l2182:	
;MEMORY_1.C: 93: {command(0X80);
	movlw	(080h)
	fcall	_command
	line	94
	
l2184:	
;MEMORY_1.C: 94: output("VALID");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_output
	line	95
	
l2186:	
;MEMORY_1.C: 95: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2827:
	decfsz	((??_main+0)+0),f
	goto	u2827
	decfsz	((??_main+0)+0+1),f
	goto	u2827
	decfsz	((??_main+0)+0+2),f
	goto	u2827
opt asmopt_on

	line	96
	
l2188:	
;MEMORY_1.C: 96: command(0x01); }
	movlw	(01h)
	fcall	_command
	goto	l644
	line	97
	
l643:	
	line	98
	
l2190:	
;MEMORY_1.C: 97: else
;MEMORY_1.C: 98: { command(0X80);
	movlw	(080h)
	fcall	_command
	line	99
	
l2192:	
;MEMORY_1.C: 99: output("INVALID");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_output
	line	100
	
l2194:	
;MEMORY_1.C: 100: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2837:
	decfsz	((??_main+0)+0),f
	goto	u2837
	decfsz	((??_main+0)+0+1),f
	goto	u2837
	decfsz	((??_main+0)+0+2),f
	goto	u2837
opt asmopt_on

	line	101
	
l2196:	
;MEMORY_1.C: 101: command(0x01); }
	movlw	(01h)
	fcall	_command
	
l644:	
	line	102
	
l645:	
	line	71
	goto	l633
	
l646:	
	line	103
	
l647:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_output
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _output *****************
;; Defined at:
;;		line 56 in file "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     PTR unsigned char 
;;		 -> STR_3(8), STR_2(6), STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  value           1    4[COMMON] PTR unsigned char 
;;		 -> STR_3(8), STR_2(6), STR_1(15), 
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
psect	text157
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	56
	global	__size_of_output
	__size_of_output	equ	__end_of_output-_output
	
_output:	
	opt	stack 7
; Regs used in _output: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;output@value stored from wreg
	movwf	(output@value)
	
l2122:	
	goto	l623
	
l624:	
	line	57
	
l2124:	
;MEMORY_1.C: 57: { data(*value);
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	58
	
l2126:	
;MEMORY_1.C: 58: value++; }
	movlw	(01h)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	addwf	(output@value),f
	
l623:	
	line	56
	
l2128:	
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l624
u2700:
	
l625:	
	line	59
	
l626:	
	return
	opt stack 0
GLOBAL	__end_of_output
	__end_of_output:
;; =============== function _output ends ============

	signat	_output,4216
	global	_keypad
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _keypad *****************
;; Defined at:
;;		line 38 in file "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text158
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	38
	global	__size_of_keypad
	__size_of_keypad	equ	__end_of_keypad-_keypad
	
_keypad:	
	opt	stack 7
; Regs used in _keypad: [wreg+status,2+status,0+pclath+cstack]
	
l2024:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	line	39
;MEMORY_1.C: 39: if(RD3==1){while(RD3);data('*');return '1';}
	btfss	(67/8),(67)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l572
u2460:
	
l2026:	
	goto	l573
	
l574:	
	
l573:	
	btfsc	(67/8),(67)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l574
u2470:
	
l575:	
	
l2028:	
	movlw	(02Ah)
	fcall	_data
	
l2030:	
	movlw	(031h)
	
l2032:	
	goto	l576
	
l572:	
	line	40
;MEMORY_1.C: 40: if(RD4==1){while(RD4);data('*');return '4';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l577
u2480:
	
l2034:	
	goto	l578
	
l579:	
	
l578:	
	btfsc	(68/8),(68)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l579
u2490:
	
l580:	
	
l2036:	
	movlw	(02Ah)
	fcall	_data
	
l2038:	
	movlw	(034h)
	
l2040:	
	goto	l576
	
l577:	
	line	41
;MEMORY_1.C: 41: if(RD5==1){while(RD5);data('*');return '7';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(69/8),(69)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l581
u2500:
	
l2042:	
	goto	l582
	
l583:	
	
l582:	
	btfsc	(69/8),(69)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l583
u2510:
	
l584:	
	
l2044:	
	movlw	(02Ah)
	fcall	_data
	
l2046:	
	movlw	(037h)
	
l2048:	
	goto	l576
	
l581:	
	line	42
;MEMORY_1.C: 42: if(RD6==1){while(RD6);data('*');return '*';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l585
u2520:
	
l2050:	
	goto	l586
	
l587:	
	
l586:	
	btfsc	(70/8),(70)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l587
u2530:
	
l588:	
	
l2052:	
	movlw	(02Ah)
	fcall	_data
	
l2054:	
	movlw	(02Ah)
	
l2056:	
	goto	l576
	
l585:	
	line	43
;MEMORY_1.C: 43: RD0=0;RD1=1;RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	line	44
;MEMORY_1.C: 44: if(RD3==1){while(RD3);data('*');return '2';}
	btfss	(67/8),(67)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l589
u2540:
	
l2058:	
	goto	l590
	
l591:	
	
l590:	
	btfsc	(67/8),(67)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l591
u2550:
	
l592:	
	
l2060:	
	movlw	(02Ah)
	fcall	_data
	
l2062:	
	movlw	(032h)
	
l2064:	
	goto	l576
	
l589:	
	line	45
;MEMORY_1.C: 45: if(RD4==1){while(RD4);data('*');return '5';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l593
u2560:
	
l2066:	
	goto	l594
	
l595:	
	
l594:	
	btfsc	(68/8),(68)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l595
u2570:
	
l596:	
	
l2068:	
	movlw	(02Ah)
	fcall	_data
	
l2070:	
	movlw	(035h)
	
l2072:	
	goto	l576
	
l593:	
	line	46
;MEMORY_1.C: 46: if(RD5==1){while(RD5);data('*');return '8';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(69/8),(69)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l597
u2580:
	
l2074:	
	goto	l598
	
l599:	
	
l598:	
	btfsc	(69/8),(69)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l599
u2590:
	
l600:	
	
l2076:	
	movlw	(02Ah)
	fcall	_data
	
l2078:	
	movlw	(038h)
	
l2080:	
	goto	l576
	
l597:	
	line	47
;MEMORY_1.C: 47: if(RD6==1){while(RD6);data('*');return '0';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l601
u2600:
	
l2082:	
	goto	l602
	
l603:	
	
l602:	
	btfsc	(70/8),(70)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l603
u2610:
	
l604:	
	
l2084:	
	movlw	(02Ah)
	fcall	_data
	
l2086:	
	movlw	(030h)
	
l2088:	
	goto	l576
	
l601:	
	line	48
;MEMORY_1.C: 48: RD0=0;RD1=0;RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	line	49
;MEMORY_1.C: 49: if(RD3==1){while(RD3);data('*');return '3';}
	btfss	(67/8),(67)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l605
u2620:
	
l2090:	
	goto	l606
	
l607:	
	
l606:	
	btfsc	(67/8),(67)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l607
u2630:
	
l608:	
	
l2092:	
	movlw	(02Ah)
	fcall	_data
	
l2094:	
	movlw	(033h)
	
l2096:	
	goto	l576
	
l605:	
	line	50
;MEMORY_1.C: 50: if(RD4==1){while(RD4);data('*');return '6';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l609
u2640:
	
l2098:	
	goto	l610
	
l611:	
	
l610:	
	btfsc	(68/8),(68)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l611
u2650:
	
l612:	
	
l2100:	
	movlw	(02Ah)
	fcall	_data
	
l2102:	
	movlw	(036h)
	
l2104:	
	goto	l576
	
l609:	
	line	51
;MEMORY_1.C: 51: if(RD5==1){while(RD5);data('*');return '9';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(69/8),(69)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l613
u2660:
	
l2106:	
	goto	l614
	
l615:	
	
l614:	
	btfsc	(69/8),(69)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l615
u2670:
	
l616:	
	
l2108:	
	movlw	(02Ah)
	fcall	_data
	
l2110:	
	movlw	(039h)
	
l2112:	
	goto	l576
	
l613:	
	line	52
;MEMORY_1.C: 52: if(RD6==1){while(RD6);data('*');return '#';}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(70/8),(70)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l617
u2680:
	
l2114:	
	goto	l618
	
l619:	
	
l618:	
	btfsc	(70/8),(70)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l619
u2690:
	
l620:	
	
l2116:	
	movlw	(02Ah)
	fcall	_data
	
l2118:	
	movlw	(023h)
	
l2120:	
	goto	l576
	
l617:	
	line	53
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_keypad
	__end_of_keypad:
;; =============== function _keypad ends ============

	signat	_keypad,89
	global	_initial
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _initial *****************
;; Defined at:
;;		line 23 in file "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
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
psect	text159
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	23
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l2022:	
;MEMORY_1.C: 24: command(0X38);
	movlw	(038h)
	fcall	_command
	line	25
;MEMORY_1.C: 25: command(0X01);
	movlw	(01h)
	fcall	_command
	line	26
;MEMORY_1.C: 26: command(0X06);
	movlw	(06h)
	fcall	_command
	line	27
;MEMORY_1.C: 27: command(0X0C);}
	movlw	(0Ch)
	fcall	_command
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	_data
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _data *****************
;; Defined at:
;;		line 30 in file "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keypad
;;		_output
;; This function uses a non-reentrant model
;;
psect	text160
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	30
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 6
; Regs used in _data: [wreg]
;data@x stored from wreg
	movwf	(data@x)
	
l2012:	
	movf	(data@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	31
	
l2014:	
;MEMORY_1.C: 31: RC0=1;
	bsf	(56/8),(56)&7
	line	32
	
l2016:	
;MEMORY_1.C: 32: RC1=0;
	bcf	(57/8),(57)&7
	line	33
	
l2018:	
;MEMORY_1.C: 33: RC2=1;
	bsf	(58/8),(58)&7
	line	34
;MEMORY_1.C: 34: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_data+0)+0+1),f
	movlw	221
movwf	((??_data+0)+0),f
u2847:
	decfsz	((??_data+0)+0),f
	goto	u2847
	decfsz	((??_data+0)+0+1),f
	goto	u2847
	nop2
opt asmopt_on

	line	35
	
l2020:	
;MEMORY_1.C: 35: RC2=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _command *****************
;; Defined at:
;;		line 17 in file "C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    2[COMMON] unsigned char 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text161
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\9.MEMORY_TASKS\MEMORY_1\MEMORY_1.C"
	line	17
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	
l2002:	
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	18
	
l2004:	
;MEMORY_1.C: 18: RC0=0;
	bcf	(56/8),(56)&7
	line	19
	
l2006:	
;MEMORY_1.C: 19: RC1=0;
	bcf	(57/8),(57)&7
	line	20
	
l2008:	
;MEMORY_1.C: 20: RC2=1;
	bsf	(58/8),(58)&7
	line	21
;MEMORY_1.C: 21: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_command+0)+0+1),f
	movlw	221
movwf	((??_command+0)+0),f
u2857:
	decfsz	((??_command+0)+0),f
	goto	u2857
	decfsz	((??_command+0)+0+1),f
	goto	u2857
	nop2
opt asmopt_on

	line	22
	
l2010:	
;MEMORY_1.C: 22: RC2=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l563:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
