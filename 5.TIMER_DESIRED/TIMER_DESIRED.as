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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
	dw 0x3F72 ;#
	FNCALL	_main,_delay
	FNCALL	_delay,_loadvalue
	FNCALL	_loadvalue,___awdiv
	FNCALL	_loadvalue,___wmul
	FNCALL	_loadvalue,___awtoft
	FNCALL	_loadvalue,___ftneg
	FNCALL	_loadvalue,___ftadd
	FNCALL	_loadvalue,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	global	_PORTD
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_TMR0IF
_TMR0IF	set	90
	global	_TRISD
_TRISD	set	136
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
	file	"TIMER_DESIRED.as"
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
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x4
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x4
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x5
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x6
	ds	1
	global	?_loadvalue
?_loadvalue:	; 0 bytes @ 0x7
	global	loadvalue@x
loadvalue@x:	; 2 bytes @ 0x7
	ds	2
	global	??_loadvalue
??_loadvalue:	; 0 bytes @ 0x9
	ds	1
	global	loadvalue@temp
loadvalue@temp:	; 3 bytes @ 0xA
	ds	3
	global	loadvalue@load
loadvalue@load:	; 3 bytes @ 0xD
	ds	3
	global	loadvalue@y
loadvalue@y:	; 2 bytes @ 0x10
	ds	2
	global	loadvalue@i
loadvalue@i:	; 2 bytes @ 0x12
	ds	2
	global	?_delay
?_delay:	; 0 bytes @ 0x14
	global	delay@num
delay@num:	; 2 bytes @ 0x14
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     22      22
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _loadvalue->___awtoft
;;   _loadvalue->___ftadd
;;   _loadvalue->___fttol
;;   ___awtoft->___awdiv
;;   ___ftadd->___ftpack
;;   ___awdiv->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_delay
;;   _delay->_loadvalue
;;   _loadvalue->___awtoft
;;   _loadvalue->___ftadd
;;   ___awtoft->___awdiv
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
;; (0) _main                                                 0     0      0    2219
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2    2219
;;                                             20 BANK0      2     0      2
;;                          _loadvalue
;; ---------------------------------------------------------------------------------
;; (2) _loadvalue                                           13    11      2    2197
;;                                              7 BANK0     13    11      2
;;                            ___awdiv
;;                             ___wmul
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (3) ___awtoft                                             6     3      3     300
;;                                             11 COMMON     3     3      0
;;                                              4 BANK0      3     0      3
;;                           ___ftpack
;;                            ___awdiv (ARG)
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             13     7      6    1049
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      7     7      0
;;                           ___ftpack
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              6 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             14    10      4     252
;;                                              0 COMMON    14    10      4
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;     _loadvalue
;;       ___awdiv
;;         ___wmul (ARG)
;;       ___wmul
;;       ___awtoft
;;         ___ftpack
;;         ___awdiv (ARG)
;;           ___wmul (ARG)
;;         ___wmul (ARG)
;;       ___ftneg
;;       ___ftadd
;;         ___ftpack
;;         ___ftneg (ARG)
;;       ___fttol
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
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     16      16       5       27.5%
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
;;		line 33 in file "C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	34
	
l2255:	
;TIMER_DESIRED.C: 34: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	35
	
l2257:	
;TIMER_DESIRED.C: 35: PORTD=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	36
	
l2259:	
;TIMER_DESIRED.C: 36: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l2261:	
;TIMER_DESIRED.C: 37: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	38
	
l2263:	
;TIMER_DESIRED.C: 38: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	39
	
l576:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _delay *****************
;; Defined at:
;;		line 25 in file "C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
;; Parameters:    Size  Location     Type
;;  num             2   20[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_loadvalue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text220
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
	line	25
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+status,2-btemp+0+pclath+cstack]
	line	26
	
l2251:	
;TIMER_DESIRED.C: 26: PS0=1;PS1=1;PS2=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1032/8)^080h,(1032)&7
	bsf	(1033/8)^080h,(1033)&7
	bsf	(1034/8)^080h,(1034)&7
	line	27
;TIMER_DESIRED.C: 27: T0CS=0;
	bcf	(1037/8)^080h,(1037)&7
	line	28
;TIMER_DESIRED.C: 28: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	29
	
