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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\27. MATRIX_LED\MATRIX_LED.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\27. MATRIX_LED\MATRIX_LED.C"
	dw 0x3F72 ;#
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"MATRIX_LED.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\Lenovo\Desktop\PIC\TASK\27. MATRIX_LED\MATRIX_LED.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\27. MATRIX_LED\MATRIX_LED.C"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	14
	
l1776:	
;MATRIX_LED.C: 14: TRISB=0X78;
	movlw	(078h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	15
	
l1778:	
;MATRIX_LED.C: 15: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	16
	
l1780:	
;MATRIX_LED.C: 16: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	17
	
l1782:	
;MATRIX_LED.C: 17: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	18
	
l1784:	
;MATRIX_LED.C: 18: PORTB=0X00;
	clrf	(6)	;volatile
	line	19
	
l1786:	
;MATRIX_LED.C: 19: PORTC=0X00;
	clrf	(7)	;volatile
	line	20
;MATRIX_LED.C: 20: while(1)
	
l561:	
	line	22
	
l1788:	
;MATRIX_LED.C: 21: {
;MATRIX_LED.C: 22: RB0=1,RB1=0,RB2=0;
	bsf	(48/8),(48)&7
	
l1790:	
	bcf	(49/8),(49)&7
	
l1792:	
	bcf	(50/8),(50)&7
	line	23
	
l1794:	
;MATRIX_LED.C: 23: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l562
u2140:
	line	24
	
l1796:	
;MATRIX_LED.C: 24: {while(RB3==1);
	goto	l563
	
l564:	
	
l563:	
	btfsc	(51/8),(51)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l564
u2150:
	
l565:	
	line	25
	
l1798:	
;MATRIX_LED.C: 25: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	26
;MATRIX_LED.C: 26: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2387:
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
	decfsz	((??_main+0)+0+2),f
	goto	u2387
opt asmopt_on

	line	27
;MATRIX_LED.C: 27: }
	goto	l566
	line	28
	
l562:	
;MATRIX_LED.C: 28: else if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l567
u2160:
	line	29
	
l1800:	
;MATRIX_LED.C: 29: {while(RB4==1);
	goto	l568
	
l569:	
	
l568:	
	btfsc	(52/8),(52)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l569
u2170:
	
l570:	
	line	30
	
l1802:	
;MATRIX_LED.C: 30: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	31
;MATRIX_LED.C: 31: PORTD=0X07;
	movlw	(07h)
	movwf	(8)	;volatile
	line	32
;MATRIX_LED.C: 32: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
	decfsz	((??_main+0)+0+2),f
	goto	u2397
opt asmopt_on

	line	33
;MATRIX_LED.C: 33: }
	goto	l571
	line	34
	
l567:	
;MATRIX_LED.C: 34: else if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l572
u2180:
	line	36
	
l1804:	
;MATRIX_LED.C: 35: {
;MATRIX_LED.C: 36: while(RB5==1);
	goto	l573
	
l574:	
	
l573:	
	btfsc	(53/8),(53)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l574
u2190:
	
l575:	
	line	37
	
l1806:	
;MATRIX_LED.C: 37: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	38
;MATRIX_LED.C: 38: PORTD=0X3F;
	movlw	(03Fh)
	movwf	(8)	;volatile
	line	39
;MATRIX_LED.C: 39: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2407:
	decfsz	((??_main+0)+0),f
	goto	u2407
	decfsz	((??_main+0)+0+1),f
	goto	u2407
	decfsz	((??_main+0)+0+2),f
	goto	u2407
opt asmopt_on

	line	40
;MATRIX_LED.C: 40: }
	goto	l576
	line	41
	
l572:	
;MATRIX_LED.C: 41: else if(RB6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l577
u2200:
	line	43
	
l1808:	
;MATRIX_LED.C: 42: {
;MATRIX_LED.C: 43: while(RB6==1);
	goto	l578
	
l579:	
	
l578:	
	btfsc	(54/8),(54)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l579
u2210:
	
l580:	
	line	44
	
l1810:	
;MATRIX_LED.C: 44: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	45
;MATRIX_LED.C: 45: PORTD=0XCC;
	movlw	(0CCh)
	movwf	(8)	;volatile
	line	46
;MATRIX_LED.C: 46: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2417:
	decfsz	((??_main+0)+0),f
	goto	u2417
	decfsz	((??_main+0)+0+1),f
	goto	u2417
	decfsz	((??_main+0)+0+2),f
	goto	u2417
opt asmopt_on

	line	47
	
l577:	
	line	48
	
l576:	
	
l571:	
	
l566:	
	
l1812:	
;MATRIX_LED.C: 47: }
;MATRIX_LED.C: 48: RB0=0,RB1=1,RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l1814:	
	bsf	(49/8),(49)&7
	
l1816:	
	bcf	(50/8),(50)&7
	line	49
	
l1818:	
;MATRIX_LED.C: 49: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l581
u2220:
	line	50
	
l1820:	
;MATRIX_LED.C: 50: {while(RB3==1);
	goto	l582
	
l583:	
	
l582:	
	btfsc	(51/8),(51)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l583
u2230:
	
l584:	
	line	51
	
l1822:	
;MATRIX_LED.C: 51: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	52
;MATRIX_LED.C: 52: PORTD=0X01;
	movlw	(01h)
	movwf	(8)	;volatile
	line	53
;MATRIX_LED.C: 53: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2427:
	decfsz	((??_main+0)+0),f
	goto	u2427
	decfsz	((??_main+0)+0+1),f
	goto	u2427
	decfsz	((??_main+0)+0+2),f
	goto	u2427
opt asmopt_on

	line	54
;MATRIX_LED.C: 54: }
	goto	l585
	line	55
	
l581:	
;MATRIX_LED.C: 55: else if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l586
u2240:
	line	56
	
l1824:	
;MATRIX_LED.C: 56: {while(RB4==1);
	goto	l587
	
l588:	
	
l587:	
	btfsc	(52/8),(52)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l588
u2250:
	
l589:	
	line	57
	
l1826:	
;MATRIX_LED.C: 57: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	58
;MATRIX_LED.C: 58: PORTD=0X0F;
	movlw	(0Fh)
	movwf	(8)	;volatile
	line	59
;MATRIX_LED.C: 59: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2437:
	decfsz	((??_main+0)+0),f
	goto	u2437
	decfsz	((??_main+0)+0+1),f
	goto	u2437
	decfsz	((??_main+0)+0+2),f
	goto	u2437
opt asmopt_on

	line	60
;MATRIX_LED.C: 60: }
	goto	l590
	line	61
	
l586:	
;MATRIX_LED.C: 61: else if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l591
u2260:
	line	63
	
l1828:	
;MATRIX_LED.C: 62: {
;MATRIX_LED.C: 63: while(RB5==1);
	goto	l592
	
l593:	
	
l592:	
	btfsc	(53/8),(53)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l593
u2270:
	
l594:	
	line	64
	
l1830:	
;MATRIX_LED.C: 64: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	65
;MATRIX_LED.C: 65: PORTD=0X7F;
	movlw	(07Fh)
	movwf	(8)	;volatile
	line	66
;MATRIX_LED.C: 66: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2447:
	decfsz	((??_main+0)+0),f
	goto	u2447
	decfsz	((??_main+0)+0+1),f
	goto	u2447
	decfsz	((??_main+0)+0+2),f
	goto	u2447
opt asmopt_on

	line	67
;MATRIX_LED.C: 67: }
	goto	l595
	line	68
	
l591:	
;MATRIX_LED.C: 68: else if(RB6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l596
u2280:
	line	70
	
l1832:	
;MATRIX_LED.C: 69: {
;MATRIX_LED.C: 70: while(RB6==1);
	goto	l597
	
l598:	
	
l597:	
	btfsc	(54/8),(54)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l598
u2290:
	
l599:	
	line	71
	
l1834:	
;MATRIX_LED.C: 71: PORTC=0X00;
	clrf	(7)	;volatile
	line	72
;MATRIX_LED.C: 72: PORTD=0X00;
	clrf	(8)	;volatile
	line	73
	
l1836:	
;MATRIX_LED.C: 73: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2457:
	decfsz	((??_main+0)+0),f
	goto	u2457
	decfsz	((??_main+0)+0+1),f
	goto	u2457
	decfsz	((??_main+0)+0+2),f
	goto	u2457
opt asmopt_on

	line	74
	
l596:	
	line	75
	
l595:	
	
l590:	
	
l585:	
	
l1838:	
;MATRIX_LED.C: 74: }
;MATRIX_LED.C: 75: RB0=0,RB1=0,RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l1840:	
	bcf	(49/8),(49)&7
	
l1842:	
	bsf	(50/8),(50)&7
	line	76
	
l1844:	
;MATRIX_LED.C: 76: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l600
u2300:
	line	77
	
l1846:	
;MATRIX_LED.C: 77: {while(RB3==1);
	goto	l601
	
l602:	
	
l601:	
	btfsc	(51/8),(51)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l602
u2310:
	
l603:	
	line	78
	
l1848:	
;MATRIX_LED.C: 78: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	79
;MATRIX_LED.C: 79: PORTD=0X03;
	movlw	(03h)
	movwf	(8)	;volatile
	line	80
;MATRIX_LED.C: 80: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2467:
	decfsz	((??_main+0)+0),f
	goto	u2467
	decfsz	((??_main+0)+0+1),f
	goto	u2467
	decfsz	((??_main+0)+0+2),f
	goto	u2467
opt asmopt_on

	line	81
;MATRIX_LED.C: 81: }
	goto	l604
	line	82
	
l600:	
;MATRIX_LED.C: 82: else if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l605
u2320:
	line	83
	
l1850:	
;MATRIX_LED.C: 83: {while(RB4==1);
	goto	l606
	
l607:	
	
l606:	
	btfsc	(52/8),(52)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l607
u2330:
	
l608:	
	line	84
	
l1852:	
;MATRIX_LED.C: 84: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	85
;MATRIX_LED.C: 85: PORTD=0X1F;
	movlw	(01Fh)
	movwf	(8)	;volatile
	line	86
;MATRIX_LED.C: 86: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2477:
	decfsz	((??_main+0)+0),f
	goto	u2477
	decfsz	((??_main+0)+0+1),f
	goto	u2477
	decfsz	((??_main+0)+0+2),f
	goto	u2477
opt asmopt_on

	line	87
;MATRIX_LED.C: 87: }
	goto	l609
	line	88
	
l605:	
;MATRIX_LED.C: 88: else if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l610
u2340:
	line	90
	
l1854:	
;MATRIX_LED.C: 89: {
;MATRIX_LED.C: 90: while(RB5==1);
	goto	l611
	
l612:	
	
l611:	
	btfsc	(53/8),(53)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l612
u2350:
	
l613:	
	line	91
	
l1856:	
;MATRIX_LED.C: 91: PORTC=0X80;
	movlw	(080h)
	movwf	(7)	;volatile
	line	92
;MATRIX_LED.C: 92: PORTD=0XFF;
	movlw	(0FFh)
	movwf	(8)	;volatile
	line	93
;MATRIX_LED.C: 93: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2487:
	decfsz	((??_main+0)+0),f
	goto	u2487
	decfsz	((??_main+0)+0+1),f
	goto	u2487
	decfsz	((??_main+0)+0+2),f
	goto	u2487
opt asmopt_on

	line	94
;MATRIX_LED.C: 94: }
	goto	l614
	line	95
	
l610:	
;MATRIX_LED.C: 95: else if(RB6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l615
u2360:
	line	97
	
l1858:	
;MATRIX_LED.C: 96: {
;MATRIX_LED.C: 97: while(RB6==1);
	goto	l616
	
l617:	
	
l616:	
	btfsc	(54/8),(54)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l617
u2370:
	
l618:	
	line	98
	
l1860:	
;MATRIX_LED.C: 98: PORTD=0X99;
	movlw	(099h)
	movwf	(8)	;volatile
	line	99
;MATRIX_LED.C: 99: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2497:
	decfsz	((??_main+0)+0),f
	goto	u2497
	decfsz	((??_main+0)+0+1),f
	goto	u2497
	decfsz	((??_main+0)+0+2),f
	goto	u2497
opt asmopt_on

	line	100
	
l615:	
	line	101
	
l614:	
	
l609:	
	
l604:	
	
l619:	
	line	20
	goto	l561
	
l620:	
	line	102
	
l621:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
