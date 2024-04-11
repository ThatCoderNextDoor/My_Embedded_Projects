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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	dw 0x3F72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_command
	FNCALL	_main,_output
	FNCALL	_main,_choose_party
	FNCALL	_main,_result
	FNCALL	_result,_command
	FNCALL	_result,_output
	FNCALL	_result,_read
	FNCALL	_choose_party,_command
	FNCALL	_choose_party,_output
	FNCALL	_choose_party,_write
	FNCALL	_initial,_command
	FNCALL	_output,_data
	FNROOT	_main
	global	_PORTD
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:
_PORTD	set	8
	global	_EEIF
_EEIF	set	108
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
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
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
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
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	66	;'B'
	retlw	74	;'J'
	retlw	80	;'P'
	retlw	0
psect	strings
	
STR_1:	
	retlw	80	;'P'
	retlw	108	;'l'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	strings
	
STR_12:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	0
psect	strings
	
STR_6:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_9:	
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	33	;'!'
	retlw	0
psect	strings
	
STR_8:	
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	32	;' '
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	32	;' '
	retlw	66	;'B'
	retlw	74	;'J'
	retlw	80	;'P'
	retlw	0
psect	strings
	
STR_14:	
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	112	;'p'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_10:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_15:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_11:	
	retlw	66	;'B'
	retlw	74	;'J'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_13:	
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_7:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_16:	
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_4:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	77	;'M'
	retlw	75	;'K'
	retlw	0
psect	strings
STR_5	equ	STR_8+11
STR_3	equ	STR_4+1
	file	"VOTING_MACHINE.as"
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
	global	?_write
?_write:	; 0 bytes @ 0x0
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
	global	?_choose_party
?_choose_party:	; 0 bytes @ 0x0
	global	?_result
?_result:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_read
?_read:	; 2 bytes @ 0x0
	global	write@dat
write@dat:	; 2 bytes @ 0x0
	ds	1
	global	command@y
command@y:	; 1 bytes @ 0x1
	global	data@z
data@z:	; 1 bytes @ 0x1
	ds	1
	global	??_read
??_read:	; 0 bytes @ 0x2
	global	??_output
??_output:	; 0 bytes @ 0x2
	global	??_initial
??_initial:	; 0 bytes @ 0x2
	global	write@address
write@address:	; 1 bytes @ 0x2
	ds	1
	global	??_write
??_write:	; 0 bytes @ 0x3
	global	output@value
output@value:	; 1 bytes @ 0x3
	ds	1
	global	??_choose_party
??_choose_party:	; 0 bytes @ 0x4
	global	read@d
read@d:	; 2 bytes @ 0x4
	ds	2
	global	read@address
read@address:	; 1 bytes @ 0x6
	ds	1
	global	??_result
??_result:	; 0 bytes @ 0x7
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	result@a
result@a:	; 2 bytes @ 0x0
	ds	2
	global	result@b
result@b:	; 2 bytes @ 0x2
	ds	2
	global	result@c
result@c:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 190, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_read	int  size(1) Largest target is 0
;;
;; output@value	PTR unsigned char  size(1) Largest target is 128
;;		 -> STR_16(CODE[9]), STR_15(CODE[15]), STR_14(CODE[15]), STR_13(CODE[12]), 
;;		 -> STR_12(CODE[16]), STR_11(CODE[14]), STR_10(CODE[15]), STR_9(CODE[15]), 
;;		 -> RAM(NULL[128]), STR_8(CODE[15]), STR_7(CODE[10]), STR_6(CODE[15]), 
;;		 -> STR_5(CODE[4]), STR_4(CODE[5]), STR_3(CODE[4]), STR_2(CODE[17]), 
;;		 -> STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_result
;;   _result->_read
;;   _choose_party->_output
;;   _initial->_command
;;   _output->_data
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_result
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
;; (0) _main                                                 3     3      0     679
;;                                             10 COMMON     3     3      0
;;                            _initial
;;                            _command
;;                             _output
;;                       _choose_party
;;                             _result
;; ---------------------------------------------------------------------------------
;; (1) _result                                               9     9      0     449
;;                                              7 COMMON     3     3      0
;;                                              0 BANK0      6     6      0
;;                            _command
;;                             _output
;;                               _read
;; ---------------------------------------------------------------------------------
;; (1) _choose_party                                         3     3      0     119
;;                                              4 COMMON     3     3      0
;;                            _command
;;                             _output
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _initial                                              0     0      0      22
;;                            _command
;; ---------------------------------------------------------------------------------
;; (2) _output                                               2     2      0      67
;;                                              2 COMMON     2     2      0
;;                               _data
;; ---------------------------------------------------------------------------------
;; (3) _data                                                 2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _command                                              2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _read                                                 7     5      2      24
;;                                              0 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; (2) _write                                                3     0      3      30
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initial
;;     _command
;;   _command
;;   _output
;;     _data
;;   _choose_party
;;     _command
;;     _output
;;       _data
;;     _write
;;   _result
;;     _command
;;     _output
;;       _data
;;     _read
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
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
;;		line 124 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initial
;;		_command
;;		_output
;;		_choose_party
;;		_result
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	124
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2162:	
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l2164:	
	clrf	(136)^080h	;volatile
	
