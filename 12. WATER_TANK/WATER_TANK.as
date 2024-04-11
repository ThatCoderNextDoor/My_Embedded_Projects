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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\25. WATER_TANK\WATER_TANK.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\25. WATER_TANK\WATER_TANK.C"
	dw 0x3F72 ;#
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_TRISB
_TRISB	set	134
	file	"WATER_TANK.as"
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
	global	main@x
main@x:	; 2 bytes @ 0x3
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
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
;; (0) _main                                                 7     7      0      15
;;                                              0 COMMON     5     5      0
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
;;COMMON               E      5       5       1       35.7%
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
;;		line 7 in file "C:\Users\Lenovo\Desktop\PIC\TASK\25. WATER_TANK\WATER_TANK.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    3[COMMON] int 
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\25. WATER_TANK\WATER_TANK.C"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	8
	
l1724:	
;WATER_TANK.C: 8: TRISB=0x03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	9
	
l1726:	
;WATER_TANK.C: 9: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	11
	
l1728:	
;WATER_TANK.C: 10: int i,x;
;WATER_TANK.C: 11: if(RB0==0 && RB1==0)
	btfsc	(48/8),(48)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l561
u2140:
	
l1730:	
	btfsc	(49/8),(49)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l561
u2150:
	line	13
	
l1732:	
;WATER_TANK.C: 12: {
;WATER_TANK.C: 13: PORTB=0X0C;
	movlw	(0Ch)
	movwf	(6)	;volatile
	line	14
;WATER_TANK.C: 14: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	decfsz	((??_main+0)+0+2),f
	goto	u2217
opt asmopt_on

	line	15
;WATER_TANK.C: 15: x=0;
	movlw	low(0)
	movwf	(main@x)
	movlw	high(0)
	movwf	((main@x))+1
	line	16
;WATER_TANK.C: 16: }
	goto	l562
	line	17
	
l561:	
;WATER_TANK.C: 17: else if(RB0==1 && RB1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l563
u2160:
	
l1734:	
	btfsc	(49/8),(49)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l563
u2170:
	line	18
	
l1736:	
;WATER_TANK.C: 18: { if(x==0){
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l564
u2180:
	line	19
	
l1738:	
;WATER_TANK.C: 19: PORTB=0X0C;
	movlw	(0Ch)
	movwf	(6)	;volatile
	line	20
;WATER_TANK.C: 20: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2227:
	decfsz	((??_main+0)+0),f
	goto	u2227
	decfsz	((??_main+0)+0+1),f
	goto	u2227
	decfsz	((??_main+0)+0+2),f
	goto	u2227
opt asmopt_on

	line	21
;WATER_TANK.C: 21: }
	goto	l565
	line	22
	
l564:	
	line	24
	
l1740:	
;WATER_TANK.C: 22: else
;WATER_TANK.C: 23: {
;WATER_TANK.C: 24: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
	
l1742:	
;WATER_TANK.C: 25: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
	decfsz	((??_main+0)+0+2),f
	goto	u2237
opt asmopt_on

	line	26
	
l565:	
	line	27
;WATER_TANK.C: 26: }
;WATER_TANK.C: 27: }
	goto	l566
	line	28
	
l563:	
;WATER_TANK.C: 28: else if(RB1==1 && RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l567
u2190:
	
l1744:	
	btfss	(48/8),(48)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l567
u2200:
	line	29
	
l1746:	
;WATER_TANK.C: 29: { PORTB=0X00;
	clrf	(6)	;volatile
	line	30
	
l1748:	
;WATER_TANK.C: 30: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	decfsz	((??_main+0)+0+2),f
	goto	u2247
opt asmopt_on

	line	31
	
l1750:	
;WATER_TANK.C: 31: x=1;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	line	32
;WATER_TANK.C: 32: }
	goto	l568
	line	33
	
l567:	
	line	34
	
l1752:	
;WATER_TANK.C: 33: else
;WATER_TANK.C: 34: { PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	35
	
l1754:	
;WATER_TANK.C: 35: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
opt asmopt_on

	line	36
	
l568:	
	
l566:	
	
l562:	
	line	37
	
l569:	
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
