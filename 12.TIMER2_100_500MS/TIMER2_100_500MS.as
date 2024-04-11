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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\47.TIMER2_100_500MS\TIMER2_100_500MS.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\47.TIMER2_100_500MS\TIMER2_100_500MS.C"
	dw 0X3F72 ;#
	FNCALL	_main,_delay
	FNROOT	_main
	global	_PORTD
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_TMR2IF
_TMR2IF	set	97
	global	_PR2
_PR2	set	146
	global	_TRISD
_TRISD	set	136
	file	"TIMER2_100_500MS.as"
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@i
main@i:	; 2 bytes @ 0x0
	ds	2
	global	main@i_300
main@i_300:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0      60
;;                                              0 COMMON     4     4      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
;;		line 11 in file "C:\Users\Lenovo\Desktop\PIC\TASK\47.TIMER2_100_500MS\TIMER2_100_500MS.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] int 
;;  i               2    0[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\47.TIMER2_100_500MS\TIMER2_100_500MS.C"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	12
	
l1726:	
;TIMER2_100_500MS.C: 12: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	13
	
l1728:	
;TIMER2_100_500MS.C: 13: for(int i=0;i<2;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1730:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(02h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2155
	movlw	low(02h)
	subwf	(main@i),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l565
u2150:
	
l1732:	
	goto	l566
	line	14
	
l565:	
	line	15
	
l1734:	
;TIMER2_100_500MS.C: 14: {
;TIMER2_100_500MS.C: 15: PORTD=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	16
	
l1736:	
;TIMER2_100_500MS.C: 16: delay();
	fcall	_delay
	line	13
	
l1738:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1740:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(02h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2165
	movlw	low(02h)
	subwf	(main@i),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l565
u2160:
	
l566:	
	line	18
	
l1742:	
;TIMER2_100_500MS.C: 17: }
;TIMER2_100_500MS.C: 18: for(int i=0;i<10;i++)
	movlw	low(0)
	movwf	(main@i_300)
	movlw	high(0)
	movwf	((main@i_300))+1
	
l1744:	
	movf	(main@i_300+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2175
	movlw	low(0Ah)
	subwf	(main@i_300),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l567
u2170:
	
l1746:	
	goto	l568
	line	19
	
l567:	
	line	20
	
l1748:	
;TIMER2_100_500MS.C: 19: {
;TIMER2_100_500MS.C: 20: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	21
	
l1750:	
;TIMER2_100_500MS.C: 21: delay();
	fcall	_delay
	line	18
	
l1752:	
	movlw	low(01h)
	addwf	(main@i_300),f
	skipnc
	incf	(main@i_300+1),f
	movlw	high(01h)
	addwf	(main@i_300+1),f
	
l1754:	
	movf	(main@i_300+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2185
	movlw	low(0Ah)
	subwf	(main@i_300),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l567
u2180:
	
l568:	
	line	23
	
l569:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _delay *****************
;; Defined at:
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\47.TIMER2_100_500MS\TIMER2_100_500MS.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\47.TIMER2_100_500MS\TIMER2_100_500MS.C"
	line	5
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	
l938:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	6
;TIMER2_100_500MS.C: 6: PR2=195.3125;
	movlw	(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	7
;TIMER2_100_500MS.C: 7: while(TMR2IF==0);
	goto	l559
	
l560:	
	
l559:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7
	goto	u11
	goto	u10
u11:
	goto	l560
u10:
	
l561:	
	line	8
;TIMER2_100_500MS.C: 8: TMR2IF=0;
	bcf	(97/8),(97)&7
	line	9
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