l2166:	
	clrf	(135)^080h	;volatile
	line	125
	
l2168:	
;VOTING_MACHINE.C: 125: initial();
	fcall	_initial
	line	126
	
l2170:	
;VOTING_MACHINE.C: 126: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u2517:
	decfsz	((??_main+0)+0),f
	goto	u2517
	decfsz	((??_main+0)+0+1),f
	goto	u2517
	nop2
opt asmopt_on

	line	127
;VOTING_MACHINE.C: 127: while(RB0!=1 && RB1!=1)
	goto	l610
	
l611:	
	line	129
	
l2172:	
;VOTING_MACHINE.C: 128: {
;VOTING_MACHINE.C: 129: command(0x80);
	movlw	(080h)
	fcall	_command
	line	130
	
l2174:	
;VOTING_MACHINE.C: 130: output("WELCOME TO POLL");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_output
	line	131
	
l2176:	
;VOTING_MACHINE.C: 131: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2527:
	decfsz	((??_main+0)+0),f
	goto	u2527
	decfsz	((??_main+0)+0+1),f
	goto	u2527
	decfsz	((??_main+0)+0+2),f
	goto	u2527
	nop2
opt asmopt_on

	line	132
	
l2178:	
;VOTING_MACHINE.C: 132: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	
l2180:	
	movlw	(080h)
	fcall	_command
	line	133
	
l2182:	
;VOTING_MACHINE.C: 133: output("Waiting for");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_output
	line	134
	
l2184:	
;VOTING_MACHINE.C: 134: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2537:
	decfsz	((??_main+0)+0),f
	goto	u2537
	decfsz	((??_main+0)+0+1),f
	goto	u2537
	nop2
opt asmopt_on

	line	135
;VOTING_MACHINE.C: 135: command(0xC0);
	movlw	(0C0h)
	fcall	_command
	line	136
	
l2186:	
;VOTING_MACHINE.C: 136: output("agent response");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_output
	line	137
	
l2188:	
;VOTING_MACHINE.C: 137: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	28
movwf	((??_main+0)+0+1),f
	movlw	99
movwf	((??_main+0)+0),f
u2547:
	decfsz	((??_main+0)+0),f
	goto	u2547
	decfsz	((??_main+0)+0+1),f
	goto	u2547
	decfsz	((??_main+0)+0+2),f
	goto	u2547
	clrwdt
opt asmopt_on

	line	138
;VOTING_MACHINE.C: 138: while(RB0==1);
	goto	l612
	
l613:	
	
l612:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l613
u2460:
	
l614:	
	line	139
	
l2190:	
;VOTING_MACHINE.C: 139: choose_party();
	fcall	_choose_party
	line	140
	
l2192:	
;VOTING_MACHINE.C: 140: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2557:
	decfsz	((??_main+0)+0),f
	goto	u2557
	decfsz	((??_main+0)+0+1),f
	goto	u2557
	decfsz	((??_main+0)+0+2),f
	goto	u2557
opt asmopt_on

	line	141
	
l2194:	
;VOTING_MACHINE.C: 141: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	
l2196:	
	movlw	(080h)
	fcall	_command
	line	142
	
l2198:	
;VOTING_MACHINE.C: 142: output("Your voting is");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_output
	line	143
;VOTING_MACHINE.C: 143: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2567:
	decfsz	((??_main+0)+0),f
	goto	u2567
	decfsz	((??_main+0)+0+1),f
	goto	u2567
	nop2
opt asmopt_on

	line	144
	
l2200:	
;VOTING_MACHINE.C: 144: command(0xC0);
	movlw	(0C0h)
	fcall	_command
	line	145
	
l2202:	
;VOTING_MACHINE.C: 145: output("received");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_output
	line	146
	
l2204:	
;VOTING_MACHINE.C: 146: _delay((unsigned long)((5000)*(4000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2577:
	decfsz	((??_main+0)+0),f
	goto	u2577
	decfsz	((??_main+0)+0+1),f
	goto	u2577
	decfsz	((??_main+0)+0+2),f
	goto	u2577
opt asmopt_on

	line	147
	
l2206:	
;VOTING_MACHINE.C: 147: command(0x01);
	movlw	(01h)
	fcall	_command
	line	148
	
l610:	
	line	127
	
l2208:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l616
u2470:
	
l2210:	
	btfss	(49/8),(49)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l611
u2480:
	
l616:	
	
l617:	
	line	149
;VOTING_MACHINE.C: 148: }
;VOTING_MACHINE.C: 149: if(RB0==1 && RB1==1)
	btfss	(48/8),(48)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l618
u2490:
	
l2212:	
	btfss	(49/8),(49)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l618
u2500:
	line	150
	
l2214:	
;VOTING_MACHINE.C: 150: { result();}
	fcall	_result
	
l618:	
	line	152
	
l619:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_result
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _result *****************
;; Defined at:
;;		line 94 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               2    4[BANK0 ] int 
;;  b               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
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
;;      Locals:         0       6       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       6       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command
;;		_output
;;		_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	94
	global	__size_of_result
	__size_of_result	equ	__end_of_result-_result
	
_result:	
	opt	stack 7
; Regs used in _result: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l2086:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(result@a)
	movlw	high(0)
	movwf	((result@a))+1
	movlw	low(0)
	movwf	(result@b)
	movlw	high(0)
	movwf	((result@b))+1
	movlw	low(0)
	movwf	(result@c)
	movlw	high(0)
	movwf	((result@c))+1
	line	95
	
l2088:	
;VOTING_MACHINE.C: 95: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	
l2090:	
	movlw	(080h)
	fcall	_command
	line	96
	
l2092:	
;VOTING_MACHINE.C: 96: output("Preparing for ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_output
	line	97
	
l2094:	
;VOTING_MACHINE.C: 97: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_result+0)+0+1),f
	movlw	251
movwf	((??_result+0)+0),f
u2587:
	decfsz	((??_result+0)+0),f
	goto	u2587
	decfsz	((??_result+0)+0+1),f
	goto	u2587
	nop2
opt asmopt_on

	line	98
	
l2096:	
;VOTING_MACHINE.C: 98: command(0xC0);
	movlw	(0C0h)
	fcall	_command
	line	99
	
l2098:	
;VOTING_MACHINE.C: 99: output("   result");_delay((unsigned long)((1000)*(4000000/4000.0)));
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_output
	
l2100:	
	opt asmopt_off
movlw  6
movwf	((??_result+0)+0+2),f
movlw	14
movwf	((??_result+0)+0+1),f
	movlw	176
movwf	((??_result+0)+0),f
u2597:
	decfsz	((??_result+0)+0),f
	goto	u2597
	decfsz	((??_result+0)+0+1),f
	goto	u2597
	decfsz	((??_result+0)+0+2),f
	goto	u2597
opt asmopt_on

	line	100
	
l2102:	
;VOTING_MACHINE.C: 100: a=read(0x0001);
	movlw	(01h)
	fcall	_read
	movf	(1+(?_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(result@a+1)
	addwf	(result@a+1)
	movf	(0+(?_read)),w
	clrf	(result@a)
	addwf	(result@a)

	line	101
	
l2104:	
;VOTING_MACHINE.C: 101: b=read(0x0002);
	movlw	(02h)
	fcall	_read
	movf	(1+(?_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(result@b+1)
	addwf	(result@b+1)
	movf	(0+(?_read)),w
	clrf	(result@b)
	addwf	(result@b)

	line	102
	
l2106:	
;VOTING_MACHINE.C: 102: c=read(0x0003);
	movlw	(03h)
	fcall	_read
	movf	(1+(?_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(result@c+1)
	addwf	(result@c+1)
	movf	(0+(?_read)),w
	clrf	(result@c)
	addwf	(result@c)

	line	103
	
l2108:	
;VOTING_MACHINE.C: 103: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	
l2110:	
	movlw	(080h)
	fcall	_command
	line	104
	
l2112:	
;VOTING_MACHINE.C: 104: output("DMK  ADMK  BJP");_delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_output
	
l2114:	
	opt asmopt_off
movlw	13
movwf	((??_result+0)+0+1),f
	movlw	251
movwf	((??_result+0)+0),f
u2607:
	decfsz	((??_result+0)+0),f
	goto	u2607
	decfsz	((??_result+0)+0+1),f
	goto	u2607
	nop2
opt asmopt_on

	line	105
	
l2116:	
;VOTING_MACHINE.C: 105: command(0xC0);output(a+0x30);_delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	(0C0h)
	fcall	_command
	
l2118:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@a),w
	addlw	low(030h)
	movwf	(??_result+0)+0
	movf	(result@a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(??_result+0)+0
	movf	0+(??_result+0)+0,w
	fcall	_output
	
l2120:	
	opt asmopt_off
movlw	13
movwf	((??_result+0)+0+1),f
	movlw	251
movwf	((??_result+0)+0),f
u2617:
	decfsz	((??_result+0)+0),f
	goto	u2617
	decfsz	((??_result+0)+0+1),f
	goto	u2617
	nop2
opt asmopt_on

	line	106
	
l2122:	
;VOTING_MACHINE.C: 106: command(0xC6);output(b+0x30);_delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	(0C6h)
	fcall	_command
	
l2124:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@b),w
	addlw	low(030h)
	movwf	(??_result+0)+0
	movf	(result@b+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(??_result+0)+0
	movf	0+(??_result+0)+0,w
	fcall	_output
	
l2126:	
	opt asmopt_off
movlw	13
movwf	((??_result+0)+0+1),f
	movlw	251
movwf	((??_result+0)+0),f
u2627:
	decfsz	((??_result+0)+0),f
	goto	u2627
	decfsz	((??_result+0)+0+1),f
	goto	u2627
	nop2
opt asmopt_on

	line	107
	
l2128:	
;VOTING_MACHINE.C: 107: command(0xCB);output(c+0x30);_delay((unsigned long)((10)*(4000000/4000.0)));
	movlw	(0CBh)
	fcall	_command
	
l2130:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@c),w
	addlw	low(030h)
	movwf	(??_result+0)+0
	movf	(result@c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(??_result+0)+0
	movf	0+(??_result+0)+0,w
	fcall	_output
	
l2132:	
	opt asmopt_off
movlw	13
movwf	((??_result+0)+0+1),f
	movlw	251
movwf	((??_result+0)+0),f
u2637:
	decfsz	((??_result+0)+0),f
	goto	u2637
	decfsz	((??_result+0)+0+1),f
	goto	u2637
	nop2
opt asmopt_on

	line	108
	
l2134:	
;VOTING_MACHINE.C: 108: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_result+0)+0+2),f
movlw	28
movwf	((??_result+0)+0+1),f
	movlw	99
movwf	((??_result+0)+0),f
u2647:
	decfsz	((??_result+0)+0),f
	goto	u2647
	decfsz	((??_result+0)+0+1),f
	goto	u2647
	decfsz	((??_result+0)+0+2),f
	goto	u2647
	clrwdt
opt asmopt_on

	line	109
	
l2136:	
;VOTING_MACHINE.C: 109: if(a>b && a>c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@b+1),w
	xorlw	80h
	movwf	(??_result+0)+0
	movf	(result@a+1),w
	xorlw	80h
	subwf	(??_result+0)+0,w
	skipz
	goto	u2405
	movf	(result@a),w
	subwf	(result@b),w
u2405:

	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l602
u2400:
	
l2138:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@c+1),w
	xorlw	80h
	movwf	(??_result+0)+0
	movf	(result@a+1),w
	xorlw	80h
	subwf	(??_result+0)+0,w
	skipz
	goto	u2415
	movf	(result@a),w
	subwf	(result@c),w
u2415:

	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l602
u2410:
	line	111
	
l2140:	
;VOTING_MACHINE.C: 110: {
;VOTING_MACHINE.C: 111: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	112
	
l2142:	
;VOTING_MACHINE.C: 112: output("DMK is winner!");}
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_output
	goto	l603
	line	113
	
l602:	
	
l2144:	
;VOTING_MACHINE.C: 113: else if(b>a && b>c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@a+1),w
	xorlw	80h
	movwf	(??_result+0)+0
	movf	(result@b+1),w
	xorlw	80h
	subwf	(??_result+0)+0,w
	skipz
	goto	u2425
	movf	(result@b),w
	subwf	(result@a),w
u2425:

	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l604
u2420:
	
l2146:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@c+1),w
	xorlw	80h
	movwf	(??_result+0)+0
	movf	(result@b+1),w
	xorlw	80h
	subwf	(??_result+0)+0,w
	skipz
	goto	u2435
	movf	(result@b),w
	subwf	(result@c),w
u2435:

	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l604
u2430:
	line	115
	
l2148:	
;VOTING_MACHINE.C: 114: {
;VOTING_MACHINE.C: 115: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	116
	
l2150:	
;VOTING_MACHINE.C: 116: output("ADMK is winner");}
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_output
	goto	l605
	line	117
	
l604:	
	
l2152:	
;VOTING_MACHINE.C: 117: else if(c>a && c>b){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@a+1),w
	xorlw	80h
	movwf	(??_result+0)+0
	movf	(result@c+1),w
	xorlw	80h
	subwf	(??_result+0)+0,w
	skipz
	goto	u2445
	movf	(result@c),w
	subwf	(result@a),w
u2445:

	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l606
u2440:
	
l2154:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(result@b+1),w
	xorlw	80h
	movwf	(??_result+0)+0
	movf	(result@c+1),w
	xorlw	80h
	subwf	(??_result+0)+0,w
	skipz
	goto	u2455
	movf	(result@c),w
	subwf	(result@b),w
u2455:

	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l606
u2450:
	line	118
	
l2156:	
;VOTING_MACHINE.C: 118: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	119
	
l2158:	
;VOTING_MACHINE.C: 119: output("BJP is winner");}
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_output
	
l606:	
	line	120
	
l605:	
	
l603:	
	
l2160:	
;VOTING_MACHINE.C: 120: command(0x01);
	movlw	(01h)
	fcall	_command
	line	121
	
l607:	
	return
	opt stack 0
GLOBAL	__end_of_result
	__end_of_result:
;; =============== function _result ends ============

	signat	_result,88
	global	_choose_party
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _choose_party *****************
;; Defined at:
;;		line 64 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command
;;		_output
;;		_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	64
	global	__size_of_choose_party
	__size_of_choose_party	equ	__end_of_choose_party-_choose_party
	
_choose_party:	
	opt	stack 7
; Regs used in _choose_party: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	65
	
l2046:	
;VOTING_MACHINE.C: 65: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	66
	
l2048:	
;VOTING_MACHINE.C: 66: output("Pls choose party");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_output
	line	67
	
l2050:	
;VOTING_MACHINE.C: 67: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_choose_party+0)+0+2),f
movlw	42
movwf	((??_choose_party+0)+0+1),f
	movlw	22
movwf	((??_choose_party+0)+0),f
u2657:
	decfsz	((??_choose_party+0)+0),f
	goto	u2657
	decfsz	((??_choose_party+0)+0+1),f
	goto	u2657
	decfsz	((??_choose_party+0)+0+2),f
	goto	u2657
	nop2
opt asmopt_on

	line	68
	
l2052:	
;VOTING_MACHINE.C: 68: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	
l2054:	
	movlw	(080h)
	fcall	_command
	line	69
	
l2056:	
;VOTING_MACHINE.C: 69: output("1.DMK2.ADMK3.BJP");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_output
	line	70
	
l2058:	
;VOTING_MACHINE.C: 70: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_choose_party+0)+0+2),f
movlw	28
movwf	((??_choose_party+0)+0+1),f
	movlw	99
