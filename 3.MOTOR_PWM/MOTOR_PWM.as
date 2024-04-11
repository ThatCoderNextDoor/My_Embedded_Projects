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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
	dw 0X3F72 ;#
	FNCALL	_main,_delay_incre
	FNCALL	_main,_delay_decre
	FNROOT	_main
	global	_CCP1CON
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_TMR2IF
_TMR2IF	set	97
	global	_PR2
_PR2	set	146
	global	_TRISC
_TRISC	set	135
	file	"MOTOR_PWM.as"
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
	global	?_delay_incre
?_delay_incre:	; 0 bytes @ 0x0
	global	??_delay_incre
??_delay_incre:	; 0 bytes @ 0x0
	global	?_delay_decre
?_delay_decre:	; 0 bytes @ 0x0
	global	??_delay_decre
??_delay_decre:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay_incre@i
delay_incre@i:	; 2 bytes @ 0x0
	global	delay_decre@i
delay_decre@i:	; 2 bytes @ 0x0
	ds	2
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
;;   _main->_delay_incre
;;   _main->_delay_decre
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
;; (0) _main                                                 0     0      0      90
;;                        _delay_incre
;;                        _delay_decre
;; ---------------------------------------------------------------------------------
;; (1) _delay_decre                                          2     2      0      45
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _delay_incre                                          2     2      0      45
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay_incre
;;   _delay_decre
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
;;		line 26 in file "C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_incre
;;		_delay_decre
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
	line	26
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	27
	
l1754:	
;MOTOR_PWM.C: 27: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	28
	
l1756:	
;MOTOR_PWM.C: 28: delay_incre();
	fcall	_delay_incre
	line	29
	
l1758:	
;MOTOR_PWM.C: 29: delay_decre();
	fcall	_delay_decre
	line	30
	
l575:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay_decre
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _delay_decre *****************
;; Defined at:
;;		line 15 in file "C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
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
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
	line	15
	global	__size_of_delay_decre
	__size_of_delay_decre	equ	__end_of_delay_decre-_delay_decre
	
_delay_decre:	
	opt	stack 7
; Regs used in _delay_decre: [wreg+btemp+0]
	
l956:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	16
;MOTOR_PWM.C: 16: CCP1CON=0X0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	17
;MOTOR_PWM.C: 17: for(int i=255;i>1;i--)
	movlw	low(0FFh)
	movwf	(delay_decre@i)
	movlw	high(0FFh)
	movwf	((delay_decre@i))+1
	
l958:	
	movf	(delay_decre@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(02h))^80h
	subwf	btemp+0,w
	skipz
	goto	u45
	movlw	low(02h)
	subwf	(delay_decre@i),w
u45:

	skipnc
	goto	u41
	goto	u40
u41:
	goto	l567
u40:
	
l960:	
	goto	l568
	line	18
	
l567:	
	
l962:	
;MOTOR_PWM.C: 18: {PR2=249;
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	19
;MOTOR_PWM.C: 19: CCPR1L=i;
	movf	(delay_decre@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	20
;MOTOR_PWM.C: 20: while(TMR2IF==0);
	goto	l569
	
l570:	
	
l569:	
	btfss	(97/8),(97)&7
	goto	u51
	goto	u50
u51:
	goto	l570
u50:
	
l571:	
	line	21
;MOTOR_PWM.C: 21: TMR2IF=0;
	bcf	(97/8),(97)&7
	line	17
	
l964:	
	movlw	low(-1)
	addwf	(delay_decre@i),f
	skipnc
	incf	(delay_decre@i+1),f
	movlw	high(-1)
	addwf	(delay_decre@i+1),f
	
l966:	
	movf	(delay_decre@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(02h))^80h
	subwf	btemp+0,w
	skipz
	goto	u65
	movlw	low(02h)
	subwf	(delay_decre@i),w
u65:

	skipnc
	goto	u61
	goto	u60
u61:
	goto	l567
u60:
	
l568:	
	line	24
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_delay_decre
	__end_of_delay_decre:
;; =============== function _delay_decre ends ============

	signat	_delay_decre,88
	global	_delay_incre
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _delay_incre *****************
;; Defined at:
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text74
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\50.MOTOR_PWM\MOTOR_PWM.C"
	line	5
	global	__size_of_delay_incre
	__size_of_delay_incre	equ	__end_of_delay_incre-_delay_incre
	
_delay_incre:	
	opt	stack 7
; Regs used in _delay_incre: [wreg+btemp+0]
	
l944:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	6
;MOTOR_PWM.C: 6: CCP1CON=0X0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	7
;MOTOR_PWM.C: 7: for(int i=1;i<255;i++)
	movlw	low(01h)
	movwf	(delay_incre@i)
	movlw	high(01h)
	movwf	((delay_incre@i))+1
	
l946:	
	movf	(delay_incre@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0FFh))^80h
	subwf	btemp+0,w
	skipz
	goto	u15
	movlw	low(0FFh)
	subwf	(delay_incre@i),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l559
u10:
	
l948:	
	goto	l560
	line	8
	
l559:	
	
l950:	
;MOTOR_PWM.C: 8: {PR2=249;
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	9
;MOTOR_PWM.C: 9: CCPR1L=i;
	movf	(delay_incre@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	10
;MOTOR_PWM.C: 10: while(TMR2IF==0);
	goto	l561
	
l562:	
	
l561:	
	btfss	(97/8),(97)&7
	goto	u21
	goto	u20
u21:
	goto	l562
u20:
	
l563:	
	line	11
;MOTOR_PWM.C: 11: TMR2IF=0;
	bcf	(97/8),(97)&7
	line	7
	
l952:	
	movlw	low(01h)
	addwf	(delay_incre@i),f
	skipnc
	incf	(delay_incre@i+1),f
	movlw	high(01h)
	addwf	(delay_incre@i+1),f
	
l954:	
	movf	(delay_incre@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0FFh))^80h
	subwf	btemp+0,w
	skipz
	goto	u35
	movlw	low(0FFh)
	subwf	(delay_incre@i),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l559
u30:
	
l560:	
	line	13
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_delay_incre
	__end_of_delay_incre:
;; =============== function _delay_incre ends ============

	signat	_delay_incre,88
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
