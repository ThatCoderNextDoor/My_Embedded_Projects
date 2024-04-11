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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
	dw 0x3F72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_command
	FNCALL	_main,_data
	FNCALL	_initial,_command
	FNROOT	_main
	global	_PORTB
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
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
	file	"SET_POINT_LCD.as"
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
	global	??_initial
??_initial:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x4
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x6
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x8
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0xA
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_command
;;   _main->_data
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                12    12      0     255
;;                                              2 COMMON    12    12      0
;;                            _initial
;;                            _command
;;                               _data
;; ---------------------------------------------------------------------------------
;; (1) _initial                                              0     0      0      15
;;                            _command
;; ---------------------------------------------------------------------------------
;; (1) _data                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initial
;;     _command
;;   _command
;;   _data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
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
;;		line 34 in file "C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  l               2   12[COMMON] int 
;;  k               2   10[COMMON] int 
;;  j               2    8[COMMON] int 
;;  i               2    6[COMMON] int 
;;  count           2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:        10       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initial
;;		_command
;;		_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	35
	
l1757:	
;SET_POINT_LCD.c: 35: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	36
;SET_POINT_LCD.c: 36: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	37
;SET_POINT_LCD.c: 37: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	38
;SET_POINT_LCD.c: 38: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	39
	
l1759:	
;SET_POINT_LCD.c: 39: int count=0;
	movlw	low(0)
	movwf	(main@count)
	movlw	high(0)
	movwf	((main@count))+1
	line	40
	
l1761:	
;SET_POINT_LCD.c: 40: initial();
	fcall	_initial
	line	41
	