movwf	((??_choose_party+0)+0),f
u2667:
	decfsz	((??_choose_party+0)+0),f
	goto	u2667
	decfsz	((??_choose_party+0)+0+1),f
	goto	u2667
	decfsz	((??_choose_party+0)+0+2),f
	goto	u2667
	clrwdt
opt asmopt_on

	line	71
	
l2060:	
;VOTING_MACHINE.C: 71: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l585
u2340:
	line	72
	
l2062:	
;VOTING_MACHINE.C: 72: {while(RB1==1);
	goto	l586
	
l587:	
	
l586:	
	btfsc	(49/8),(49)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l587
u2350:
	
l588:	
	line	73
	
l2064:	
;VOTING_MACHINE.C: 73: write(1,0x0001);
	movlw	low(01h)
	movwf	(?_write)
	movlw	high(01h)
	movwf	((?_write))+1
	clrf	0+(?_write)+02h
	bsf	status,0
	rlf	0+(?_write)+02h,f
	fcall	_write
	line	74
;VOTING_MACHINE.C: 74: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	75
	
l2066:	
;VOTING_MACHINE.C: 75: output("DMK");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_output
	line	76
	
l2068:	
;VOTING_MACHINE.C: 76: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_choose_party+0)+0+2),f
movlw	14
movwf	((??_choose_party+0)+0+1),f
	movlw	176
