subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og9 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
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
# 52 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 59 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 66 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 73 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 159 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 166 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 216 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 278 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 340 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 402 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 434 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 454 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 532 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 594 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 634 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 641 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 648 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 655 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 730 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 737 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 808 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 815 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 885 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 892 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 899 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 906 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 964 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1059 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1066 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1073 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1080 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1087 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1094 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1152 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1159 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1255 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1325 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1375 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1437 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1499 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1561 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1618 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1680 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1720 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1754 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1816 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1823 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1830 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1999 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2080 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2087 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2157 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2222 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2229 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2288 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2295 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2302 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2309 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2316 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2361 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
# 52 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
INDF equ 00h ;# 
# 59 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR0 equ 01h ;# 
# 66 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PCL equ 02h ;# 
# 73 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
STATUS equ 03h ;# 
# 159 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
FSR equ 04h ;# 
# 166 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTA equ 05h ;# 
# 216 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTB equ 06h ;# 
# 278 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTC equ 07h ;# 
# 340 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTD equ 08h ;# 
# 402 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PORTE equ 09h ;# 
# 434 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PCLATH equ 0Ah ;# 
# 454 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
INTCON equ 0Bh ;# 
# 532 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIR1 equ 0Ch ;# 
# 594 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIR2 equ 0Dh ;# 
# 634 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR1 equ 0Eh ;# 
# 641 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR1L equ 0Eh ;# 
# 648 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR1H equ 0Fh ;# 
# 655 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
T1CON equ 010h ;# 
# 730 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TMR2 equ 011h ;# 
# 737 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
T2CON equ 012h ;# 
# 808 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPBUF equ 013h ;# 
# 815 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPCON equ 014h ;# 
# 885 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR1 equ 015h ;# 
# 892 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR1L equ 015h ;# 
# 899 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR1H equ 016h ;# 
# 906 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCP1CON equ 017h ;# 
# 964 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
RCSTA equ 018h ;# 
# 1059 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TXREG equ 019h ;# 
# 1066 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
RCREG equ 01Ah ;# 
# 1073 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1080 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1087 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1094 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1152 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1159 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1255 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1325 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISA equ 085h ;# 
# 1375 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISB equ 086h ;# 
# 1437 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISC equ 087h ;# 
# 1499 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISD equ 088h ;# 
# 1561 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TRISE equ 089h ;# 
# 1618 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1680 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1720 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PCON equ 08Eh ;# 
# 1754 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1816 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
PR2 equ 092h ;# 
# 1823 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPADD equ 093h ;# 
# 1830 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1999 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
TXSTA equ 098h ;# 
# 2080 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
SPBRG equ 099h ;# 
# 2087 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CMCON equ 09Ch ;# 
# 2157 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2222 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2229 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2288 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2295 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEADR equ 010Dh ;# 
# 2302 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2309 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2316 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2361 "C:/Users/Ziad/Desktop/Academic/College zewail city/Courses/CIE/Year 4/CIE 408 Embedded Systems/Compiler/Microchip.PIC16Fxxx_DFP.1.7.162/xc8\pic\include\proc/pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_LCD_sendData
	FNCALL	_main,_UART_available
	FNCALL	_main,_UART_readByte
	FNCALL	_main,_UART_sendByte
	FNCALL	_main,_setup
	FNCALL	_setup,_EXT_INT_SetCallback
	FNCALL	_setup,_IOC_Enable
	FNCALL	_setup,_IOC_SetCallback
	FNCALL	_setup,_IR_Init
	FNCALL	_setup,_LCD_init
	FNCALL	_setup,_UART_init
	FNCALL	_setup,_interrupt_EXT_enable
	FNCALL	_setup,_interrupt_globalEnable
	FNCALL	_UART_init,_GPIO_SetPinDirection
	FNCALL	_LCD_init,_GPIO_SetPinDirection
	FNCALL	_LCD_init,_LCD_sendCommand
	FNCALL	_LCD_sendCommand,_GPIO_SetPinValue
	FNCALL	_LCD_sendCommand,_LCD_enablePulse
	FNCALL	_LCD_sendCommand,_LCD_setMode_command
	FNCALL	_LCD_setMode_command,_GPIO_SetPinValue
	FNCALL	_IR_Init,_GPIO_SetPinDirection
	FNCALL	_LCD_sendData,_GPIO_SetPinValue
	FNCALL	_LCD_sendData,_LCD_enablePulse
	FNCALL	_LCD_sendData,_LCD_setMode_data
	FNCALL	_LCD_setMode_data,_GPIO_SetPinValue
	FNCALL	_LCD_enablePulse,_GPIO_SetPinValue
	FNROOT	_main
	FNCALL	_ISR,_objectDetected_IR_ISR
	FNCALL	_ISR,_pedestrian_buttons_ISR
	FNCALL	_objectDetected_IR_ISR,_IR_ReadState
	FNCALL	_IR_ReadState,_GPIO_GetPinValue
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Global_EXT_Callback
	global	_Global_IOC_Callback
	global	_pedestrianPressed
	global	_objectDetected
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"build\test.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Global_EXT_Callback:
       ds      1

_Global_IOC_Callback:
       ds      1

_pedestrianPressed:
       ds      1

_objectDetected:
       ds      1

	file	"build\test.s"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_IR_ReadState:	; 1 bytes @ 0x0
?_IR_Init:	; 1 bytes @ 0x0
?_LCD_init:	; 1 bytes @ 0x0
?_UART_init:	; 1 bytes @ 0x0
?_interrupt_EXT_enable:	; 1 bytes @ 0x0
?_IOC_Enable:	; 1 bytes @ 0x0
?_interrupt_globalEnable:	; 1 bytes @ 0x0
?_UART_sendByte:	; 1 bytes @ 0x0
?_UART_available:	; 1 bytes @ 0x0
?_UART_readByte:	; 1 bytes @ 0x0
?_LCD_sendData:	; 1 bytes @ 0x0
?_LCD_sendCommand:	; 1 bytes @ 0x0
?_pedestrian_buttons_ISR:	; 1 bytes @ 0x0
?_objectDetected_IR_ISR:	; 1 bytes @ 0x0
?_setup:	; 1 bytes @ 0x0
?_GPIO_GetPinValue:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_LCD_enablePulse:	; 1 bytes @ 0x0
?_LCD_setMode_data:	; 1 bytes @ 0x0
?_LCD_setMode_command:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	GPIO_GetPinValue@Pin
GPIO_GetPinValue@Pin:	; 1 bytes @ 0x0
??_pedestrian_buttons_ISR:	; 1 bytes @ 0x0
	ds	1