l2253:	
;TIMER_DESIRED.C: 29: loadvalue(num);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@num+1),w
	clrf	(?_loadvalue+1)
	addwf	(?_loadvalue+1)
	movf	(delay@num),w
	clrf	(?_loadvalue)
	addwf	(?_loadvalue)

	fcall	_loadvalue
	line	30
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_loadvalue
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _loadvalue *****************
;; Defined at:
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
;; Parameters:    Size  Location     Type
;;  x               2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   18[BANK0 ] int 
;;  load            3   13[BANK0 ] float 
;;  temp            3   10[BANK0 ] float 
;;  y               2   16[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___wmul
;;		___awtoft
;;		___ftneg
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_delay
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\40.TIMER_DESIRED\TIMER_DESIRED.C"
	line	5
	global	__size_of_loadvalue
	__size_of_loadvalue	equ	__end_of_loadvalue-_loadvalue
	
_loadvalue:	
	opt	stack 6
; Regs used in _loadvalue: [wreg+status,2-btemp+0+pclath+cstack]
	line	6
	
l2239:	
;TIMER_DESIRED.C: 6: if(x>50)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(loadvalue@x+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(033h))^80h
	subwf	btemp+0,w
	skipz
	goto	u3085
	movlw	low(033h)
	subwf	(loadvalue@x),w
u3085:

	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l559
u3080:
	line	7
	
l2241:	
;TIMER_DESIRED.C: 7: {int y=x/50;
	movlw	low(032h)
	movwf	(?___awdiv)
	movlw	high(032h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(loadvalue@x+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(loadvalue@x),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(loadvalue@y+1)
	addwf	(loadvalue@y+1)
	movf	(0+(?___awdiv)),w
	clrf	(loadvalue@y)
	addwf	(loadvalue@y)

	line	8
	
l2243:	
;TIMER_DESIRED.C: 8: for(int i=0;i<y;i++)
	movlw	low(0)
	movwf	(loadvalue@i)
	movlw	high(0)
	movwf	((loadvalue@i))+1
	goto	l560
	line	9
	
l561:	
	line	10
	
l2245:	
;TIMER_DESIRED.C: 9: {
;TIMER_DESIRED.C: 10: TMR0=59.6875;
	movlw	(03Bh)
	movwf	(1)	;volatile
	line	11
;TIMER_DESIRED.C: 11: while(TMR0IF==0);
	goto	l562
	
l563:	
	
l562:	
	btfss	(90/8),(90)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l563
u3090:
	
l564:	
	line	12
;TIMER_DESIRED.C: 12: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	8
	
l2247:	
	movlw	low(01h)
	addwf	(loadvalue@i),f
	skipnc
	incf	(loadvalue@i+1),f
	movlw	high(01h)
	addwf	(loadvalue@i+1),f
	
l560:	
	movf	(loadvalue@i+1),w
	xorlw	80h
	movwf	(??_loadvalue+0)+0
	movf	(loadvalue@y+1),w
	xorlw	80h
	subwf	(??_loadvalue+0)+0,w
	skipz
	goto	u3105
	movf	(loadvalue@y),w
	subwf	(loadvalue@i),w
u3105:

	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l561
u3100:
	
l565:	
	line	14
;TIMER_DESIRED.C: 13: }
;TIMER_DESIRED.C: 14: }
	goto	l566
	line	15
	
l559:	
	line	17
	
l2249:	
;TIMER_DESIRED.C: 15: else
;TIMER_DESIRED.C: 16: {
;TIMER_DESIRED.C: 17: float temp= ((x*1000)/256);
	movlw	low(0100h)
	movwf	(?___awdiv)
	movlw	high(0100h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(loadvalue@x+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(loadvalue@x),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___wmul)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?___awdiv)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(loadvalue@temp)
	movf	(1+(?___awtoft)),w
	movwf	(loadvalue@temp+1)
	movf	(2+(?___awtoft)),w
	movwf	(loadvalue@temp+2)
	line	18
;TIMER_DESIRED.C: 18: float load=255-temp;
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x7f
	movwf	(?___ftadd+1)
	movlw	0x43
	movwf	(?___ftadd+2)
	movf	(loadvalue@temp),w
	movwf	(?___ftneg)
	movf	(loadvalue@temp+1),w
	movwf	(?___ftneg+1)
	movf	(loadvalue@temp+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(loadvalue@load)
	movf	(1+(?___ftadd)),w
	movwf	(loadvalue@load+1)
	movf	(2+(?___ftadd)),w
	movwf	(loadvalue@load+2)
	line	19
;TIMER_DESIRED.C: 19: TMR0=load;
	movf	(loadvalue@load),w
	movwf	(?___fttol)
	movf	(loadvalue@load+1),w
	movwf	(?___fttol+1)
	movf	(loadvalue@load+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	20
;TIMER_DESIRED.C: 20: while(TMR0IF==0);
	goto	l567
	
l568:	
	
l567:	
	btfss	(90/8),(90)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l568
u3110:
	
l569:	
	line	21
;TIMER_DESIRED.C: 21: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	22
	
l566:	
	line	23
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_loadvalue
	__end_of_loadvalue:
;; =============== function _loadvalue ends ============

	signat	_loadvalue,4216
	global	___awtoft
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    4[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       3       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_loadvalue
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2229:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awtoft@sign)
	line	37
	
l2231:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awtoft@c+1),7
	goto	u3071
	goto	u3070
u3071:
	goto	l721
u3070:
	line	38
	
l2233:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	line	40
	
l721:	
	line	41
	
l2235:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	
l2237:	
	line	42
	
l722:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftadd
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    6[BANK0 ] unsigned char 
;;  exp2            1    5[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6       7       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_loadvalue
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text223
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2157:	
	movf	(___ftadd@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l2159:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2830
	goto	l631
u2830:
	
l2161:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l629
u2840:
	
l2163:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l629
u2850:
	
l631:	
	line	93
	
l2165:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	
l2167:	
	goto	l632
	
l629:	
	line	94
	
l2169:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2860
	goto	l635
u2860:
	
l2171:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l633
u2870:
	
l2173:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l633
u2880:
	
l635:	
	line	95
	goto	l632
	
l633:	
	line	96
	
l2175:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2177:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l636
u2890:
	line	98
	
l2179:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l636:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l637
u2900:
	line	100
	
l2181:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l637:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2183:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2185:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l638
u2910:
	line	109
	
l639:	
	line	110
	
l2187:	
	movlw	01h
u2925:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2925
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2189:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2931
	goto	u2930
u2931:
	goto	l641
u2930:
	
l2191:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l639
u2940:
	
l641:	
	
l642:	
	line	113
	goto	l643
	
l644:	
	line	114
	
l2193:	
	movlw	01h
u2955:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2955

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	116
	
l643:	
	line	113
	
l2195:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l644
u2960:
	
l645:	
	line	117
	goto	l646
	
l638:	
	
l2197:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l647
u2970:
	line	120
	
l648:	
	line	121
	
l2199:	
	movlw	01h
u2985:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2985
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2201:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l650
u2990:
	
l2203:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l648
u3000:
	
l650:	
	
l651:	
	line	124
	goto	l652
	
l653:	
	line	125
	
l2205:	
	movlw	01h
u3015:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3015

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	127
	
l652:	
	line	124
	
l2207:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l653
u3020:
	
l654:	
	line	128
	
l647:	
	line	129
	
l646:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l655
u3030:
	line	131
	
l2209:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	line	133
	
l655:	
	line	134
	
l2211:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l656
u3040:
	line	136
	
l2213:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	138
	
l656:	
	line	139
	
l2215:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l2217:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3051
	addwf	(___ftadd@f2+1),f
u3051:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3052
	addwf	(___ftadd@f2+2),f
u3052:

	line	141
	
l2219:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l657
u3060:
	line	142
	
l2221:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l2223:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	line	145
	
l657:	
	line	146
	
l2225:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	
l2227:	
	line	148
	
l632:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	___ftneg
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
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
;;		_loadvalue
;; This function uses a non-reentrant model
;;
psect	text224
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l2101:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2761
	goto	u2760
u2761:
	goto	l748
u2760:
	line	18
	
l2103:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	
l748:	
	line	19
	
l2105:	
	
l2107:	
	line	20
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] int 
;;  dividend        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_loadvalue
;; This function uses a non-reentrant model
;;
psect	text225
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2063:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l2065:	
	btfss	(___awdiv@divisor+1),7
	goto	u2661
	goto	u2660
u2661:
	goto	l725
u2660:
	line	11
	
l2067:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	line	13
	
l725:	
	line	14
	
l2069:	
	btfss	(___awdiv@dividend+1),7
	goto	u2671
	goto	u2670
u2671:
	goto	l726
u2670:
	line	15
	
l2071:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2073:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l726:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2681
	goto	u2680
u2681:
	goto	l727
u2680:
	line	20
	
l2075:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l728
	
l729:	
	line	22
	
l2077:	
	movlw	01h
	
u2695:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2695
	line	23
	
l2079:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l728:	
	line	21
	
l2081:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l729
u2700:
	
l730:	
	line	25
	
l731:	
	line	26
	
l2083:	
	movlw	01h
	
u2715:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2715
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2725
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2725:
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l732
u2720:
	line	28
	
l2085:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2087:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l732:	
	line	31
	
l2089:	
	movlw	01h
	
u2735:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2735
	line	32
	
l2091:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l731
u2740:
	
l733:	
	line	33
	
l727:	
	line	34
	
l2093:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2750
	goto	l734
u2750:
	line	35
	
l2095:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l734:	
	line	36
	
l2097:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2099:	
	line	37
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_loadvalue
;; This function uses a non-reentrant model
;;
psect	text226
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2005:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l694
u2550:
	line	50
	
l2007:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2009:	
	goto	l695
	
l694:	
	line	51
	
l2011:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2565:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2560:
	addlw	-1
	skipz
	goto	u2565
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2013:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2015:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2017:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2019:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2021:	
	btfss	(___fttol@exp1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l696
u2570:
	line	57
	
l2023:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2581
	goto	u2580
u2581:
	goto	l697
u2580:
	line	58
	
l2025:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2027:	
	goto	l695
	
l697:	
	line	59
	
l698:	
	line	60
	
l2029:	
	movlw	01h
u2595:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2595

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l698
u2600:
	
l699:	
	line	62
	goto	l700
	
l696:	
	line	63
	
l2031:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l701
u2610:
	line	64
	
l2033:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2035:	
	goto	l695
	
l701:	
	line	65
	goto	l702
	
l703:	
	line	66
	
l2037:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2625:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2625
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	line	68
	
l702:	
	line	65
	
l2039:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l703
u2630:
	
l704:	
	line	69
	
l700:	
	line	70
	
l2041:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2640
	goto	l705
u2640:
	line	71
	
l2043:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	
l705:	
	line	72
	
l2045:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l2047:	
	line	73
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text227
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1885:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2220
	goto	l919
u2220:
	
l1887:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l917
u2230:
	
l919:	
	line	65
	
l1889:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	
l1891:	
	goto	l920
	
l917:	
	line	66
	goto	l921
	
l922:	
	line	67
	
l1893:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2245:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2245

	line	69
	
l921:	
	line	66
	
l1895:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l922
u2250:
	
l923:	
	line	70
	goto	l924
	
l925:	
	line	71
	
l1897:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1899:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1901:	
	movlw	01h
u2265:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2265

	line	74
	
l924:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l925
u2270:
	
l926:	
	line	75
	goto	l927
	
l928:	
	line	76
	
l1903:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2285:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2285
	line	78
	
l927:	
	line	75
	
l1905:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l928
u2290:
	
l929:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l930
u2300:
	line	80
	
l1907:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l930:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1909:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2315:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2310:
	addlw	-1
	skipz
	goto	u2315
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1911:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2320
	goto	l931
u2320:
	line	84
	
l1913:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l931:	
	line	85
	line	86
	
l920:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

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
;;		_loadvalue
;; This function uses a non-reentrant model
;;
psect	text228
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l1873:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	line	6
	
l585:	
	line	7
	
l1875:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l586
u2180:
	line	8
	
l1877:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l586:	
	line	9
	movlw	01h
	
u2195:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2195
	line	10
	
l1879:	
	movlw	01h
	
u2205:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2205
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l585
u2210:
	
l587:	
	line	12
	
l1881:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l1883:	
	line	13
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