movwf	((??_choose_party+0)+0),f
u2677:
	decfsz	((??_choose_party+0)+0),f
	goto	u2677
	decfsz	((??_choose_party+0)+0+1),f
	goto	u2677
	decfsz	((??_choose_party+0)+0+2),f
	goto	u2677
opt asmopt_on

	line	77
;VOTING_MACHINE.C: 77: }
	goto	l589
	line	78
	
l585:	
;VOTING_MACHINE.C: 78: else if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l590
u2360:
	line	79
	
l2070:	
;VOTING_MACHINE.C: 79: {while(RB2==1);
	goto	l591
	
l592:	
	
l591:	
	btfsc	(50/8),(50)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l592
u2370:
	
l593:	
	line	80
	
l2072:	
;VOTING_MACHINE.C: 80: write(1,0x0002);
	movlw	low(01h)
	movwf	(?_write)
	movlw	high(01h)
	movwf	((?_write))+1
	movlw	(02h)
	movwf	(??_choose_party+0)+0
	movf	(??_choose_party+0)+0,w
	movwf	0+(?_write)+02h
	fcall	_write
	line	81
;VOTING_MACHINE.C: 81: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	82
	
l2074:	
;VOTING_MACHINE.C: 82: output("ADMK");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_output
	line	83
	
l2076:	
;VOTING_MACHINE.C: 83: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_choose_party+0)+0+2),f
movlw	14
movwf	((??_choose_party+0)+0+1),f
	movlw	176