??_GPIO_GetPinValue:	; 1 bytes @ 0x1
	ds	1
	global	GPIO_GetPinValue@Port
GPIO_GetPinValue@Port:	; 1 bytes @ 0x2
	ds	1
	global	GPIO_GetPinValue@Local_Value
GPIO_GetPinValue@Local_Value:	; 1 bytes @ 0x3
	ds	1
	global	IR_ReadState@sensorPin
IR_ReadState@sensorPin:	; 1 bytes @ 0x4
??_IR_ReadState:	; 1 bytes @ 0x4
	ds	1
	global	objectDetected_IR_ISR@pin1
objectDetected_IR_ISR@pin1:	; 1 bytes @ 0x5
??_objectDetected_IR_ISR:	; 1 bytes @ 0x5
	ds	1
	global	objectDetected_IR_ISR@pin2
objectDetected_IR_ISR@pin2:	; 1 bytes @ 0x6
	ds	1
	global	objectDetected_IR_ISR@pin3
objectDetected_IR_ISR@pin3:	; 1 bytes @ 0x7
	ds	1
	global	objectDetected_IR_ISR@pin4
objectDetected_IR_ISR@pin4:	; 1 bytes @ 0x8
	ds	1
??_ISR:	; 1 bytes @ 0x9
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_EXT_INT_SetCallback:	; 1 bytes @ 0x0
?_IOC_SetCallback:	; 1 bytes @ 0x0
?_GPIO_SetPinDirection:	; 1 bytes @ 0x0
?_GPIO_SetPinValue:	; 1 bytes @ 0x0
	global	GPIO_SetPinDirection@Pin
GPIO_SetPinDirection@Pin:	; 1 bytes @ 0x0
	global	GPIO_SetPinValue@Pin
GPIO_SetPinValue@Pin:	; 1 bytes @ 0x0
	global	EXT_INT_SetCallback@ptr
EXT_INT_SetCallback@ptr:	; 1 bytes @ 0x0
	global	IOC_SetCallback@ptr
IOC_SetCallback@ptr:	; 1 bytes @ 0x0
??_interrupt_EXT_enable:	; 1 bytes @ 0x0
??_IOC_Enable:	; 1 bytes @ 0x0
??_interrupt_globalEnable:	; 1 bytes @ 0x0
??_UART_sendByte:	; 1 bytes @ 0x0
??_UART_available:	; 1 bytes @ 0x0
??_UART_readByte:	; 1 bytes @ 0x0
	ds	1
	global	GPIO_SetPinDirection@Direction
GPIO_SetPinDirection@Direction:	; 1 bytes @ 0x1
	global	GPIO_SetPinValue@Value
GPIO_SetPinValue@Value:	; 1 bytes @ 0x1
	global	UART_sendByte@data
UART_sendByte@data:	; 1 bytes @ 0x1
??_EXT_INT_SetCallback:	; 1 bytes @ 0x1
??_IOC_SetCallback:	; 1 bytes @ 0x1
	ds	1
??_GPIO_SetPinDirection:	; 1 bytes @ 0x2
??_GPIO_SetPinValue:	; 1 bytes @ 0x2
	ds	1
	global	GPIO_SetPinDirection@Port
GPIO_SetPinDirection@Port:	; 1 bytes @ 0x3
	global	GPIO_SetPinValue@Port
GPIO_SetPinValue@Port:	; 1 bytes @ 0x3
	ds	1
??_IR_Init:	; 1 bytes @ 0x4
??_UART_init:	; 1 bytes @ 0x4
??_LCD_enablePulse:	; 1 bytes @ 0x4
??_LCD_setMode_data:	; 1 bytes @ 0x4
??_LCD_setMode_command:	; 1 bytes @ 0x4
	ds	2
??_LCD_sendData:	; 1 bytes @ 0x6
??_LCD_sendCommand:	; 1 bytes @ 0x6
	ds	1
	global	LCD_sendData@data
LCD_sendData@data:	; 1 bytes @ 0x7
	global	LCD_sendCommand@command
LCD_sendCommand@command:	; 1 bytes @ 0x7
	ds	1
??_LCD_init:	; 1 bytes @ 0x8
	ds	2
	global	main@piCommand
