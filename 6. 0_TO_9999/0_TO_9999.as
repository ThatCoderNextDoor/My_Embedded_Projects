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
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\24. 0_TO_9999\0_TO_9999.C"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Lenovo\Desktop\PIC\TASK\24. 0_TO_9999\0_TO_9999.C"
	dw 0x3F72 ;#
	FNROOT	_main
	global	main@F512
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\24. 0_TO_9999\0_TO_9999.C"
	line	8

;initializer for main@F512
	retlw	03Fh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	07h
	retlw	0

	retlw	07Fh
	retlw	0

	retlw	06Fh
	retlw	0

	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	file	"0_TO_9999.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\24. 0_TO_9999\0_TO_9999.C"
main@F512:
       ds      20

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 20 bytes @ 0x0
	ds	20
	global	main@w
main@w:	; 2 bytes @ 0x14
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x16
	ds	2
	global	main@y
main@y:	; 2 bytes @ 0x18
	ds	2
	global	main@z
main@z:	; 2 bytes @ 0x1A
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x1C
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x1E
	ds	2
	global	main@K
main@K:	; 2 bytes @ 0x20
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x22
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     36      56
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                40    40      0     457
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     36    36      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      3C      12        0.0%
;;ABS                  0      0      3C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     24      38       5       70.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "C:\Users\Lenovo\Desktop\PIC\TASK\24. 0_TO_9999\0_TO_9999.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  l               2   34[BANK0 ] int 
;;  K               2   32[BANK0 ] int 
;;  j               2   30[BANK0 ] int 
;;  i               2   28[BANK0 ] int 
;;  a              20    0[BANK0 ] int [10]
;;  z               2   26[BANK0 ] int 
;;  y               2   24[BANK0 ] int 
;;  x               2   22[BANK0 ] int 
;;  w               2   20[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      36       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      36       0       0       0
;;Total ram usage:       40 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Lenovo\Desktop\PIC\TASK\24. 0_TO_9999\0_TO_9999.C"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0]
	line	6
	
l1802:	
;0_TO_9999.C: 6: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	7
;0_TO_9999.C: 7: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	8
	
l1804:	
;0_TO_9999.C: 8: int a[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F512)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2230:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2230
	line	10
	
l1806:	
;0_TO_9999.C: 9: int w,x,y,z;
;0_TO_9999.C: 10: for(int i=0;i<=9;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l1808:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2245
	movlw	low(0Ah)
	subwf	(main@i),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l563
u2240:
	
l1810:	
	goto	l564
	line	11
	
l563:	
	line	12
	
l1812:	
;0_TO_9999.C: 11: {
;0_TO_9999.C: 12: w=i;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	(main@w+1)
	addwf	(main@w+1)
	movf	(main@i),w
	clrf	(main@w)
	addwf	(main@w)

	line	13
	
l1814:	
;0_TO_9999.C: 13: for(int j=0;j<=9;j++)
	movlw	low(0)
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l1816:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2255
	movlw	low(0Ah)
	subwf	(main@j),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l565
u2250:
	
l1818:	
	goto	l566
	line	14
	
l565:	
	line	15
	
l1820:	
;0_TO_9999.C: 14: {
;0_TO_9999.C: 15: x=j;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j+1),w
	clrf	(main@x+1)
	addwf	(main@x+1)
	movf	(main@j),w
	clrf	(main@x)
	addwf	(main@x)

	line	16
	
l1822:	
;0_TO_9999.C: 16: for(int K=0;K<=9;K++)
	movlw	low(0)
	movwf	(main@K)
	movlw	high(0)
	movwf	((main@K))+1
	
l1824:	
	movf	(main@K+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2265
	movlw	low(0Ah)
	subwf	(main@K),w
u2265:

	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l567
u2260:
	
l1826:	
	goto	l568
	line	17
	
l567:	
	line	18
	
l1828:	
;0_TO_9999.C: 17: {
;0_TO_9999.C: 18: y=K;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@K+1),w
	clrf	(main@y+1)
	addwf	(main@y+1)
	movf	(main@K),w
	clrf	(main@y)
	addwf	(main@y)

	line	19
	
l1830:	
;0_TO_9999.C: 19: for(int l=0;l<=9;l++)
	movlw	low(0)
	movwf	(main@l)
	movlw	high(0)
	movwf	((main@l))+1
	
l1832:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2275
	movlw	low(0Ah)
	subwf	(main@l),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l569
u2270:
	
l1834:	
	goto	l570
	line	20
	
l569:	
	line	21
	
l1836:	
;0_TO_9999.C: 20: {
;0_TO_9999.C: 21: z=l;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l+1),w
	clrf	(main@z+1)
	addwf	(main@z+1)
	movf	(main@l),w
	clrf	(main@z)
	addwf	(main@z)

	line	22
	
l1838:	
;0_TO_9999.C: 22: PORTD=0x07;
	movlw	(07h)
	movwf	(8)	;volatile
	line	23
	
l1840:	
;0_TO_9999.C: 23: PORTB=a[z];
	movf	(main@z),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	24
	
l1842:	
;0_TO_9999.C: 24: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2327:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2327
	nop2	;nop
	clrwdt
opt asmopt_on

	line	25
	
l1844:	
;0_TO_9999.C: 25: PORTD=0x0B;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	26
	
l1846:	
;0_TO_9999.C: 26: PORTB=a[y];
	movf	(main@y),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	27
	
l1848:	
;0_TO_9999.C: 27: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2337:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2337
	nop2	;nop
	clrwdt
opt asmopt_on

	line	28
	
l1850:	
;0_TO_9999.C: 28: PORTD=0x0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	29
	
l1852:	
;0_TO_9999.C: 29: PORTB=a[x];
	movf	(main@x),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	30
	
l1854:	
;0_TO_9999.C: 30: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u2347:
	clrwdt
decfsz	(??_main+0)+0,f
	goto	u2347
	nop2	;nop
	clrwdt
opt asmopt_on

	line	31
	
l1856:	
;0_TO_9999.C: 31: PORTD=0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l1858:	
;0_TO_9999.C: 32: PORTB=a[w];
	movf	(main@w),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	33
	
l1860:	
;0_TO_9999.C: 33: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	clrwdt
opt asmopt_on

	line	19
	
l1862:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	
l1864:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2285
	movlw	low(0Ah)
	subwf	(main@l),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l569
u2280:
	
l570:	
	line	16
	
l1866:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@K),f
	skipnc
	incf	(main@K+1),f
	movlw	high(01h)
	addwf	(main@K+1),f
	
l1868:	
	movf	(main@K+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2295
	movlw	low(0Ah)
	subwf	(main@K),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l567
u2290:
	
l568:	
	line	13
	
l1870:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l1872:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2305
	movlw	low(0Ah)
	subwf	(main@j),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l565
u2300:
	
l566:	
	line	10
	
l1874:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1876:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2315
	movlw	low(0Ah)
	subwf	(main@i),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l563
u2310:
	
l564:	
	line	38
	
l571:	
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