movwf	((??_choose_party+0)+0),f
u2687:
	decfsz	((??_choose_party+0)+0),f
	goto	u2687
	decfsz	((??_choose_party+0)+0+1),f
	goto	u2687
	decfsz	((??_choose_party+0)+0+2),f
	goto	u2687
opt asmopt_on

	line	84
;VOTING_MACHINE.C: 84: }
	goto	l594
	line	85
	
l590:	
;VOTING_MACHINE.C: 85: else if(RB3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l595
u2380:
	line	86
	
l2078:	
;VOTING_MACHINE.C: 86: {while(RB3==1);
	goto	l596
	
l597:	
	
l596:	
	btfsc	(51/8),(51)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l597
u2390:
	
l598:	
	line	87
	
l2080:	
;VOTING_MACHINE.C: 87: write(1,0x0003);
	movlw	low(01h)
	movwf	(?_write)
	movlw	high(01h)
	movwf	((?_write))+1
	movlw	(03h)
	movwf	(??_choose_party+0)+0
	movf	(??_choose_party+0)+0,w
	movwf	0+(?_write)+02h
	fcall	_write
	line	88
;VOTING_MACHINE.C: 88: command(0x01);command(0x80);
	movlw	(01h)
	fcall	_command
	movlw	(080h)
	fcall	_command
	line	89
	
l2082:	
;VOTING_MACHINE.C: 89: output("BJP");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_output
	line	90
	
l2084:	
;VOTING_MACHINE.C: 90: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_choose_party+0)+0+2),f
movlw	14
movwf	((??_choose_party+0)+0+1),f
	movlw	176