main@piCommand:	; 1 bytes @ 0xA
??_setup:	; 1 bytes @ 0xA
??_main:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     11      15
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    EXT_INT_SetCallback@ptr	PTR FTN()void  size(1) Largest target is 1
;!		 -> pedestrian_buttons_ISR(), 
;!
;!    Global_EXT_Callback	PTR FTN()void  size(1) Largest target is 1
;!		 -> pedestrian_buttons_ISR(), NULL(), 
;!
;!    Global_IOC_Callback	PTR FTN()void  size(1) Largest target is 1
;!		 -> objectDetected_IR_ISR(), NULL(), 
;!
;!    IOC_SetCallback@ptr	PTR FTN()void  size(1) Largest target is 1
;!		 -> objectDetected_IR_ISR(), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_objectDetected_IR_ISR
;!    _objectDetected_IR_ISR->_IR_ReadState
;!    _IR_ReadState->_GPIO_GetPinValue
;!
;!Critical Paths under _main in BANK0
;!
;!    _setup->_LCD_init
;!    _UART_init->_GPIO_SetPinDirection
;!    _LCD_init->_LCD_sendCommand
;!    _LCD_sendCommand->_LCD_enablePulse
;!    _LCD_setMode_command->_GPIO_SetPinValue
;!    _IR_Init->_GPIO_SetPinDirection
;!    _LCD_sendData->_LCD_enablePulse
;!    _LCD_setMode_data->_GPIO_SetPinValue
;!    _LCD_enablePulse->_GPIO_SetPinValue
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    6285
;!                                             10 BANK0      1     1      0
;!                       _LCD_sendData
;!                     _UART_available
;!                      _UART_readByte
;!                      _UART_sendByte
;!                              _setup
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0    3748
;!                _EXT_INT_SetCallback
;!                         _IOC_Enable
;!                    _IOC_SetCallback
;!                            _IR_Init
;!                           _LCD_init
;!                          _UART_init
;!               _interrupt_EXT_enable
;!             _interrupt_globalEnable
;! ---------------------------------------------------------------------------------
;! (2) _interrupt_globalEnable                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _interrupt_EXT_enable                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _UART_init                                            0     0      0     391
;!               _GPIO_SetPinDirection
;! ---------------------------------------------------------------------------------
;! (2) _LCD_init                                             2     2      0    2876
;!                                              8 BANK0      2     2      0
;!               _GPIO_SetPinDirection
;!                    _LCD_sendCommand
;! ---------------------------------------------------------------------------------
;! (3) _LCD_sendCommand                                      2     2      0    2485
;!                                              6 BANK0      2     2      0
;!                   _GPIO_SetPinValue
;!                    _LCD_enablePulse
;!                _LCD_setMode_command
;! ---------------------------------------------------------------------------------
;! (4) _LCD_setMode_command                                  0     0      0     751
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (2) _IR_Init                                              0     0      0     391
;!               _GPIO_SetPinDirection
;! ---------------------------------------------------------------------------------
;! (3) _GPIO_SetPinDirection                                 4     2      2     391
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _IOC_SetCallback                                      1     0      1      45
;!                                              0 BANK0      1     0      1
;! ---------------------------------------------------------------------------------
;! (2) _IOC_Enable                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _EXT_INT_SetCallback                                  1     0      1      45
;!                                              0 BANK0      1     0      1
;! ---------------------------------------------------------------------------------
;! (1) _UART_sendByte                                        2     2      0      29
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _UART_readByte                                        1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _UART_available                                       1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_sendData                                         2     2      0    2485
;!                                              6 BANK0      2     2      0
;!                   _GPIO_SetPinValue
;!                    _LCD_enablePulse
;!                   _LCD_setMode_data
;! ---------------------------------------------------------------------------------
;! (2) _LCD_setMode_data                                     0     0      0     751
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (4) _LCD_enablePulse                                      2     2      0     751
;!                                              4 BANK0      2     2      0
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (5) _GPIO_SetPinValue                                     4     2      2     751
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _ISR                                                  5     5      0     294
;!                                              9 COMMON     5     5      0
;!                                NULL *
;!              _objectDetected_IR_ISR *
;!             _pedestrian_buttons_ISR *
;! ---------------------------------------------------------------------------------
;! (7) _pedestrian_buttons_ISR                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _objectDetected_IR_ISR                                4     4      0     294
;!                                              5 COMMON     4     4      0
;!                       _IR_ReadState
;! ---------------------------------------------------------------------------------
;! (8) _IR_ReadState                                         1     1      0     202
;!                                              4 COMMON     1     1      0
;!                   _GPIO_GetPinValue
;! ---------------------------------------------------------------------------------
;! (9) _GPIO_GetPinValue                                     4     3      1     173
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (7) NULL(Fake)                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCD_sendData
;!     _GPIO_SetPinValue
;!     _LCD_enablePulse
;!       _GPIO_SetPinValue
;!     _LCD_setMode_data
;!       _GPIO_SetPinValue
;!   _UART_available
;!   _UART_readByte
;!   _UART_sendByte
;!   _setup
;!     _EXT_INT_SetCallback
;!     _IOC_Enable
;!     _IOC_SetCallback
;!     _IR_Init
;!       _GPIO_SetPinDirection
;!     _LCD_init
;!       _GPIO_SetPinDirection
;!       _LCD_sendCommand
;!         _GPIO_SetPinValue
;!         _LCD_enablePulse
;!         _LCD_setMode_command
;!           _GPIO_SetPinValue
;!     _UART_init
;!       _GPIO_SetPinDirection
;!     _interrupt_EXT_enable
;!     _interrupt_globalEnable
;!
;! _ISR (ROOT)
;!   NULL(Fake) *
;!   _objectDetected_IR_ISR *
;!     _IR_ReadState
;!       _GPIO_GetPinValue
;!   _pedestrian_buttons_ISR *
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14     14      14    100.0%
;!BANK0               80     11      15     18.8%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      29      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "APP/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  piCommand       1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   46[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_LCD_sendData
;;		_UART_available
;;		_UART_readByte
;;		_UART_sendByte
;;		_setup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"APP/main.c"
	line	66
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"APP/main.c"
	line	66
	
_main:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	68
	
l1219:	
	fcall	_setup
	line	74
	
l1221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_pedestrianPressed)),w	;volatile
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l1227
u1270:
	line	77
	
l1223:	
	movlw	low(050h)
	fcall	_UART_sendByte
	line	80
	
l1225:	
	clrf	(_pedestrianPressed)	;volatile
	line	84
	
l1227:	
		decf	((_objectDetected)),w	;volatile
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1233
u1280:
	line	87
	
l1229:	
	movlw	low(049h)
	fcall	_UART_sendByte
	line	88
	
l1231:	
	clrf	(_objectDetected)	;volatile
	line	91
	
l1233:	
	fcall	_UART_available
	xorlw	0
	skipnz
	goto	u1291
	goto	u1290
u1291:
	goto	l1221
u1290:
	line	94
	
l1235:	
	fcall	_UART_readByte
	movwf	(main@piCommand)
	line	97
	
l1237:	
	movf	(main@piCommand),w
	fcall	_LCD_sendData
	goto	l1221
	global	start
	ljmp	start
	callstack 0
	line	101
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 38 in file "APP/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_EXT_INT_SetCallback
;;		_IOC_Enable
;;		_IOC_SetCallback
;;		_IR_Init
;;		_LCD_init
;;		_UART_init
;;		_interrupt_EXT_enable
;;		_interrupt_globalEnable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext1
__ptext1:	;psect for function _setup
psect	text1
	file	"APP/main.c"
	line	38
	
_setup:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _setup: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	41
	
l1187:	
	fcall	_IR_Init
	line	44
	fcall	_LCD_init
	line	47
	fcall	_UART_init
	line	51
	
l1189:	
	movlw	(low((fp__pedestrian_buttons_ISR-i1fpbase)))&0ffh
	movwf	(EXT_INT_SetCallback@ptr)
	fcall	_EXT_INT_SetCallback
	line	54
	
l1191:	
	movlw	(low((fp__objectDetected_IR_ISR-i1fpbase)))&0ffh
	movwf	(IOC_SetCallback@ptr)
	fcall	_IOC_SetCallback
	line	57
	
l1193:	
	fcall	_interrupt_EXT_enable
	line	58
	
l1195:	
	fcall	_IOC_Enable
	line	61
	
l1197:	
	fcall	_interrupt_globalEnable
	line	63
	
l42:	
	return
	callstack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,89
	global	_interrupt_globalEnable

;; *************** function _interrupt_globalEnable *****************
;; Defined at:
;;		line 13 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	13
global __ptext2
__ptext2:	;psect for function _interrupt_globalEnable
psect	text2
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	13
	
_interrupt_globalEnable:	
;incstack = 0
	callstack 2
; Regs used in _interrupt_globalEnable: []
	line	15
	