l1763:	
;SET_POINT_LCD.c: 41: for(int i=0;i<=9;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1765:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2145
	movlw	low(0Ah)
	subwf	(main@i),w
u2145:

	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l570
u2140:
	
l1767:	
	goto	l571
	line	42
	
l570:	
	line	43
	
l1769:	
;SET_POINT_LCD.c: 42: {
;SET_POINT_LCD.c: 43: for(int j=0;j<=9;j++)
	movlw	low(0)
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l1771:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2155
	movlw	low(0Ah)
	subwf	(main@j),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l572
u2150:
	
l1773:	
	goto	l573
	line	44
	
l572:	
	line	45
	
l1775:	
;SET_POINT_LCD.c: 44: {
;SET_POINT_LCD.c: 45: for(int k=0;k<=9;k++)
	movlw	low(0)
	movwf	(main@k)
	movlw	high(0)
	movwf	((main@k))+1
	
l1777:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2165
	movlw	low(0Ah)
	subwf	(main@k),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l574
u2160:
	
l1779:	
	goto	l575
	line	46
	
l574:	
	line	47
	
l1781:	
;SET_POINT_LCD.c: 46: {
;SET_POINT_LCD.c: 47: for(int l=0;l<=9;l++)
	movlw	low(0)
	movwf	(main@l)
	movlw	high(0)
	movwf	((main@l))+1
	
l1783:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2175
	movlw	low(0Ah)
	subwf	(main@l),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l576
u2170:
	
l1785:	
	goto	l577
	line	48
	
l576:	
	line	49
	
l1787:	
;SET_POINT_LCD.c: 48: {
;SET_POINT_LCD.c: 49: command(0xC0);
	movlw	(0C0h)
	fcall	_command
	line	50
;SET_POINT_LCD.c: 50: data(i+0x30);
	movf	(main@i),w
	addlw	030h
	fcall	_data
	line	51
	
l1789:	
;SET_POINT_LCD.c: 51: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	nop2
opt asmopt_on

	line	52
	
l1791:	
;SET_POINT_LCD.c: 52: command(0xC1);
	movlw	(0C1h)
	fcall	_command
	line	53
	
l1793:	
;SET_POINT_LCD.c: 53: data(j+0x30);
	movf	(main@j),w
	addlw	030h
	fcall	_data
	line	54
	
l1795:	
;SET_POINT_LCD.c: 54: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	nop2
opt asmopt_on

	line	55
;SET_POINT_LCD.c: 55: command(0xC2);
	movlw	(0C2h)
	fcall	_command
	line	56
;SET_POINT_LCD.c: 56: data(k+0x30);
	movf	(main@k),w
	addlw	030h
	fcall	_data
	line	57
	
l1797:	
;SET_POINT_LCD.c: 57: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2267:
	decfsz	((??_main+0)+0),f
	goto	u2267
	decfsz	((??_main+0)+0+1),f
	goto	u2267
	nop2
opt asmopt_on

	line	58
	
l1799:	
;SET_POINT_LCD.c: 58: command(0xC3);
	movlw	(0C3h)
	fcall	_command
	line	59
	
l1801:	
;SET_POINT_LCD.c: 59: data(l+0x30);
	movf	(main@l),w
	addlw	030h
	fcall	_data
	line	60
	
l1803:	
;SET_POINT_LCD.c: 60: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2277:
	decfsz	((??_main+0)+0),f
	goto	u2277
	decfsz	((??_main+0)+0+1),f
	goto	u2277
	nop2
opt asmopt_on

	line	61
	
l1805:	
;SET_POINT_LCD.c: 61: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	62
	
l1807:	
;SET_POINT_LCD.c: 62: if(count>=200 && count<=300)
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0C8h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2185
	movlw	low(0C8h)
	subwf	(main@count),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l578
u2180:
	
l1809:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(012Dh))^80h
	subwf	btemp+0,w
	skipz
	goto	u2195
	movlw	low(012Dh)
	subwf	(main@count),w
u2195:

	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l578
u2190:
	line	64
	
l1811:	
;SET_POINT_LCD.c: 63: {
;SET_POINT_LCD.c: 64: PORTB=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	65
;SET_POINT_LCD.c: 65: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	nop2
opt asmopt_on

	line	66
;SET_POINT_LCD.c: 66: }
	goto	l579
	line	67
	
l578:	
	line	68
	
l1813:	
;SET_POINT_LCD.c: 67: else
;SET_POINT_LCD.c: 68: {PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	69
	
l579:	
	line	47
	
l1815:	
	movlw	low(01h)
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	
l1817:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2205
	movlw	low(0Ah)
	subwf	(main@l),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l576
u2200:
	
l577:	
	line	45
	
l1819:	
	movlw	low(01h)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l1821:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2215
	movlw	low(0Ah)
	subwf	(main@k),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l574
u2210:
	
l575:	
	line	43
	
l1823:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l1825:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2225
	movlw	low(0Ah)
	subwf	(main@j),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l572
u2220:
	
l573:	
	line	41
	
l1827:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1829:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2235
	movlw	low(0Ah)
	subwf	(main@i),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l570
u2230:
	
l571:	
	line	75
	
l580:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initial
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:

;; *************** function _initial *****************
;; Defined at:
;;		line 27 in file "C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
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
psect	text79
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
	line	27
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l1755:	
;SET_POINT_LCD.c: 28: command(0x38);
	movlw	(038h)
	fcall	_command
	line	29
;SET_POINT_LCD.c: 29: command(0x01);
	movlw	(01h)
	fcall	_command
	line	30
;SET_POINT_LCD.c: 30: command(0x06);
	movlw	(06h)
	fcall	_command
	line	31
;SET_POINT_LCD.c: 31: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	32
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	_data
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:

;; *************** function _data *****************
;; Defined at:
;;		line 19 in file "C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text80
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
	line	19
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 7
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	
l1745:	
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
l1747:	
;SET_POINT_LCD.c: 20: RC0=1;
	bsf	(56/8),(56)&7
	line	21
	
l1749:	
;SET_POINT_LCD.c: 21: RC1=0;
	bcf	(57/8),(57)&7
	line	22
	
l1751:	
;SET_POINT_LCD.c: 22: RC2=1;
	bsf	(58/8),(58)&7
	line	23
;SET_POINT_LCD.c: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u2297:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u2297
	nop2	;nop
	clrwdt
opt asmopt_on

	line	24
	
l1753:	
;SET_POINT_LCD.c: 24: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	25
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text81,local,class=CODE,delta=2
global __ptext81
__ptext81:

;; *************** function _command *****************
;; Defined at:
;;		line 9 in file "C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
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
psect	text81
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\35.SET__POINT_LCD\SET_POINT_LCD.c"
	line	9
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	10
	
l1735:	
;SET_POINT_LCD.c: 10: PORTD=y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	11
	
l1737:	
;SET_POINT_LCD.c: 11: RC0=0;
	bcf	(56/8),(56)&7
	line	12
	
l1739:	
;SET_POINT_LCD.c: 12: RC1=0;
	bcf	(57/8),(57)&7
	line	13
	
l1741:	
;SET_POINT_LCD.c: 13: RC2=1;
	bsf	(58/8),(58)&7
	line	14
;SET_POINT_LCD.c: 14: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u2307:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u2307
	nop2	;nop
	clrwdt
opt asmopt_on

	line	15
	
l1743:	
;SET_POINT_LCD.c: 15: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	16
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