movwf	((??_choose_party+0)+0),f
u2697:
	decfsz	((??_choose_party+0)+0),f
	goto	u2697
	decfsz	((??_choose_party+0)+0+1),f
	goto	u2697
	decfsz	((??_choose_party+0)+0+2),f
	goto	u2697
opt asmopt_on

	line	91
	
l595:	
	line	92
	
l594:	
	
l589:	
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_choose_party
	__end_of_choose_party:
;; =============== function _choose_party ends ============

	signat	_choose_party,88
	global	_initial
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _initial *****************
;; Defined at:
;;		line 57 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
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
psect	text223
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	57
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l2044:	
;VOTING_MACHINE.C: 58: command(0x38);
	movlw	(038h)
	fcall	_command
	line	59
;VOTING_MACHINE.C: 59: command(0x01);
	movlw	(01h)
	fcall	_command
	line	60
;VOTING_MACHINE.C: 60: command(0x06);
	movlw	(06h)
	fcall	_command
	line	61
;VOTING_MACHINE.C: 61: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	62
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	_output
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function _output *****************
;; Defined at:
;;		line 50 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     PTR unsigned char 
;;		 -> STR_16(9), STR_15(15), STR_14(15), STR_13(12), 
;;		 -> STR_12(16), STR_11(14), STR_10(15), STR_9(15), 
;;		 -> RAM(128), STR_8(15), STR_7(10), STR_6(15), 
;;		 -> STR_5(4), STR_4(5), STR_3(4), STR_2(17), 
;;		 -> STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMMON] PTR unsigned char 
;;		 -> STR_16(9), STR_15(15), STR_14(15), STR_13(12), 
;;		 -> STR_12(16), STR_11(14), STR_10(15), STR_9(15), 
;;		 -> RAM(128), STR_8(15), STR_7(10), STR_6(15), 
;;		 -> STR_5(4), STR_4(5), STR_3(4), STR_2(17), 
;;		 -> STR_1(17), 
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
;;		_choose_party
;;		_result
;;		_main
;; This function uses a non-reentrant model
;;
psect	text224
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	50
	global	__size_of_output
	__size_of_output	equ	__end_of_output-_output
	