l1171:	
	bsf	(11)+(7/8),(7)&7	;volatile
	line	16
	
l116:	
	return
	callstack 0
GLOBAL	__end_of_interrupt_globalEnable
	__end_of_interrupt_globalEnable:
	signat	_interrupt_globalEnable,89
	global	_interrupt_EXT_enable

;; *************** function _interrupt_EXT_enable *****************
;; Defined at:
;;		line 28 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext3
__ptext3:	;psect for function _interrupt_EXT_enable
psect	text3
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	28
	
_interrupt_EXT_enable:	
;incstack = 0
	callstack 2
; Regs used in _interrupt_EXT_enable: []
	line	30
	
l1165:	
	bsf	(11)+(4/8),(4)&7	;volatile
	line	31
	
l125:	
	return
	callstack 0
GLOBAL	__end_of_interrupt_EXT_enable
	__end_of_interrupt_EXT_enable:
	signat	_interrupt_EXT_enable,89
	global	_UART_init

;; *************** function _UART_init *****************
;; Defined at:
;;		line 8 in file "MCAL/MCAL_UART/UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_SetPinDirection
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_UART/UART.c"
	line	8
global __ptext4
__ptext4:	;psect for function _UART_init
psect	text4
	file	"MCAL/MCAL_UART/UART.c"
	line	8
	
_UART_init:	
;incstack = 0
	callstack 1
; Regs used in _UART_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	11
	
l1141:	
	movlw	033h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	15
	bsf	(152)^080h+(5/8),(5)&7	;volatile
	line	17
	bsf	(152)^080h+(2/8),(2)&7	;volatile
	line	19
	
l1143:	
	movlw	low(0EFh)
	andwf	(152)^080h,f	;volatile
	line	23
	
l1145:	
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(02h)
	fcall	_GPIO_SetPinDirection
	line	24
	
l1147:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(02h)
	fcall	_GPIO_SetPinDirection
	line	29
	
l1149:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24)+(7/8),(7)&7	;volatile
	line	31
	
l1151:	
	bsf	(24)+(4/8),(4)&7	;volatile
	line	32
	
l161:	
	return
	callstack 0
GLOBAL	__end_of_UART_init
	__end_of_UART_init:
	signat	_UART_init,89
	global	_LCD_init

;; *************** function _LCD_init *****************
;; Defined at:
;;		line 22 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_GPIO_SetPinDirection
;;		_LCD_sendCommand
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	22
global __ptext5
__ptext5:	;psect for function _LCD_init
psect	text5
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	22
	
_LCD_init:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _LCD_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	24
	
l1127:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	25
	bcf	status, 5	;RP0=0, select bank0
	clrf	(GPIO_SetPinDirection@Pin)
	incf	(GPIO_SetPinDirection@Pin),f
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	26
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	27
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	28
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	29
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	30
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	31
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	36
	bcf	status, 5	;RP0=0, select bank0
	clrf	(GPIO_SetPinDirection@Pin)
	incf	(GPIO_SetPinDirection@Pin),f
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	37
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	39
	
l1129:	
	asmopt push
asmopt off
movlw	104
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_init)+1)
	movlw	227
movwf	((??_LCD_init))
	u1357:
decfsz	((??_LCD_init)),f
	goto	u1357
	decfsz	((??_LCD_init)+1),f
	goto	u1357
	nop2
asmopt pop

	line	41
	
l1131:	
	movlw	low(038h)
	fcall	_LCD_sendCommand
	line	42
	asmopt push
asmopt off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_init)+1)
	movlw	151
movwf	((??_LCD_init))
	u1367:
decfsz	((??_LCD_init)),f
	goto	u1367
	decfsz	((??_LCD_init)+1),f
	goto	u1367
asmopt pop

	line	44
	
l1133:	
	movlw	low(0Ch)
	fcall	_LCD_sendCommand
	line	45
	
l1135:	
	asmopt push
asmopt off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_init)+1)
	movlw	151
movwf	((??_LCD_init))
	u1377:
decfsz	((??_LCD_init)),f
	goto	u1377
	decfsz	((??_LCD_init)+1),f
	goto	u1377
asmopt pop

	line	49
	movlw	low(01h)
	fcall	_LCD_sendCommand
	line	50
	
l1137:	
	asmopt push
asmopt off
movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_init)+1)
	movlw	47
movwf	((??_LCD_init))
	u1387:
decfsz	((??_LCD_init)),f
	goto	u1387
	decfsz	((??_LCD_init)+1),f
	goto	u1387
	nop2
asmopt pop

	line	52
	
l1139:	
	movlw	low(06h)
	fcall	_LCD_sendCommand
	line	54
	
l209:	
	return
	callstack 0
GLOBAL	__end_of_LCD_init
	__end_of_LCD_init:
	signat	_LCD_init,89
	global	_LCD_sendCommand

;; *************** function _LCD_sendCommand *****************
;; Defined at:
;;		line 83 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_GPIO_SetPinValue
;;		_LCD_enablePulse
;;		_LCD_setMode_command
;; This function is called by:
;;		_LCD_init
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	83
global __ptext6
__ptext6:	;psect for function _LCD_sendCommand
psect	text6
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	83
	
_LCD_sendCommand:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _LCD_sendCommand: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_sendCommand@command)
	line	85
	
