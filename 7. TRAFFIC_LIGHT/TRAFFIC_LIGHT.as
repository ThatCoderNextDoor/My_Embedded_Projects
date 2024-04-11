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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\TRAFFIC_LIGHT\TRAFFIC_LIGHT.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\TRAFFIC_LIGHT\TRAFFIC_LIGHT.C"
	dw 0x3F72 ;#
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"TRAFFIC_LIGHT.as"
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
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\TRAFFIC_LIGHT\TRAFFIC_LIGHT.C"
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\TRAFFIC_LIGHT\TRAFFIC_LIGHT.C"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	6
	
l1716:	
;TRAFFIC_LIGHT.C: 6: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	7
;TRAFFIC_LIGHT.C: 7: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	8
	
l1718:	
;TRAFFIC_LIGHT.C: 8: PORTB=0X0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	9
	
l1720:	
;TRAFFIC_LIGHT.C: 9: PORTD=0X01;
	movlw	(01h)
	movwf	(8)	;volatile
	line	10
	
l1722:	
;TRAFFIC_LIGHT.C: 10: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2147:
	decfsz	((??_main+0)+0),f
	goto	u2147
	decfsz	((??_main+0)+0+1),f
	goto	u2147
	decfsz	((??_main+0)+0+2),f
	goto	u2147
	nop2
opt asmopt_on

	line	11
	
l1724:	
;TRAFFIC_LIGHT.C: 11: PORTB=0X1E;
	movlw	(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	12
;TRAFFIC_LIGHT.C: 12: PORTD=0X00;
	clrf	(8)	;volatile
	line	13
	
l1726:	
;TRAFFIC_LIGHT.C: 13: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2157:
	decfsz	((??_main+0)+0),f
	goto	u2157
	decfsz	((??_main+0)+0+1),f
	goto	u2157
	decfsz	((??_main+0)+0+2),f
	goto	u2157
opt asmopt_on

	line	14
	
l1728:	
;TRAFFIC_LIGHT.C: 14: PORTB=0X0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	15
	
l1730:	
;TRAFFIC_LIGHT.C: 15: PORTD=0X02;
	movlw	(02h)
	movwf	(8)	;volatile
	line	16
	
l1732:	
;TRAFFIC_LIGHT.C: 16: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2167:
	decfsz	((??_main+0)+0),f
	goto	u2167
	decfsz	((??_main+0)+0+1),f
	goto	u2167
	decfsz	((??_main+0)+0+2),f
	goto	u2167
	nop2
opt asmopt_on

	line	17
	
l1734:	
;TRAFFIC_LIGHT.C: 17: PORTB=0X2D;
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	18
	
l1736:	
;TRAFFIC_LIGHT.C: 18: PORTD=0X00;
	clrf	(8)	;volatile
	line	19
;TRAFFIC_LIGHT.C: 19: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2177:
	decfsz	((??_main+0)+0),f
	goto	u2177
	decfsz	((??_main+0)+0+1),f
	goto	u2177
	decfsz	((??_main+0)+0+2),f
	goto	u2177
opt asmopt_on

	line	20
;TRAFFIC_LIGHT.C: 20: PORTB=0X0B;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	21
;TRAFFIC_LIGHT.C: 21: PORTD=0X04;
	movlw	(04h)
	movwf	(8)	;volatile
	line	22
;TRAFFIC_LIGHT.C: 22: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2187:
	decfsz	((??_main+0)+0),f
	goto	u2187
	decfsz	((??_main+0)+0+1),f
	goto	u2187
	decfsz	((??_main+0)+0+2),f
	goto	u2187
	nop2
opt asmopt_on

	line	23
;TRAFFIC_LIGHT.C: 23: PORTB=0X4B;
	movlw	(04Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	24
	
l1738:	
;TRAFFIC_LIGHT.C: 24: PORTD=0X00;
	clrf	(8)	;volatile
	line	25
	
l1740:	
;TRAFFIC_LIGHT.C: 25: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2197:
	decfsz	((??_main+0)+0),f
	goto	u2197
	decfsz	((??_main+0)+0+1),f
	goto	u2197
	decfsz	((??_main+0)+0+2),f
	goto	u2197
opt asmopt_on

	line	26
	
l1742:	
;TRAFFIC_LIGHT.C: 26: PORTB=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	27
	
l1744:	
;TRAFFIC_LIGHT.C: 27: PORTD=0X08;
	movlw	(08h)
	movwf	(8)	;volatile
	line	28
	
l1746:	
;TRAFFIC_LIGHT.C: 28: _delay((unsigned long)((3000)*(4000000/4000.0)));
	opt asmopt_off
movlw  16
movwf	((??_main+0)+0+2),f
movlw	42
movwf	((??_main+0)+0+1),f
	movlw	22
movwf	((??_main+0)+0),f
u2207:
	decfsz	((??_main+0)+0),f
	goto	u2207
	decfsz	((??_main+0)+0+1),f
	goto	u2207
	decfsz	((??_main+0)+0+2),f
	goto	u2207
	nop2
opt asmopt_on

	line	29
	
l1748:	
;TRAFFIC_LIGHT.C: 29: PORTB=0X87;
	movlw	(087h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	30
;TRAFFIC_LIGHT.C: 30: PORTD=0X00;
	clrf	(8)	;volatile
	line	31
	
l1750:	
;TRAFFIC_LIGHT.C: 31: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2217:
	decfsz	((??_main+0)+0),f
	goto	u2217
	decfsz	((??_main+0)+0+1),f
	goto	u2217
	decfsz	((??_main+0)+0+2),f
	goto	u2217
opt asmopt_on

	line	32
	
l561:	
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