_output:	
	opt	stack 6
; Regs used in _output: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;output@value stored from wreg
	movwf	(output@value)
	line	51
	
l2036:	
;VOTING_MACHINE.C: 51: while(*value!='\0')
	goto	l576
	
l577:	
	line	52
	
l2038:	
;VOTING_MACHINE.C: 52: {data(*value);
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	fcall	_data
	line	53
	
l2040:	
;VOTING_MACHINE.C: 53: value++;
	movlw	(01h)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	addwf	(output@value),f
	line	54
	
l576:	
	line	51
	
l2042:	
	movf	(output@value),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l577
u2330:
	
l578:	
	line	55
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_output
	__end_of_output:
;; =============== function _output ends ============

	signat	_output,4216
	global	_data
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:

;; *************** function _data *****************
;; Defined at:
;;		line 42 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
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
psect	text225
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	42
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 5
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	
l2026:	
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	43
	
l2028:	
;VOTING_MACHINE.C: 43: RC0=1;
	bsf	(56/8),(56)&7
	line	44
	
l2030:	
;VOTING_MACHINE.C: 44: RC1=0;
	bcf	(57/8),(57)&7
	line	45
	
l2032:	
;VOTING_MACHINE.C: 45: RC2=1;
	bsf	(58/8),(58)&7
	line	46
;VOTING_MACHINE.C: 46: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u2707:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u2707
	nop2	;nop
	clrwdt
opt asmopt_on

	line	47
	
l2034:	
;VOTING_MACHINE.C: 47: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	48
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:

;; *************** function _command *****************
;; Defined at:
;;		line 33 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
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
;;		_choose_party
;;		_result
;;		_main
;; This function uses a non-reentrant model
;;
psect	text226
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	33
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 6
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	34
	
l2016:	
;VOTING_MACHINE.C: 34: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	35
	
l2018:	
;VOTING_MACHINE.C: 35: RC0=0;
	bcf	(56/8),(56)&7
	line	36
	
l2020:	
;VOTING_MACHINE.C: 36: RC1=0;
	bcf	(57/8),(57)&7
	line	37
	
l2022:	
;VOTING_MACHINE.C: 37: RC2=1;
	bsf	(58/8),(58)&7
	line	38
;VOTING_MACHINE.C: 38: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u2717:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u2717
	nop2	;nop
	clrwdt
opt asmopt_on

	line	39
	
l2024:	
;VOTING_MACHINE.C: 39: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	40
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
	global	_read
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function _read *****************
;; Defined at:
;;		line 25 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    6[COMMON] const unsigned char 
;;  d               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_result
;; This function uses a non-reentrant model
;;
psect	text227
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	25
	global	__size_of_read
	__size_of_read	equ	__end_of_read-_read
	
_read:	
	opt	stack 6
; Regs used in _read: [wreg+status,2+status,0]
;read@address stored from wreg
	movwf	(read@address)
	
l2004:	
	movlw	low(0)
	movwf	(read@d)
	movlw	high(0)
	movwf	((read@d))+1
	line	26
;VOTING_MACHINE.C: 26: EEADR=address;
	movf	(read@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	27
	
l2006:	
;VOTING_MACHINE.C: 27: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	28
	
l2008:	
;VOTING_MACHINE.C: 28: WREN=0;
	bcf	(3170/8)^0180h,(3170)&7
	line	29
	
l2010:	
;VOTING_MACHINE.C: 29: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	30
	
l2012:	
;VOTING_MACHINE.C: 30: return d=EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(??_read+0)+0
	clrf	(??_read+0)+0+1
	movf	0+(??_read+0)+0,w
	movwf	(read@d)
	movf	1+(??_read+0)+0,w
	movwf	(read@d+1)
	movf	((read@d+1)),w
	clrf	(?_read+1)
	addwf	(?_read+1)
	movf	((read@d)),w
	clrf	(?_read)
	addwf	(?_read)

	
l2014:	
	line	31
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_read
	__end_of_read:
;; =============== function _read ends ============

	signat	_read,4218
	global	_write
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

;; *************** function _write *****************
;; Defined at:
;;		line 12 in file "C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
;; Parameters:    Size  Location     Type
;;  dat             2    0[COMMON] unsigned int 
;;  address         1    2[COMMON] const unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_choose_party
;; This function uses a non-reentrant model
;;
psect	text228
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\REALTIME_PROJ\1.VOTING_MACHINE\VOTING_MACHINE.C"
	line	12
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 6
; Regs used in _write: [wreg+status,2+status,0]
	line	13
	
l992:	
;VOTING_MACHINE.C: 13: EEADR=address;
	movf	(write@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	14
	
l994:	
;VOTING_MACHINE.C: 14: EEDATA=dat+1;
	movf	(write@dat),w
	addlw	01h
	movwf	(268)^0100h	;volatile
	line	15
	
l996:	
;VOTING_MACHINE.C: 15: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	16
	
l998:	
;VOTING_MACHINE.C: 16: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	17
	
l1000:	
;VOTING_MACHINE.C: 17: EECON2=0X55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	18
	
l1002:	
;VOTING_MACHINE.C: 18: EECON2=0XAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	19
	
l1004:	
;VOTING_MACHINE.C: 19: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	20
;VOTING_MACHINE.C: 20: while(EEIF==0);
	goto	l561
	
l562:	
	
l561:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(108/8),(108)&7
	goto	u11
	goto	u10
u11:
	goto	l562
u10:
	
l563:	
	line	21
;VOTING_MACHINE.C: 21: WREN=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7
	line	22
;VOTING_MACHINE.C: 22: EEIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(108/8),(108)&7
	line	23
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,8312
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
