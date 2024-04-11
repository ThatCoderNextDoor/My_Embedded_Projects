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
	FNCALL	_main,_master_initial
	FNCALL	_main,_master_trans
	FNROOT	_main
	global	_PORTC
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_CKP
_CKP	set	164
	global	_RD0
_RD0	set	64
	global	_SSPEN
_SSPEN	set	165
	global	_SSPM0
_SSPM0	set	160
	global	_SSPM1
_SSPM1	set	161
	global	_SSPM2
_SSPM2	set	162
	global	_SSPM3
_SSPM3	set	163
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_CKE
_CKE	set	1190
	global	_SMP
_SMP	set	1191
	file	"MASTER.as"
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
	global	?_master_initial
?_master_initial:	; 0 bytes @ 0x0
	global	??_master_initial
??_master_initial:	; 0 bytes @ 0x0
	global	?_master_trans
?_master_trans:	; 0 bytes @ 0x0
	global	??_master_trans
??_master_trans:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	master_trans@x
master_trans@x:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      1       1
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_master_trans
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
;; (0) _main                                                 0     0      0      15
;;                     _master_initial
;;                       _master_trans
;; ---------------------------------------------------------------------------------
;; (1) _master_trans                                         1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _master_initial                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _master_initial
;;   _master_trans
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      1       1       1        7.1%
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
;;		line 17 in file "C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\1.MASTER\..\1.MASTER\MASTER.C"
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
;;		_master_initial
;;		_master_trans
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\1.MASTER\..\1.MASTER\MASTER.C"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l1729:	
;MASTER.C: 18: TRISD=0X01;PORTD=0X00;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l1731:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	19
	
l1733:	
;MASTER.C: 19: TRISC=0X10;PORTC=0X00;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	20
	
l1735:	
;MASTER.C: 20: master_initial();
	fcall	_master_initial
	line	21
;MASTER.C: 21: while(1)
	
l565:	
	line	23
	
l1737:	
;MASTER.C: 22: {
;MASTER.C: 23: if(RD0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l566
u2140:
	line	25
	
l1739:	
;MASTER.C: 24: {
;MASTER.C: 25: master_trans('a');
	movlw	(061h)
	fcall	_master_trans
	line	26
;MASTER.C: 26: }
	goto	l567
	line	27
	
l566:	
	line	28
	
l1741:	
;MASTER.C: 27: else{
;MASTER.C: 28: master_trans('b');
	movlw	(062h)
	fcall	_master_trans
	line	29
	
l567:	
	line	30
	
l568:	
	line	21
	goto	l565
	
l569:	
	line	31
	
l570:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master_trans
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _master_trans *****************
;; Defined at:
;;		line 12 in file "C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\1.MASTER\..\1.MASTER\MASTER.C"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text73
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\1.MASTER\..\1.MASTER\MASTER.C"
	line	12
	global	__size_of_master_trans
	__size_of_master_trans	equ	__end_of_master_trans-_master_trans
	
_master_trans:	
	opt	stack 7
; Regs used in _master_trans: [wreg]
;master_trans@x stored from wreg
	movwf	(master_trans@x)
	line	13
	
l941:	
;MASTER.C: 13: SSPBUF=x;
	movf	(master_trans@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	14
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_master_trans
	__end_of_master_trans:
;; =============== function _master_trans ends ============

	signat	_master_trans,4216
	global	_master_initial
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _master_initial *****************
;; Defined at:
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\1.MASTER\..\1.MASTER\MASTER.C"
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\12.SPI_TASKS\1.MASTER\..\1.MASTER\MASTER.C"
	line	5
	global	__size_of_master_initial
	__size_of_master_initial	equ	__end_of_master_initial-_master_initial
	
_master_initial:	
	opt	stack 7
; Regs used in _master_initial: []
	line	6
	
l939:	
;MASTER.C: 6: SMP=0;CKE=0;CKP=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1191/8)^080h,(1191)&7
	bcf	(1190/8)^080h,(1190)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(164/8),(164)&7
	line	7
;MASTER.C: 7: SSPM3=0;SSPM2=0;SSPM1=0;SSPM0=0;
	bcf	(163/8),(163)&7
	bcf	(162/8),(162)&7
	bcf	(161/8),(161)&7
	bcf	(160/8),(160)&7
	line	8
;MASTER.C: 8: SSPEN=1;
	bsf	(165/8),(165)&7
	line	9
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_master_initial
	__end_of_master_initial:
;; =============== function _master_initial ends ============

	signat	_master_initial,88
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