l1111:	
	fcall	_LCD_setMode_command
	line	88
	movf	(LCD_sendCommand@command),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	clrf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	89
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	clrc
	rrf	(??_LCD_sendCommand),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	clrf	(GPIO_SetPinValue@Pin)
	incf	(GPIO_SetPinValue@Pin),f
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	90
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	movlw	02h
u1035:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1035
	movf	(0+(??_LCD_sendCommand)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(02h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	91
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	movlw	03h
u1045:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1045
	movf	(0+(??_LCD_sendCommand)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(03h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	92
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	movlw	04h
u1055:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1055
	movf	(0+(??_LCD_sendCommand)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(04h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	93
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	movlw	05h
u1065:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1065
	movf	(0+(??_LCD_sendCommand)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(05h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	94
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	movlw	06h
u1075:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1075
	movf	(0+(??_LCD_sendCommand)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(06h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	95
	movf	(LCD_sendCommand@command),w
	movwf	(??_LCD_sendCommand)
	movlw	07h
u1085:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1085
	movf	(0+(??_LCD_sendCommand)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(07h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	98
	fcall	_LCD_enablePulse
	line	100
	
l221:	
	return
	callstack 0
GLOBAL	__end_of_LCD_sendCommand
	__end_of_LCD_sendCommand:
	signat	_LCD_sendCommand,4217
	global	_LCD_setMode_command

;; *************** function _LCD_setMode_command *****************
;; Defined at:
;;		line 78 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_SetPinValue
;; This function is called by:
;;		_LCD_sendCommand
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext7
__ptext7:	;psect for function _LCD_setMode_command
psect	text7
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	78
	
_LCD_setMode_command:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _LCD_setMode_command: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	80
	
l1053:	
	clrf	(GPIO_SetPinValue@Pin)
	incf	(GPIO_SetPinValue@Pin),f
	clrf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	81
	
l218:	
	return
	callstack 0
GLOBAL	__end_of_LCD_setMode_command
	__end_of_LCD_setMode_command:
	signat	_LCD_setMode_command,89
	global	_IR_Init

;; *************** function _IR_Init *****************
;; Defined at:
;;		line 9 in file "HAL/HAL_IR/HAL_IR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_SetPinDirection
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_IR/HAL_IR.c"
	line	9
global __ptext8
__ptext8:	;psect for function _IR_Init
psect	text8
	file	"HAL/HAL_IR/HAL_IR.c"
	line	9
	
_IR_Init:	
;incstack = 0
	callstack 1
; Regs used in _IR_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1125:	
	movlw	low(07h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	13
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	14
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	15
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	16
	
l190:	
	return
	callstack 0
GLOBAL	__end_of_IR_Init
	__end_of_IR_Init:
	signat	_IR_Init,89
	global	_GPIO_SetPinDirection

;; *************** function _GPIO_SetPinDirection *****************
;; Defined at:
;;		line 9 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    0[BANK0 ] unsigned char 
;;  Direction       1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_init
;;		_IR_Init
;;		_LCD_init
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	9
global __ptext9
__ptext9:	;psect for function _GPIO_SetPinDirection
psect	text9
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	9
	
_GPIO_SetPinDirection:	
;incstack = 0
	callstack 1
; Regs used in _GPIO_SetPinDirection: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_SetPinDirection@Port)
	line	11
	
l1055:	
	goto	l1089
	line	14
	
l1057:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1061
u830:
	line	15
	
l1059:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u844
u845:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u844:
	addlw	-1
	skipz
	goto	u845
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l74
	line	17
	
l1061:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u854
u855:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u854:
	addlw	-1
	skipz
	goto	u855
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l74
	line	21
	
l1063:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l1067
u860:
	line	22
	
l1065:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u874
u875:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u874:
	addlw	-1
	skipz
	goto	u875
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l74
	line	24
	
l1067:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u884
u885:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u884:
	addlw	-1
	skipz
	goto	u885
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	goto	l74
	line	28
	
l1069:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l1073
u890:
	line	29
	
l1071:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u904
u905:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u904:
	addlw	-1
	skipz
	goto	u905
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l74
	line	31
	
l1073:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u914
u915:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u914:
	addlw	-1
	skipz
	goto	u915
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(135)^080h,f	;volatile
	goto	l74
	line	35
	
l1075:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1079
u920:
	line	36
	
l1077:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u934
u935:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u934:
	addlw	-1
	skipz
	goto	u935
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l74
	line	38
	
l1079:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u944
u945:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u944:
	addlw	-1
	skipz
	goto	u945
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(136)^080h,f	;volatile
	goto	l74
	line	42
	
l1081:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l1085
u950:
	line	43
	
l1083:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u964
u965:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u964:
	addlw	-1
	skipz
	goto	u965
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l74
	line	45
	
l1085:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u974
u975:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u974:
	addlw	-1
	skipz
	goto	u975
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(137)^080h,f	;volatile
	goto	l74
	line	50
	
l1089:	
	movf	(GPIO_SetPinDirection@Port),w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1057
	xorlw	1^0	; case 1
	skipnz
	goto	l1063
	xorlw	2^1	; case 2
	skipnz
	goto	l1069
	xorlw	3^2	; case 3
	skipnz
	goto	l1075
	xorlw	4^3	; case 4
	skipnz
	goto	l1081
	goto	l74
	asmopt pop

	line	51
	
l74:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_SetPinDirection
	__end_of_GPIO_SetPinDirection:
	signat	_GPIO_SetPinDirection,12409
	global	_IOC_SetCallback

;; *************** function _IOC_SetCallback *****************
;; Defined at:
;;		line 74 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    0[BANK0 ] PTR FTN()void 
;;		 -> objectDetected_IR_ISR(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	74
global __ptext10
__ptext10:	;psect for function _IOC_SetCallback
psect	text10
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	74
	
_IOC_SetCallback:	
;incstack = 0
	callstack 2
; Regs used in _IOC_SetCallback: [wreg+status,2+status,0]
	line	76
	
l1159:	
	movf	((IOC_SetCallback@ptr)),w
	btfsc	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l147
u1110:
	line	78
	
l1161:	
	movf	(IOC_SetCallback@ptr),w
	movwf	(_Global_IOC_Callback)
	line	83
	
l147:	
	return
	callstack 0
GLOBAL	__end_of_IOC_SetCallback
	__end_of_IOC_SetCallback:
	signat	_IOC_SetCallback,4217
	global	_IOC_Enable

;; *************** function _IOC_Enable *****************
;; Defined at:
;;		line 66 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	66
global __ptext11
__ptext11:	;psect for function _IOC_Enable
psect	text11
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	66
	
_IOC_Enable:	
;incstack = 0
	callstack 2
; Regs used in _IOC_Enable: [wreg+status,2+status,0]
	line	69
	
l1167:	
	movlw	low(0FEh)
	andwf	(11),f	;volatile
	line	71
	
l1169:	
	bsf	(11)+(3/8),(3)&7	;volatile
	line	72
	
l143:	
	return
	callstack 0
GLOBAL	__end_of_IOC_Enable
	__end_of_IOC_Enable:
	signat	_IOC_Enable,89
	global	_EXT_INT_SetCallback

;; *************** function _EXT_INT_SetCallback *****************
;; Defined at:
;;		line 51 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    0[BANK0 ] PTR FTN()void 
;;		 -> pedestrian_buttons_ISR(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext12
__ptext12:	;psect for function _EXT_INT_SetCallback
psect	text12
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	51
	
_EXT_INT_SetCallback:	
;incstack = 0
	callstack 2
; Regs used in _EXT_INT_SetCallback: [wreg+status,2+status,0]
	line	53
	
l1153:	
	movf	((EXT_INT_SetCallback@ptr)),w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l137
u1100:
	line	55
	
l1155:	
	movf	(EXT_INT_SetCallback@ptr),w
	movwf	(_Global_EXT_Callback)
	line	59
	
l137:	
	return
	callstack 0
GLOBAL	__end_of_EXT_INT_SetCallback
	__end_of_EXT_INT_SetCallback:
	signat	_EXT_INT_SetCallback,4217
	global	_UART_sendByte

;; *************** function _UART_sendByte *****************
;; Defined at:
;;		line 34 in file "MCAL/MCAL_UART/UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_UART/UART.c"
	line	34
global __ptext13
__ptext13:	;psect for function _UART_sendByte
psect	text13
	file	"MCAL/MCAL_UART/UART.c"
	line	34
	
_UART_sendByte:	
;incstack = 0
	callstack 3
; Regs used in _UART_sendByte: [wreg+status,2+status,0]
	movwf	(UART_sendByte@data)
	line	39
	
l1199:	
	
l1201:	
	movf	(12),w	;volatile
	movwf	(??_UART_sendByte)
	movlw	04h
u1165:
	clrc
	rrf	(??_UART_sendByte),f
	addlw	-1
	skipz
	goto	u1165
	btfss	(0+(??_UART_sendByte)),(0)&7
	goto	u1171
	goto	u1170
u1171:
	goto	l1201
u1170:
	line	41
	
l1203:	
	movf	(UART_sendByte@data),w
	movwf	(25)	;volatile
	line	42
	
l167:	
	return
	callstack 0
GLOBAL	__end_of_UART_sendByte
	__end_of_UART_sendByte:
	signat	_UART_sendByte,4217
	global	_UART_readByte

;; *************** function _UART_readByte *****************
;; Defined at:
;;		line 66 in file "MCAL/MCAL_UART/UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	66
global __ptext14
__ptext14:	;psect for function _UART_readByte
psect	text14
	file	"MCAL/MCAL_UART/UART.c"
	line	66
	
_UART_readByte:	
;incstack = 0
	callstack 3
; Regs used in _UART_readByte: [wreg+status,2+status,0]
	line	70
	
l1209:	
	
l1211:	
	movf	(12),w	;volatile
	movwf	(??_UART_readByte)
	movlw	05h
u1195:
	clrc
	rrf	(??_UART_readByte),f
	addlw	-1
	skipz
	goto	u1195
	btfss	(0+(??_UART_readByte)),(0)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l1211
u1200:
	line	75
	
l1213:	
	movf	(26),w	;volatile
	line	76
	
l183:	
	return
	callstack 0
GLOBAL	__end_of_UART_readByte
	__end_of_UART_readByte:
	signat	_UART_readByte,89
	global	_UART_available

;; *************** function _UART_available *****************
;; Defined at:
;;		line 61 in file "MCAL/MCAL_UART/UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	61
global __ptext15
__ptext15:	;psect for function _UART_available
psect	text15
	file	"MCAL/MCAL_UART/UART.c"
	line	61
	
_UART_available:	
;incstack = 0
	callstack 3
; Regs used in _UART_available: [wreg+status,2+status,0]
	line	63
	
l1205:	
	movf	(12),w	;volatile
	movwf	(??_UART_available)
	movlw	05h
u1185:
	clrc
	rrf	(??_UART_available),f
	addlw	-1
	skipz
	goto	u1185
	movf	(0+(??_UART_available)),w
	andlw	01h
	line	64
	
l177:	
	return
	callstack 0
GLOBAL	__end_of_UART_available
	__end_of_UART_available:
	signat	_UART_available,89
	global	_LCD_sendData

;; *************** function _LCD_sendData *****************
;; Defined at:
;;		line 61 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_GPIO_SetPinValue
;;		_LCD_enablePulse
;;		_LCD_setMode_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	61
global __ptext16
__ptext16:	;psect for function _LCD_sendData
psect	text16
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	61
	
_LCD_sendData:	
;incstack = 0
	callstack 1
; Regs used in _LCD_sendData: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(LCD_sendData@data)
	line	63
	
l1217:	
	fcall	_LCD_setMode_data
	line	66
	movf	(LCD_sendData@data),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	clrf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	67
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	clrc
	rrf	(??_LCD_sendData),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	clrf	(GPIO_SetPinValue@Pin)
	incf	(GPIO_SetPinValue@Pin),f
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	68
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	movlw	02h
u1215:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1215
	movf	(0+(??_LCD_sendData)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(02h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	69
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	movlw	03h
u1225:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1225
	movf	(0+(??_LCD_sendData)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(03h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	70
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	movlw	04h
u1235:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1235
	movf	(0+(??_LCD_sendData)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(04h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	71
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	movlw	05h
u1245:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1245
	movf	(0+(??_LCD_sendData)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(05h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	72
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	movlw	06h
u1255:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1255
	movf	(0+(??_LCD_sendData)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(06h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	73
	movf	(LCD_sendData@data),w
	movwf	(??_LCD_sendData)
	movlw	07h
u1265:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1265
	movf	(0+(??_LCD_sendData)),w
	movwf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	andwf	(GPIO_SetPinValue@Value),f
	movlw	low(07h)
	movwf	(GPIO_SetPinValue@Pin)
	movlw	low(03h)
	fcall	_GPIO_SetPinValue
	line	75
	fcall	_LCD_enablePulse
	line	76
	
l215:	
	return
	callstack 0
GLOBAL	__end_of_LCD_sendData
	__end_of_LCD_sendData:
	signat	_LCD_sendData,4217
	global	_LCD_setMode_data

;; *************** function _LCD_setMode_data *****************
;; Defined at:
;;		line 56 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_SetPinValue
;; This function is called by:
;;		_LCD_sendData
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	56
global __ptext17
__ptext17:	;psect for function _LCD_setMode_data
psect	text17
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	56
	
_LCD_setMode_data:	
;incstack = 0
	callstack 1
; Regs used in _LCD_setMode_data: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l1173:	
	clrf	(GPIO_SetPinValue@Pin)
	incf	(GPIO_SetPinValue@Pin),f
	clrf	(GPIO_SetPinValue@Value)
	incf	(GPIO_SetPinValue@Value),f
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	59
	
l212:	
	return
	callstack 0
GLOBAL	__end_of_LCD_setMode_data
	__end_of_LCD_setMode_data:
	signat	_LCD_setMode_data,89
	global	_LCD_enablePulse

;; *************** function _LCD_enablePulse *****************
;; Defined at:
;;		line 13 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_GPIO_SetPinValue
;; This function is called by:
;;		_LCD_sendData
;;		_LCD_sendCommand
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext18
__ptext18:	;psect for function _LCD_enablePulse
psect	text18
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	13
	
_LCD_enablePulse:	
;incstack = 0
	callstack 0
; Regs used in _LCD_enablePulse: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l1047:	
	movlw	low(02h)
	movwf	(GPIO_SetPinValue@Pin)
	clrf	(GPIO_SetPinValue@Value)
	incf	(GPIO_SetPinValue@Value),f
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	16
	
l1049:	
	asmopt push
asmopt off
movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_enablePulse)+1)
	movlw	47
movwf	((??_LCD_enablePulse))
	u1397:
decfsz	((??_LCD_enablePulse)),f
	goto	u1397
	decfsz	((??_LCD_enablePulse)+1),f
	goto	u1397
	nop2
asmopt pop

	line	17
	
l1051:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GPIO_SetPinValue@Pin)
	clrf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	18
	asmopt push
asmopt off
movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_enablePulse)+1)
	movlw	47
movwf	((??_LCD_enablePulse))
	u1407:
decfsz	((??_LCD_enablePulse)),f
	goto	u1407
	decfsz	((??_LCD_enablePulse)+1),f
	goto	u1407
	nop2
asmopt pop

	line	20
	
l206:	
	return
	callstack 0
GLOBAL	__end_of_LCD_enablePulse
	__end_of_LCD_enablePulse:
	signat	_LCD_enablePulse,89
	global	_GPIO_SetPinValue

;; *************** function _GPIO_SetPinValue *****************
;; Defined at:
;;		line 54 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    0[BANK0 ] unsigned char 
;;  Value           1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_enablePulse
;;		_LCD_setMode_data
;;		_LCD_sendData
;;		_LCD_setMode_command
;;		_LCD_sendCommand
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	54
global __ptext19
__ptext19:	;psect for function _GPIO_SetPinValue
psect	text19
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	54
	
_GPIO_SetPinValue:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _GPIO_SetPinValue: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_SetPinValue@Port)
	line	56
	
l1011:	
	goto	l1045
	line	59
	
l1013:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1017
u680:
	line	60
	
l1015:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u694
u695:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u694:
	addlw	-1
	skipz
	goto	u695
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(5),f	;volatile
	goto	l95
	line	62
	
l1017:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u704
u705:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u704:
	addlw	-1
	skipz
	goto	u705
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(5),f	;volatile
	goto	l95
	line	66
	
l1019:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u711
	goto	u710
u711:
	goto	l1023
u710:
	line	67
	
l1021:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u724
u725:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u724:
	addlw	-1
	skipz
	goto	u725
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(6),f	;volatile
	goto	l95
	line	69
	
l1023:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u734
u735:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u734:
	addlw	-1
	skipz
	goto	u735
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(6),f	;volatile
	goto	l95
	line	73
	
l1025:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u741
	goto	u740
u741:
	goto	l1029
u740:
	line	74
	
l1027:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u754
u755:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u754:
	addlw	-1
	skipz
	goto	u755
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(7),f	;volatile
	goto	l95
	line	76
	
l1029:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u764
u765:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u764:
	addlw	-1
	skipz
	goto	u765
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(7),f	;volatile
	goto	l95
	line	80
	
l1031:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u771
	goto	u770
u771:
	goto	l1035
u770:
	line	81
	
l1033:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u784
u785:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u784:
	addlw	-1
	skipz
	goto	u785
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(8),f	;volatile
	goto	l95
	line	83
	
l1035:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u794
u795:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u794:
	addlw	-1
	skipz
	goto	u795
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(8),f	;volatile
	goto	l95
	line	87
	
l1037:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u801
	goto	u800
u801:
	goto	l1041
u800:
	line	88
	
l1039:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u814
u815:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u814:
	addlw	-1
	skipz
	goto	u815
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(9),f	;volatile
	goto	l95
	line	90
	
l1041:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u824
u825:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u824:
	addlw	-1
	skipz
	goto	u825
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(9),f	;volatile
	goto	l95
	line	95
	
l1045:	
	movf	(GPIO_SetPinValue@Port),w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1013
	xorlw	1^0	; case 1
	skipnz
	goto	l1019
	xorlw	2^1	; case 2
	skipnz
	goto	l1025
	xorlw	3^2	; case 3
	skipnz
	goto	l1031
	xorlw	4^3	; case 4
	skipnz
	goto	l1037
	goto	l95
	asmopt pop

	line	96
	
l95:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_SetPinValue
	__end_of_GPIO_SetPinValue:
	signat	_GPIO_SetPinValue,12409
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 86 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		NULL
;;		_objectDetected_IR_ISR
;;		_pedestrian_buttons_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	86
global __ptext20
__ptext20:	;psect for function _ISR
psect	text20
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	86
	
_ISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	movf	btemp1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text20
	line	89
	
i1l1239:	
	btfss	(11),(0)&7
	goto	u130_21
	goto	u130_20
u130_21:
	goto	i1l1245
u130_20:
	line	93
	
i1l1241:	
	movlw	low(0FEh)
	andwf	(11),f	;volatile
	line	97
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_Global_IOC_Callback)),w
	btfsc	status,2
	goto	u131_21
	goto	u131_20
u131_21:
	goto	i1l1245
u131_20:
	line	99
	
i1l1243:	
	movf	(_Global_IOC_Callback),w
	fcall	i1fptable
	line	107
	
i1l1245:	
	movf	(11),w	;volatile
	movwf	(??_ISR)
	movlw	01h
u132_25:
	clrc
	rrf	(??_ISR),f
	addlw	-1
	skipz
	goto	u132_25
	btfss	(0+(??_ISR)),(0)&7
	goto	u133_21
	goto	u133_20
u133_21:
	goto	i1l156
u133_20:
	line	110
	
i1l1247:	
	movlw	low(0FDh)
	andwf	(11),f	;volatile
	line	113
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_Global_EXT_Callback)),w
	btfsc	status,2
	goto	u134_21
	goto	u134_20
u134_21:
	goto	i1l156
u134_20:
	line	115
	
i1l1249:	
	movf	(_Global_EXT_Callback),w
	fcall	i1fptable
	line	121
	
i1l156:	
	movf	(??_ISR+4),w
	movwf	btemp1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_pedestrian_buttons_ISR

;; *************** function _pedestrian_buttons_ISR *****************
;; Defined at:
;;		line 16 in file "APP/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"APP/main.c"
	line	16
global __ptext21
__ptext21:	;psect for function _pedestrian_buttons_ISR
psect	text21
	file	"APP/main.c"
	line	16
	
_pedestrian_buttons_ISR:	
;incstack = 0
	callstack 1
; Regs used in _pedestrian_buttons_ISR: []
	line	18
	
i1l1175:	
	movlw	01h
	movwf	(_pedestrianPressed)	;volatile
	line	19
	
i1l33:	
	return
	callstack 0
GLOBAL	__end_of_pedestrian_buttons_ISR
	__end_of_pedestrian_buttons_ISR:
	signat	_pedestrian_buttons_ISR,89
	global	_objectDetected_IR_ISR

;; *************** function _objectDetected_IR_ISR *****************
;; Defined at:
;;		line 21 in file "APP/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pin4            1    8[COMMON] _Bool 
;;  pin3            1    7[COMMON] _Bool 
;;  pin2            1    6[COMMON] _Bool 
;;  pin1            1    5[COMMON] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_IR_ReadState
;; This function is called by:
;;		_setup
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	21
global __ptext22
__ptext22:	;psect for function _objectDetected_IR_ISR
psect	text22
	file	"APP/main.c"
	line	21
	
_objectDetected_IR_ISR:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _objectDetected_IR_ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
i1l1177:	
	movlw	low(07h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin1)
	line	26
	movlw	low(06h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin2)
	line	27
	movlw	low(05h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin3)
	line	28
	movlw	low(04h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin4)
	line	30
	
i1l1179:	
	movf	((objectDetected_IR_ISR@pin1)),w
	btfss	status,2
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l38
u112_20:
	
i1l1181:	
	movf	((objectDetected_IR_ISR@pin2)),w
	btfss	status,2
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l38
u113_20:
	
i1l1183:	
	movf	((objectDetected_IR_ISR@pin3)),w
	btfss	status,2
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l38
u114_20:
	
i1l1185:	
	movf	((objectDetected_IR_ISR@pin4)),w
	btfsc	status,2
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l39
u115_20:
	
i1l38:	
	line	32
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_objectDetected)	;volatile
	line	35
	
i1l39:	
	return
	callstack 0
GLOBAL	__end_of_objectDetected_IR_ISR
	__end_of_objectDetected_IR_ISR:
	signat	_objectDetected_IR_ISR,89
	global	_IR_ReadState

;; *************** function _IR_ReadState *****************
;; Defined at:
;;		line 18 in file "HAL/HAL_IR/HAL_IR.c"
;; Parameters:    Size  Location     Type
;;  sensorPin       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sensorPin       1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_GPIO_GetPinValue
;; This function is called by:
;;		_objectDetected_IR_ISR
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_IR/HAL_IR.c"
	line	18
global __ptext23
__ptext23:	;psect for function _IR_ReadState
psect	text23
	file	"HAL/HAL_IR/HAL_IR.c"
	line	18
	
_IR_ReadState:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _IR_ReadState: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(IR_ReadState@sensorPin)
	line	21
	
i1l1113:	
	movf	(IR_ReadState@sensorPin),w
	movwf	(GPIO_GetPinValue@Pin)
	movlw	low(01h)
	fcall	_GPIO_GetPinValue
	xorlw	0
	skipz
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l1121
u109_20:
	line	24
	
i1l1115:	
	movlw	low(01h)
	goto	i1l194
	line	29
	
i1l1121:	
	movlw	low(0)
	line	32
	
i1l194:	
	return
	callstack 0
GLOBAL	__end_of_IR_ReadState
	__end_of_IR_ReadState:
	signat	_IR_ReadState,4217
	global	_GPIO_GetPinValue

;; *************** function _GPIO_GetPinValue *****************
;; Defined at:
;;		line 99 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    2[COMMON] unsigned char 
;;  Local_Value     1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IR_ReadState
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	99
global __ptext24
__ptext24:	;psect for function _GPIO_GetPinValue
psect	text24
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	99
	
_GPIO_GetPinValue:	
;incstack = 0
;; hardware stack exceeded
	callstack 0
; Regs used in _GPIO_GetPinValue: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_GetPinValue@Port)
	line	101
	
i1l1091:	
	clrf	(GPIO_GetPinValue@Local_Value)
	line	103
	goto	i1l1105
	line	106
	
i1l1093:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u98_24
u98_25:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u98_24:
	addlw	-1
	skipz
	goto	u98_25
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	107
	goto	i1l1107
	line	110
	
i1l1095:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u99_24
u99_25:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u99_24:
	addlw	-1
	skipz
	goto	u99_25
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	111
	goto	i1l1107
	line	114
	
i1l1097:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u100_24
u100_25:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u100_24:
	addlw	-1
	skipz
	goto	u100_25
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	115
	goto	i1l1107
	line	118
	
i1l1099:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u101_24
u101_25:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u101_24:
	addlw	-1
	skipz
	goto	u101_25
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	119
	goto	i1l1107
	line	122
	
i1l1101:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(9),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u102_24
u102_25:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u102_24:
	addlw	-1
	skipz
	goto	u102_25
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	123
	goto	i1l1107
	line	127
	
i1l1105:	
	movf	(GPIO_GetPinValue@Port),w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l1093
	xorlw	1^0	; case 1
	skipnz
	goto	i1l1095
	xorlw	2^1	; case 2
	skipnz
	goto	i1l1097
	xorlw	3^2	; case 3
	skipnz
	goto	i1l1099
	xorlw	4^3	; case 4
	skipnz
	goto	i1l1101
	goto	i1l1107
	asmopt pop

	line	129
	
i1l1107:	
	movf	(GPIO_GetPinValue@Local_Value),w
	line	130
	
i1l106:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_GetPinValue
	__end_of_GPIO_GetPinValue:
	signat	_GPIO_GetPinValue,8313
global	___latbits
___latbits	equ	2
	global	fptotal
fptotal equ 0
	global	i1fptotal
i1fptotal equ 4
	file ""
	line	#
psect	functab,class=ENTRY,delta=2
global __pfunctab
__pfunctab:
	global	fpbase
fpbase	equ	0
global	fptable
fptable:
	goto fptable	;no entries
	global	i1fptable,__i1fptable
__i1fptable:
i1fptable:
	movwf (btemp+1)&07Fh
	movlw high(i1fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	i1fpbase
i1fpbase:
	goto i1fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__objectDetected_IR_ISR:
	ljmp	_objectDetected_IR_ISR
	file ""
	line	#
fp__pedestrian_buttons_ISR:
	ljmp	_pedestrian_buttons_ISR
	global __end_of__i1fptable
	__end_of__i1fptable:
	global __size_of__i1fptable
	__size_of__i1fptable	equ	__end_of__i1fptable-__i1fptable
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
