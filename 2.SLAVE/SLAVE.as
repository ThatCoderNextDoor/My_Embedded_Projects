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
	FNCALL	_main,_slave_initial
	FNCALL	_main,_slave_receive
	FNROOT	_main
	global	_PORTB
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_PORTB	set	6
	global	_SSPBUF
_SSPBUF	set	19
	global	_CKP
_CKP	set	164
	global	_RB6
_RB6	set	54
	global	_SSPEN
_SSPEN	set	165
	global	_SSPIF
_SSPIF	set	99
	global	_SSPM0
_SSPM0	set	160
	global	_SSPM1
_SSPM1	set	161
	global	_SSPM2
_SSPM2	set	162
	global	_SSPM3
_SSPM3	set	163
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_CKE
_CKE	set	1190
	global	_SMP
_SMP	set	1191
	file	"SLAVE.as"
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
	global	?_slave_initial
?_slave_initial:	; 0 bytes @ 0x0
	global	??_slave_initial
??_slave_initial:	; 0 bytes @ 0x0
	global	?_slave_receive
?_slave_receive:	; 0 bytes @ 0x0
	global	??_slave_receive
??_slave_receive:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	slave_receive@x
slave_receive@x:	; 1 bytes @ 0x1
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_slave_receive
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
;; (0) _main                                                 0     0      0      30
;;                      _slave_initial
;;                      _slave_receive
;; ---------------------------------------------------------------------------------
;; (1) _slave_receive                                        2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _slave_initial                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _slave_initial
;;   _slave_receive
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       2       1       14.3%
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
;;		line 19 in file "C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\2.SLAVE\SLAVE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_slave_initial
;;		_slave_receive
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\2.SLAVE\SLAVE.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l1741:	
;SLAVE.c: 20: TRISB=0X00;PORTB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	21
	
l1743:	
;SLAVE.c: 21: TRISC=0X38;
	movlw	(038h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	22
	
l1745:	
;SLAVE.c: 22: slave_initial();
	fcall	_slave_initial
	line	23
;SLAVE.c: 23: while(1){
	
l571:	
	line	24
	
l1747:	
;SLAVE.c: 24: slave_receive();
	fcall	_slave_receive
	line	25
	
l572:	
	line	23
	goto	l571
	
l573:	
	line	26
	
l574:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_slave_receive
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _slave_receive *****************
;; Defined at:
;;		line 12 in file "C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\2.SLAVE\SLAVE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               1    1[COMMON] unsigned char 
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
psect	text73
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\2.SLAVE\SLAVE.c"
	line	12
	global	__size_of_slave_receive
	__size_of_slave_receive	equ	__end_of_slave_receive-_slave_receive
	
_slave_receive:	
	opt	stack 7
; Regs used in _slave_receive: [wreg]
	line	13
	
l945:	
;SLAVE.c: 13: char x=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_slave_receive+0)+0
	movf	(??_slave_receive+0)+0,w
	movwf	(slave_receive@x)
	line	14
;SLAVE.c: 14: while(SSPIF==0);
	goto	l562
	
l563:	
	
l562:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l563
u10:
	
l564:	
	line	15
	
l947:	
;SLAVE.c: 15: if(x=='a'){RB6=1;}
	movf	(slave_receive@x),w
	xorlw	061h
	skipz
	goto	u21
	goto	u20
u21:
	goto	l565
u20:
	
l949:	
	bsf	(54/8),(54)&7
	goto	l566
	line	16
	
l565:	
	
l951:	
;SLAVE.c: 16: else if(x=='b'){RB6=0;}
	movf	(slave_receive@x),w
	xorlw	062h
	skipz
	goto	u31
	goto	u30
u31:
	goto	l567
u30:
	
l953:	
	bcf	(54/8),(54)&7
	
l567:	
	line	17
	
l566:	
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_slave_receive
	__end_of_slave_receive:
;; =============== function _slave_receive ends ============

	signat	_slave_receive,88
	global	_slave_initial
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _slave_initial *****************
;; Defined at:
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\2.SLAVE\SLAVE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
psect	text74
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\2.SLAVE\SLAVE.c"
	line	5
	global	__size_of_slave_initial
	__size_of_slave_initial	equ	__end_of_slave_initial-_slave_initial
	
_slave_initial:	
	opt	stack 7
; Regs used in _slave_initial: []
	line	6
	
l943:	
;SLAVE.c: 6: SMP=0;CKE=0;CKP=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1191/8)^080h,(1191)&7
	bcf	(1190/8)^080h,(1190)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(164/8),(164)&7
	line	7
;SLAVE.c: 7: SSPM3=0;SSPM1=0;
	bcf	(163/8),(163)&7
	bcf	(161/8),(161)&7
	line	8
;SLAVE.c: 8: SSPM2=1;SSPM0=1;
	bsf	(162/8),(162)&7
	bsf	(160/8),(160)&7
	line	9
;SLAVE.c: 9: SSPEN=1;
	bsf	(165/8),(165)&7
	line	10
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_slave_initial
	__end_of_slave_initial:
;; =============== function _slave_initial ends ============

	signat	_slave_initial,88
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
