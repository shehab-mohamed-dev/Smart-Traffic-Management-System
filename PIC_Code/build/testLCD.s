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
	FNCALL	_main,_LCD_sendCommand
	FNCALL	_main,_LCD_sendString
	FNCALL	_main,_setup
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,___awdiv
	FNCALL	_vfpfcnvrt,___awmod
	FNCALL	_vfpfcnvrt,_abs
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_fputc,_putch
	FNCALL	_setup,_GPIO_Init
	FNCALL	_setup,_LCD_init
	FNCALL	_LCD_init,_GPIO_SetPinDirection
	FNCALL	_LCD_init,_LCD_sendCommand
	FNCALL	_LCD_sendCommand,_GPIO_SetPinValue
	FNCALL	_LCD_sendCommand,_LCD_enablePulse
	FNCALL	_LCD_sendCommand,_LCD_setMode_command
	FNCALL	_LCD_setMode_command,_GPIO_SetPinValue
	FNCALL	_LCD_sendString,_LCD_sendData
	FNCALL	_LCD_sendData,_GPIO_SetPinValue
	FNCALL	_LCD_sendData,_LCD_enablePulse
	FNCALL	_LCD_sendData,_LCD_setMode_data
	FNCALL	_LCD_setMode_data,_GPIO_SetPinValue
	FNCALL	_LCD_enablePulse,_GPIO_SetPinValue
	FNROOT	_main
	global	_width
	global	_prec
	global	_flags
	global	_dbuf
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	
STR_1:	
	retlw	84	;'T'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_3	equ	STR_2+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"build\testLCD.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_width:
       ds      2

_prec:
       ds      2

_flags:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_dbuf:
       ds      32

	file	"build\testLCD.s"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+020h)
	fcall	clear_ram0
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
?_GPIO_Init:	; 1 bytes @ 0x0
?_LCD_init:	; 1 bytes @ 0x0
?_LCD_sendCommand:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_setup:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_GPIO_SetPinDirection:	; 1 bytes @ 0x0
?_GPIO_SetPinValue:	; 1 bytes @ 0x0
?_LCD_enablePulse:	; 1 bytes @ 0x0
?_LCD_setMode_data:	; 1 bytes @ 0x0
?_LCD_sendData:	; 1 bytes @ 0x0
?_LCD_setMode_command:	; 1 bytes @ 0x0
?_fputc:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	GPIO_SetPinDirection@Pin
GPIO_SetPinDirection@Pin:	; 1 bytes @ 0x0
	global	GPIO_SetPinValue@Pin
GPIO_SetPinValue@Pin:	; 1 bytes @ 0x0
putch@c:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	fputc@c
fputc@c:	; 2 bytes @ 0x0
??_GPIO_Init:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
	ds	1
	global	GPIO_SetPinDirection@Direction
GPIO_SetPinDirection@Direction:	; 1 bytes @ 0x1
	global	GPIO_SetPinValue@Value
GPIO_SetPinValue@Value:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	fputc@fp
fputc@fp:	; 2 bytes @ 0x2
??_GPIO_SetPinDirection:	; 1 bytes @ 0x2
??_GPIO_SetPinValue:	; 1 bytes @ 0x2
	ds	1
	global	GPIO_SetPinDirection@Port
GPIO_SetPinDirection@Port:	; 1 bytes @ 0x3
	global	GPIO_SetPinValue@Port
GPIO_SetPinValue@Port:	; 1 bytes @ 0x3
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
??_fputc:	; 1 bytes @ 0x4
??_LCD_enablePulse:	; 1 bytes @ 0x4
??_LCD_setMode_data:	; 1 bytes @ 0x4
??_LCD_setMode_command:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	?_abs
?_abs:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	global	abs@a
abs@a:	; 2 bytes @ 0x6
??_LCD_sendCommand:	; 1 bytes @ 0x6
??_LCD_sendData:	; 1 bytes @ 0x6
	ds	1
	global	LCD_sendData@data
LCD_sendData@data:	; 1 bytes @ 0x7
	global	LCD_sendCommand@command
LCD_sendCommand@command:	; 1 bytes @ 0x7
	ds	1
?_LCD_sendString:	; 1 bytes @ 0x8
	global	LCD_sendString@string
LCD_sendString@string:	; 2 bytes @ 0x8
??_LCD_init:	; 1 bytes @ 0x8
??_abs:	; 1 bytes @ 0x8
	ds	2
	global	LCD_sendString@i
LCD_sendString@i:	; 1 bytes @ 0xA
??_LCD_sendString:	; 1 bytes @ 0xA
??_setup:	; 1 bytes @ 0xA
	ds	3
	global	vfprintf@cfmt
vfprintf@cfmt:	; 1 bytes @ 0xD
??_vfprintf:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_vfpfcnvrt:	; 1 bytes @ 0x0
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 2 bytes @ 0x0
	ds	2
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 1 bytes @ 0x2
	ds	1
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 1 bytes @ 0x3
	ds	1
??_vfpfcnvrt:	; 1 bytes @ 0x4
	ds	2
	global	vfpfcnvrt@done
vfpfcnvrt@done:	; 1 bytes @ 0x6
	ds	1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 1 bytes @ 0x7
	ds	1
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0x8
	ds	4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0xC
	ds	1
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0xD
	global	vfprintf@fp
vfprintf@fp:	; 2 bytes @ 0xD
	ds	2
	global	vfprintf@fmt
vfprintf@fmt:	; 1 bytes @ 0xF
	ds	1
	global	vfprintf@ap
vfprintf@ap:	; 1 bytes @ 0x10
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x11
	global	sprintf@s
sprintf@s:	; 1 bytes @ 0x11
	ds	1
	global	sprintf@fmt
sprintf@fmt:	; 1 bytes @ 0x12
	ds	3
??_sprintf:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@f
sprintf@f:	; 11 bytes @ 0x17
	ds	11
??_main:	; 1 bytes @ 0x22
	ds	3
	global	main@buffer
main@buffer:	; 16 bytes @ 0x25
	ds	16
	global	main@carCount
main@carCount:	; 2 bytes @ 0x35
	ds	2
;!
;!Data Sizes:
;!    Strings     25
;!    Constant    0
;!    Data        0
;!    BSS         37
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     55      60
;!    BANK1            80      0      32
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    f$.$buffer	PTR unsigned char  size(2) Largest target is 16
;!		 -> main@buffer(BANK0[16]), 
;!
;!    f$.$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    fputc@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    fputc@fp$.$buffer	PTR unsigned char  size(2) Largest target is 16
;!		 -> main@buffer(BANK0[16]), 
;!
;!    fputc@fp$.$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_sendString@string	PTR const unsigned char  size(2) Largest target is 16
;!		 -> main@buffer(BANK0[16]), STR_1(CODE[16]), 
;!
;!    S550$buffer	PTR unsigned char  size(2) Largest target is 16
;!		 -> main@buffer(BANK0[16]), 
;!
;!    S550$source	PTR const unsigned char  size(1) Largest target is 0
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@fmt	PTR const unsigned char  size(1) Largest target is 9
;!		 -> STR_2(CODE[9]), STR_3(CODE[9]), 
;!
;!    sprintf@s	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@buffer(BANK0[16]), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(1) Largest target is 9
;!		 -> STR_2(CODE[9]), STR_3(CODE[9]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(COMMON[1]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!
;!    vfprintf@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(BANK0[1]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(1) Largest target is 9
;!		 -> STR_2(CODE[9]), STR_3(CODE[9]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(1) Largest target is 9
;!		 -> STR_2(CODE[9]), STR_3(CODE[9]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(2) Largest target is 11
;!		 -> sprintf@f(BANK0[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _sprintf->_vfprintf
;!    _vfpfcnvrt->_fputc
;!    _abs->___awmod
;!    _setup->_LCD_init
;!    _LCD_init->_LCD_sendCommand
;!    _LCD_sendCommand->_LCD_enablePulse
;!    _LCD_setMode_command->_GPIO_SetPinValue
;!    _LCD_sendString->_LCD_sendData
;!    _LCD_sendData->_LCD_enablePulse
;!    _LCD_setMode_data->_GPIO_SetPinValue
;!    _LCD_enablePulse->_GPIO_SetPinValue
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                21    21      0    9829
;!                                             34 BANK0     21    21      0
;!                    _LCD_sendCommand
;!                     _LCD_sendString
;!                              _setup
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             19    15      4    1762
;!                                             17 BANK0     17    13      4
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (2) _vfprintf                                             5     1      4    1559
;!                                             13 COMMON     1     1      0
;!                                             13 BANK0      4     0      4
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (3) _vfpfcnvrt                                           13     9      4    1434
;!                                              0 BANK0     13     9      4
;!                            ___awdiv
;!                            ___awmod
;!                                _abs
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (4) _fputc                                               13     9      4     230
;!                                              0 COMMON    13     9      4
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (5) _putch                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (4) _abs                                                  4     2      2      67
;!                                              6 COMMON     4     2      2
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              6     2      4     298
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4     302
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0    2864
;!                          _GPIO_Init
;!                           _LCD_init
;! ---------------------------------------------------------------------------------
;! (2) _LCD_init                                             2     2      0    2864
;!                                              8 COMMON     2     2      0
;!               _GPIO_SetPinDirection
;!                    _LCD_sendCommand
;! ---------------------------------------------------------------------------------
;! (3) _LCD_sendCommand                                      2     2      0    2485
;!                                              6 COMMON     2     2      0
;!                   _GPIO_SetPinValue
;!                    _LCD_enablePulse
;!                _LCD_setMode_command
;! ---------------------------------------------------------------------------------
;! (4) _LCD_setMode_command                                  0     0      0     751
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (3) _GPIO_SetPinDirection                                 4     2      2     379
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_sendString                                       3     1      2    2578
;!                                              8 COMMON     3     1      2
;!                       _LCD_sendData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_sendData                                         2     2      0    2485
;!                                              6 COMMON     2     2      0
;!                   _GPIO_SetPinValue
;!                    _LCD_enablePulse
;!                   _LCD_setMode_data
;! ---------------------------------------------------------------------------------
;! (3) _LCD_setMode_data                                     0     0      0     751
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (4) _LCD_enablePulse                                      2     2      0     751
;!                                              4 COMMON     2     2      0
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (5) _GPIO_SetPinValue                                     4     2      2     751
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCD_sendCommand
;!     _GPIO_SetPinValue
;!     _LCD_enablePulse
;!       _GPIO_SetPinValue
;!     _LCD_setMode_command
;!       _GPIO_SetPinValue
;!   _LCD_sendString
;!     _LCD_sendData
;!       _GPIO_SetPinValue
;!       _LCD_enablePulse
;!       _LCD_setMode_data
;!         _GPIO_SetPinValue
;!   _setup
;!     _GPIO_Init
;!     _LCD_init
;!       _GPIO_SetPinDirection
;!       _LCD_sendCommand
;!   _sprintf
;!     _vfprintf
;!       _vfpfcnvrt
;!         ___awdiv
;!         ___awmod
;!         _abs
;!           ___awmod (ARG)
;!         _fputc
;!           _putch
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14     14      14    100.0%
;!BANK0               80     55      60     75.0%
;!BANK1               80      0      32     40.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     106      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "APP/main_test_LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         16   37[BANK0 ] unsigned char [16]
;;  carCount        2   53[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      18       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_LCD_sendCommand
;;		_LCD_sendString
;;		_setup
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"APP/main_test_LCD.c"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"APP/main_test_LCD.c"
	line	17
	
_main:	
;incstack = 0
	callstack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	20
	
l1340:	
	fcall	_setup
	line	24
	
l1342:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(LCD_sendString@string)
	movlw	80h
	movwf	(LCD_sendString@string+1)
	fcall	_LCD_sendString
	line	27
	
l1344:	
	movlw	02Ah
	movwf	(main@carCount)
	movlw	0
	movwf	((main@carCount))+1
	line	32
	
l1346:	
	movlw	low(0C0h)
	fcall	_LCD_sendCommand
	line	36
	
l1348:	
	movlw	(low(main@buffer|((0x0)<<8)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@s)
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@fmt)
	movlw	02Ah
	movwf	0+(?_sprintf)+02h
	movlw	0
	movwf	(0+(?_sprintf)+02h)+1
	fcall	_sprintf
	line	39
	
l1350:	
	movlw	(low(main@buffer|((0x0)<<8))&0ffh)
	movwf	(LCD_sendString@string)
	movlw	(0x0)
	movwf	(LCD_sendString@string+1)
	fcall	_LCD_sendString
	line	43
	
l1352:	
	movlw	low(0C0h)
	fcall	_LCD_sendCommand
	line	44
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@carCount),f
	skipnc
	incf	(main@carCount+1),f
	movlw	0
	addwf	(main@carCount+1),f
	line	45
	
l1354:	
	movlw	(low(main@buffer|((0x0)<<8)))&0ffh
	movwf	(sprintf@s)
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@fmt)
	movf	(main@carCount+1),w
	movwf	1+(?_sprintf)+02h
	movf	(main@carCount),w
	movwf	0+(?_sprintf)+02h
	fcall	_sprintf
	line	46
	
l1356:	
	movlw	(low(main@buffer|((0x0)<<8))&0ffh)
	movwf	(LCD_sendString@string)
	movlw	(0x0)
	movwf	(LCD_sendString@string+1)
	fcall	_LCD_sendString
	line	47
	
l1358:	
	asmopt push
asmopt off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	19
movwf	((??_main)+1)
	movlw	173
movwf	((??_main))
	u1597:
decfsz	((??_main)),f
	goto	u1597
	decfsz	((??_main)+1),f
	goto	u1597
	decfsz	((??_main)+2),f
	goto	u1597
asmopt pop

	goto	l1352
	global	start
	ljmp	start
	callstack 0
	line	51
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 9 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\nf_sprintf.c"
;; Parameters:    Size  Location     Type
;;  s               1   17[BANK0 ] PTR unsigned char 
;;		 -> main@buffer(16), 
;;  fmt             1   18[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(9), STR_2(9), 
;; Auto vars:     Size  Location     Type
;;  f              11   23[BANK0 ] struct _IO_FILE
;;  ret             2    0        int 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   17[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\nf_sprintf.c"
	line	9
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\nf_sprintf.c"
	line	9
	
_sprintf:	
;incstack = 0
	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l1326:	
	movlw	(low(?_sprintf|((0x0)<<8)+02h))&0ffh
	movwf	(sprintf@ap)
	line	16
	
l1328:	
		movf	(sprintf@s),w
	movwf	(sprintf@f)
	movlw	0x0
	movwf	(sprintf@f+1)

	line	17
	
l1330:	
	clrf	0+(sprintf@f)+02h
	clrf	1+(sprintf@f)+02h
	line	18
	
l1332:	
	clrf	0+(sprintf@f)+09h
	clrf	1+(sprintf@f)+09h
	line	19
	
l1334:	
	movlw	low(sprintf@f)
	movwf	(vfprintf@fp)
	movlw	high(sprintf@f)
	movwf	((vfprintf@fp))+1
	movf	(sprintf@fmt),w
	movwf	(vfprintf@fmt)
	movlw	(low(sprintf@ap|((0x0)<<8)))&0ffh
	movwf	(vfprintf@ap)
	fcall	_vfprintf
	line	20
	
l1336:	
	movf	0+(sprintf@f)+02h,w
	addwf	(sprintf@s),w
	movwf	(??_sprintf)
	movf	(0+(??_sprintf)),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	23
	
l660:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1817 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   13[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1   15[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(9), STR_2(9), 
;;  ap              1   16[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  cfmt            1   13[COMMON] PTR unsigned char 
;;		 -> STR_3(9), STR_2(9), 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\doprnt.c"
	line	1817
global __ptext2
__ptext2:	;psect for function _vfprintf
psect	text2
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\doprnt.c"
	line	1817
	
_vfprintf:	
;incstack = 0
	callstack 3
; Regs used in _vfprintf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1822
	
l1304:	
	movf	(vfprintf@fmt),w
	movwf	(vfprintf@cfmt)
	line	1826
	goto	l1308
	line	1830
	
l1306:	
		movf	(vfprintf@fp),w
	movwf	(vfpfcnvrt@fp)
movf	(vfprintf@fp+1),w
	movwf	(vfpfcnvrt@fp+1)

	movlw	(low(vfprintf@cfmt|((0x00)<<8)))&0ffh
	movwf	(vfpfcnvrt@fmt)
	movf	(vfprintf@ap),w
	movwf	(vfpfcnvrt@ap)
	fcall	_vfpfcnvrt
	line	1826
	
l1308:	
	movf	(vfprintf@cfmt),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l1306
u1570:
	line	1835
	
l1310:	
	clrf	(?_vfprintf)
	clrf	(?_vfprintf+1)
	line	1840
	
l704:	
	return
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1177 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2    0[BANK0 ] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;;  fmt             1    2[BANK0 ] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(1), 
;;  ap              1    3[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  convarg         4    8[BANK0 ] struct .
;;  c               1   12[BANK0 ] unsigned char 
;;  cp              1    7[BANK0 ] PTR unsigned char 
;;		 -> STR_3(9), STR_2(9), 
;;  done            1    6[BANK0 ] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_abs
;;		_fputc
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	line	1177
global __ptext3
__ptext3:	;psect for function _vfpfcnvrt
psect	text3
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\doprnt.c"
	line	1177
	
_vfpfcnvrt:	
;incstack = 0
	callstack 3
; Regs used in _vfpfcnvrt: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1201
	
l1236:	
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l1280
u1410:
	line	1202
	
l1238:	
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	line	1204
	
l1240:	
	clrf	(_width)
	clrf	(_width+1)
	movlw	(low(0))&0ffh
	movwf	(_flags)
	line	1205
	
l1242:	
	movlw	0FFh
	movwf	(_prec)
	movlw	0FFh
	movwf	((_prec))+1
	line	1291
	
l1244:	
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	(vfpfcnvrt@cp)
	line	1361
	
l1246:	
	movf	(vfpfcnvrt@cp),w
	movwf	fsr0
	fcall	stringdir
	xorlw	064h
	skipnz
	goto	u1421
	goto	u1420
u1421:
	goto	l1250
u1420:
	
l1248:	
	movf	(vfpfcnvrt@cp),w
	movwf	fsr0
	fcall	stringdir
	xorlw	069h
	skipz
	goto	u1431
	goto	u1430
u1431:
	goto	l1276
u1430:
	line	1404
	
l1250:	
	movf	(vfpfcnvrt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??_vfpfcnvrt))
	movlw	02h
	addwf	indf,f
	movf	((??_vfpfcnvrt)),w
	movwf	fsr0
	movf	indf,w
	movwf	(vfpfcnvrt@convarg)
	incf	fsr0,f
	movf	indf,w
	movwf	(vfpfcnvrt@convarg+1)
	line	1406
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	(vfpfcnvrt@cp),w
	addlw	01h
	movwf	indf
	line	1408
	
l1252:	
	movlw	020h
	movwf	(vfpfcnvrt@c)
	line	1409
	
l1254:	
	btfsc	(vfpfcnvrt@convarg+1),7
	goto	u1441
	goto	u1440
u1441:
	movlw	1
	goto	u1450
u1440:
	movlw	0
u1450:
	movwf	(vfpfcnvrt@done)
	line	1411
	
l1256:	
	movlw	01h
	subwf	(vfpfcnvrt@c),f
	movf	((vfpfcnvrt@c)),w
	addlw	low(_dbuf|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(vfpfcnvrt@convarg+1),w
	movwf	(___awmod@dividend+1)
	movf	(vfpfcnvrt@convarg),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(abs@a+1)
	movf	(0+(?___awmod)),w
	movwf	(abs@a)
	fcall	_abs
	movf	(0+(?_abs)),w
	addlw	030h
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	1412
	
l1258:	
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(vfpfcnvrt@convarg+1),w
	movwf	(___awdiv@dividend+1)
	movf	(vfpfcnvrt@convarg),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(vfpfcnvrt@convarg+1)
	movf	(0+(?___awdiv)),w
	movwf	(vfpfcnvrt@convarg)
	line	1416
	
l1260:	
	movf	((vfpfcnvrt@convarg)),w
iorwf	((vfpfcnvrt@convarg+1)),w
	btfsc	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l1264
u1460:
	
l1262:	
	movf	((vfpfcnvrt@c)),w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l1256
u1470:
	line	1417
	
l1264:	
	movf	((vfpfcnvrt@c)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l1274
u1480:
	
l1266:	
	movf	((vfpfcnvrt@done)),w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l1274
u1490:
	line	1418
	
l1268:	
	movlw	01h
	subwf	(vfpfcnvrt@c),f
	movf	((vfpfcnvrt@c)),w
	addlw	low(_dbuf|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	02Dh
	movwf	indf
	goto	l1274
	line	1424
	
l1270:	
	movf	(vfpfcnvrt@c),w
	addlw	low(_dbuf|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_vfpfcnvrt)
	clrf	(??_vfpfcnvrt+1)
	movf	(0+(??_vfpfcnvrt)),w
	movwf	(fputc@c)
	movf	(1+(??_vfpfcnvrt)),w
	movwf	(fputc@c+1)
		movf	(vfpfcnvrt@fp),w
	movwf	(fputc@fp)
movf	(vfpfcnvrt@fp+1),w
	movwf	(fputc@fp+1)

	fcall	_fputc
	
l1272:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(vfpfcnvrt@c),f
	line	1423
	
l1274:	
		movlw	32
	xorwf	((vfpfcnvrt@c)),w
	btfss	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l1270
u1500:
	goto	l698
	line	1806
	
l1276:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movlw	low(01h)
	addwf	indf,f
	goto	l698
	line	1811
	
l1280:	
	movf	(vfpfcnvrt@fmt),w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_vfpfcnvrt)
	clrf	(??_vfpfcnvrt+1)
	movf	(0+(??_vfpfcnvrt)),w
	movwf	(fputc@c)
	movf	(1+(??_vfpfcnvrt)),w
	movwf	(fputc@c+1)
		movf	(vfpfcnvrt@fp),w
	movwf	(fputc@fp)
movf	(vfpfcnvrt@fp+1),w
	movwf	(fputc@fp+1)

	fcall	_fputc
	goto	l1276
	line	1814
	
l698:	
	return
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12409
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[COMMON] int 
;;  fp              2    2[COMMON] PTR struct _IO_FILE
;;		 -> sprintf@f(11), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          9       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext4
__ptext4:	;psect for function _fputc
psect	text4
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:	
;incstack = 0
	callstack 3
; Regs used in _fputc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1174:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1178
u1140:
	
l1176:	
	movf	((fputc@fp)),w
iorwf	((fputc@fp+1)),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1180
u1150:
	line	13
	
l1178:	
	movf	(fputc@c),w
	fcall	_putch
	line	14
	goto	l723
	line	15
	
l1180:	
	movf	(fputc@fp),w
	addlw	low(09h)
	movwf	(??_fputc)
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(??_fputc)
	movf	(0+(??_fputc)),w
	movwf	fsr0
	bsf	status,7
	btfss	(1+(??_fputc)),0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+2)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+2)+1
	movf	((??_fputc+2)),w
iorwf	((??_fputc+1+2)),w
	btfsc	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l1184
u1160:
	
l1182:	
	movf	(fputc@fp),w
	addlw	low(09h)
	movwf	(??_fputc)
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(??_fputc)
	movf	(0+(??_fputc)),w
	movwf	fsr0
	bsf	status,7
	btfss	(1+(??_fputc)),0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+2)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+2)+1
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+4)
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+4)
	movf	(0+(??_fputc+4)),w
	movwf	fsr0
	bsf	status,7
	btfss	(1+(??_fputc+4)),0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc+6)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc+6)+1
	movf	(1+(??_fputc+6)),w
	xorlw	80h
	movwf	(??_fputc+8)
	movf	(1+(??_fputc+2)),w
	xorlw	80h
	subwf	(??_fputc+8),w
	skipz
	goto	u1175
	movf	(0+(??_fputc+2)),w
	subwf	(0+(??_fputc+6)),w
u1175:

	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l723
u1170:
	line	18
	
l1184:	
	movf	(fputc@fp),w
	movwf	fsr0
	bsf	status,7
	btfss	(fputc@fp+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_fputc)+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_fputc)+1
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc+2)
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc+2)
	movf	(0+(??_fputc+2)),w
	movwf	fsr0
	bsf	status,7
	btfss	(1+(??_fputc+2)),0
	bcf	status,7
	movf	indf,w
	addwf	(0+(??_fputc)),w
	movwf	(??_fputc+5)
	movf	(1+(??_fputc)),w
	movwf	(??_fputc+4)
	skipnc
	incf	(??_fputc+4),f
	btfss	indf,7
	goto	u1180
	decf	(??_fputc+4),f
u1180:
	movf	(??_fputc+4),w
	movwf	0+((??_fputc+5))+1
	movf	(0+(??_fputc+5)),w
	movwf	fsr0
	bsf	status,7
	btfss	(1+(??_fputc+5)),0
	bcf	status,7
	movf	(fputc@c),w
	movwf	indf
	line	20
	movf	(fputc@fp),w
	addlw	low(02h)
	movwf	(??_fputc)
	movf	(fputc@fp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_fputc)
	movf	(0+(??_fputc)),w
	movwf	fsr0
	bsf	status,7
	btfss	(1+(??_fputc)),0
	bcf	status,7
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	24
	
l723:	
	return
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\putch.c"
	line	7
global __ptext5
__ptext5:	;psect for function _putch
psect	text5
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\putch.c"
	line	7
	
_putch:	
;incstack = 0
	callstack 3
; Regs used in _putch: [wreg]
	line	9
	
l734:	
	return
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 1 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\abs.c"
	line	1
global __ptext6
__ptext6:	;psect for function _abs
psect	text6
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\abs.c"
	line	1
	
_abs:	
;incstack = 0
	callstack 4
; Regs used in _abs: [wreg+status,2+status,0]
	line	3
	
l1188:	
	btfsc	(abs@a+1),7
	goto	u1191
	goto	u1190
u1191:
	goto	l1192
u1190:
	
l1190:	
	goto	l711
	
l1192:	
	comf	(abs@a),w
	movwf	(??_abs)
	comf	(abs@a+1),w
	movwf	((??_abs)+1)
	incf	(??_abs),f
	skipnz
	incf	((??_abs)+1),f
	movf	(0+(??_abs)),w
	movwf	(?_abs)
	movf	(1+(??_abs)),w
	movwf	(?_abs+1)
	line	4
	
l711:	
	return
	callstack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awmod.c"
	line	5
global __ptext7
__ptext7:	;psect for function ___awmod
psect	text7
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l1136:	
	clrf	(___awmod@sign)
	line	13
	
l1138:	
	btfss	(___awmod@dividend+1),7
	goto	u1051
	goto	u1050
u1051:
	goto	l1144
u1050:
	line	14
	
l1140:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l1142:	
	movlw	01h
	movwf	(___awmod@sign)
	line	17
	
l1144:	
	btfss	(___awmod@divisor+1),7
	goto	u1061
	goto	u1060
u1061:
	goto	l1148
u1060:
	line	18
	
l1146:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l1148:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l1166
u1070:
	line	20
	
l1150:	
	movlw	01h
	movwf	(___awmod@counter)
	line	21
	goto	l1156
	line	22
	
l1152:	
	movlw	01h
	
u1085:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1085
	line	23
	
l1154:	
	movlw	low(01h)
	addwf	(___awmod@counter),f
	line	21
	
l1156:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l1152
u1090:
	line	26
	
l1158:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1105
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1105:
	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l1162
u1100:
	line	27
	
l1160:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l1162:	
	movlw	01h
	
u1115:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1115
	line	29
	
l1164:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1158
u1120:
	line	31
	
l1166:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l1170
u1130:
	line	32
	
l1168:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l1170:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l363:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] int 
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awdiv.c"
	line	5
global __ptext8
__ptext8:	;psect for function ___awdiv
psect	text8
	file	"C:\Program Files\Microchip\xc8\v3.10\pic\sources\c99\common\awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l1092:	
	clrf	(___awdiv@sign)
	line	14
	
l1094:	
	btfss	(___awdiv@divisor+1),7
	goto	u951
	goto	u950
u951:
	goto	l1100
u950:
	line	15
	
l1096:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l1098:	
	movlw	01h
	movwf	(___awdiv@sign)
	line	18
	
l1100:	
	btfss	(___awdiv@dividend+1),7
	goto	u961
	goto	u960
u961:
	goto	l1106
u960:
	line	19
	
l1102:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l1104:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	22
	
l1106:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l1108:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u971
	goto	u970
u971:
	goto	l1128
u970:
	line	24
	
l1110:	
	movlw	01h
	movwf	(___awdiv@counter)
	line	25
	goto	l1116
	line	26
	
l1112:	
	movlw	01h
	
u985:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u985
	line	27
	
l1114:	
	movlw	low(01h)
	addwf	(___awdiv@counter),f
	line	25
	
l1116:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u991
	goto	u990
u991:
	goto	l1112
u990:
	line	30
	
l1118:	
	movlw	01h
	
u1005:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1005
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1015
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1015:
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1124
u1010:
	line	32
	
l1120:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l1122:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l1124:	
	movlw	01h
	
u1025:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1025
	line	36
	
l1126:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1118
u1030:
	line	38
	
l1128:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1132
u1040:
	line	39
	
l1130:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l1132:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l350:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 11 in file "APP/main_test_LCD.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_Init
;;		_LCD_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"APP/main_test_LCD.c"
	line	11
global __ptext9
__ptext9:	;psect for function _setup
psect	text9
	file	"APP/main_test_LCD.c"
	line	11
	
_setup:	
;incstack = 0
	callstack 5
; Regs used in _setup: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	13
	
l1314:	
	fcall	_GPIO_Init
	line	14
	
l1316:	
	fcall	_LCD_init
	line	15
	
l15:	
	return
	callstack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,89
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
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_GPIO_SetPinDirection
;;		_LCD_sendCommand
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	22
global __ptext10
__ptext10:	;psect for function _LCD_init
psect	text10
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	22
	
_LCD_init:	
;incstack = 0
	callstack 5
; Regs used in _LCD_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	24
	
l1288:	
	clrf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	25
	clrf	(GPIO_SetPinDirection@Pin)
	incf	(GPIO_SetPinDirection@Pin),f
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	26
	movlw	low(02h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	27
	movlw	low(03h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	28
	movlw	low(04h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	29
	movlw	low(05h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	30
	movlw	low(06h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	31
	movlw	low(07h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(03h)
	fcall	_GPIO_SetPinDirection
	line	36
	clrf	(GPIO_SetPinDirection@Pin)
	incf	(GPIO_SetPinDirection@Pin),f
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	37
	movlw	low(02h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	39
	
l1290:	
	asmopt push
asmopt off
movlw	104
movwf	((??_LCD_init)+1)
	movlw	228
movwf	((??_LCD_init))
	u1607:
decfsz	((??_LCD_init)),f
	goto	u1607
	decfsz	((??_LCD_init)+1),f
	goto	u1607
	nop
asmopt pop

	line	41
	
l1292:	
	movlw	low(038h)
	fcall	_LCD_sendCommand
	line	42
	asmopt push
asmopt off
movlw	3
movwf	((??_LCD_init)+1)
	movlw	151
movwf	((??_LCD_init))
	u1617:
decfsz	((??_LCD_init)),f
	goto	u1617
	decfsz	((??_LCD_init)+1),f
	goto	u1617
	nop2
asmopt pop

	line	44
	
l1294:	
	movlw	low(0Ch)
	fcall	_LCD_sendCommand
	line	45
	
l1296:	
	asmopt push
asmopt off
movlw	3
movwf	((??_LCD_init)+1)
	movlw	151
movwf	((??_LCD_init))
	u1627:
decfsz	((??_LCD_init)),f
	goto	u1627
	decfsz	((??_LCD_init)+1),f
	goto	u1627
	nop2
asmopt pop

	line	49
	movlw	low(01h)
	fcall	_LCD_sendCommand
	line	50
	
l1298:	
	asmopt push
asmopt off
movlw	6
movwf	((??_LCD_init)+1)
	movlw	48
movwf	((??_LCD_init))
	u1637:
decfsz	((??_LCD_init)),f
	goto	u1637
	decfsz	((??_LCD_init)+1),f
	goto	u1637
	nop
asmopt pop

	line	52
	
l1300:	
	movlw	low(06h)
	fcall	_LCD_sendCommand
	line	54
	
l93:	
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
;;  command         1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		_GPIO_SetPinValue
;;		_LCD_enablePulse
;;		_LCD_setMode_command
;; This function is called by:
;;		_main
;;		_LCD_init
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	83
global __ptext11
__ptext11:	;psect for function _LCD_sendCommand
psect	text11
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	83
	
_LCD_sendCommand:	
;incstack = 0
	callstack 5
; Regs used in _LCD_sendCommand: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(LCD_sendCommand@command)
	line	85
	
l1196:	
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
u1205:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1205
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
u1215:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1215
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
u1225:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1225
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
u1235:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1235
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
u1245:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1245
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
u1255:
	clrc
	rrf	(??_LCD_sendCommand),f
	addlw	-1
	skipz
	goto	u1255
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
	
l105:	
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_GPIO_SetPinValue
;; This function is called by:
;;		_LCD_sendCommand
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext12
__ptext12:	;psect for function _LCD_setMode_command
psect	text12
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	78
	
_LCD_setMode_command:	
;incstack = 0
	callstack 3
; Regs used in _LCD_setMode_command: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	80
	
l1090:	
	clrf	(GPIO_SetPinValue@Pin)
	incf	(GPIO_SetPinValue@Pin),f
	clrf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	81
	
l102:	
	return
	callstack 0
GLOBAL	__end_of_LCD_setMode_command
	__end_of_LCD_setMode_command:
	signat	_LCD_setMode_command,89
	global	_GPIO_SetPinDirection

;; *************** function _GPIO_SetPinDirection *****************
;; Defined at:
;;		line 9 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    0[COMMON] unsigned char 
;;  Direction       1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_init
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	9
global __ptext13
__ptext13:	;psect for function _GPIO_SetPinDirection
psect	text13
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	9
	
_GPIO_SetPinDirection:	
;incstack = 0
	callstack 5
; Regs used in _GPIO_SetPinDirection: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_SetPinDirection@Port)
	line	11
	
l1198:	
	goto	l1232
	line	14
	
l1200:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l1204
u1260:
	line	15
	
l1202:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1274
u1275:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1274:
	addlw	-1
	skipz
	goto	u1275
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l44
	line	17
	
l1204:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1284
u1285:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1284:
	addlw	-1
	skipz
	goto	u1285
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l44
	line	21
	
l1206:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l1210
u1290:
	line	22
	
l1208:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1304
u1305:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1304:
	addlw	-1
	skipz
	goto	u1305
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l44
	line	24
	
l1210:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1314
u1315:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1314:
	addlw	-1
	skipz
	goto	u1315
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	goto	l44
	line	28
	
l1212:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l1216
u1320:
	line	29
	
l1214:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1334
u1335:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1334:
	addlw	-1
	skipz
	goto	u1335
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l44
	line	31
	
l1216:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1344
u1345:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1344:
	addlw	-1
	skipz
	goto	u1345
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	goto	l44
	line	35
	
l1218:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l1222
u1350:
	line	36
	
l1220:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1364
u1365:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1364:
	addlw	-1
	skipz
	goto	u1365
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l44
	line	38
	
l1222:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1374
u1375:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1374:
	addlw	-1
	skipz
	goto	u1375
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(136)^080h,f	;volatile
	goto	l44
	line	42
	
l1224:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l1228
u1380:
	line	43
	
l1226:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1394
u1395:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1394:
	addlw	-1
	skipz
	goto	u1395
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l44
	line	45
	
l1228:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u1404
u1405:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u1404:
	addlw	-1
	skipz
	goto	u1405
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(137)^080h,f	;volatile
	goto	l44
	line	50
	
l1232:	
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
	goto	l1200
	xorlw	1^0	; case 1
	skipnz
	goto	l1206
	xorlw	2^1	; case 2
	skipnz
	goto	l1212
	xorlw	3^2	; case 3
	skipnz
	goto	l1218
	xorlw	4^3	; case 4
	skipnz
	goto	l1224
	goto	l44
	asmopt pop

	line	51
	
l44:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_SetPinDirection
	__end_of_GPIO_SetPinDirection:
	signat	_GPIO_SetPinDirection,12409
	global	_GPIO_Init

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 132 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	132
global __ptext14
__ptext14:	;psect for function _GPIO_Init
psect	text14
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	132
	
_GPIO_Init:	
;incstack = 0
	callstack 6
; Regs used in _GPIO_Init: [status,2]
	line	134
	
l1286:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	135
	clrf	(134)^080h	;volatile
	line	136
	clrf	(135)^080h	;volatile
	line	137
	clrf	(136)^080h	;volatile
	line	138
	clrf	(137)^080h	;volatile
	line	140
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	141
	clrf	(6)	;volatile
	line	142
	clrf	(7)	;volatile
	line	143
	clrf	(8)	;volatile
	line	144
	clrf	(9)	;volatile
	line	145
	
l79:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
	signat	_GPIO_Init,89
	global	_LCD_sendString

;; *************** function _LCD_sendString *****************
;; Defined at:
;;		line 102 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;  string          2    8[COMMON] PTR const unsigned char 
;;		 -> main@buffer(16), STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  i               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, btemp1, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_LCD_sendData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	102
global __ptext15
__ptext15:	;psect for function _LCD_sendString
psect	text15
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	102
	
_LCD_sendString:	
;incstack = 0
	callstack 4
; Regs used in _LCD_sendString: [wreg-fsr0h+status,2+status,0+pclath+btemp1+cstack]
	line	104
	
l1318:	
	clrf	(LCD_sendString@i)
	line	105
	goto	l1324
	line	107
	
l1320:	
	movf	(LCD_sendString@i),w
	addwf	(LCD_sendString@string),w
	movwf	fsr0
	movf	(LCD_sendString@string+1),w
	skipnc
	incf	(LCD_sendString@string+1),w
	movwf	btemp1
	fcall	stringtab
	fcall	_LCD_sendData
	line	108
	
l1322:	
	movlw	low(01h)
	addwf	(LCD_sendString@i),f
	line	105
	
l1324:	
	movf	(LCD_sendString@i),w
	addwf	(LCD_sendString@string),w
	movwf	fsr0
	movf	(LCD_sendString@string+1),w
	skipnc
	incf	(LCD_sendString@string+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l1320
u1580:
	line	110
	
l111:	
	return
	callstack 0
GLOBAL	__end_of_LCD_sendString
	__end_of_LCD_sendString:
	signat	_LCD_sendString,4217
	global	_LCD_sendData

;; *************** function _LCD_sendData *****************
;; Defined at:
;;		line 61 in file "HAL/HAL_LCD/HAL_LCD.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_SetPinValue
;;		_LCD_enablePulse
;;		_LCD_setMode_data
;; This function is called by:
;;		_LCD_sendString
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	61
global __ptext16
__ptext16:	;psect for function _LCD_sendData
psect	text16
	file	"HAL/HAL_LCD/HAL_LCD.c"
	line	61
	
_LCD_sendData:	
;incstack = 0
	callstack 4
; Regs used in _LCD_sendData: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(LCD_sendData@data)
	line	63
	
l1302:	
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
u1515:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1515
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
u1525:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1525
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
u1535:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1535
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
u1545:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1545
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
u1555:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1555
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
u1565:
	clrc
	rrf	(??_LCD_sendData),f
	addlw	-1
	skipz
	goto	u1565
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
	
l99:	
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
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
	callstack 4
; Regs used in _LCD_setMode_data: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l1234:	
	clrf	(GPIO_SetPinValue@Pin)
	incf	(GPIO_SetPinValue@Pin),f
	clrf	(GPIO_SetPinValue@Value)
	incf	(GPIO_SetPinValue@Value),f
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	59
	
l96:	
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
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
	callstack 4
; Regs used in _LCD_enablePulse: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l1084:	
	movlw	low(02h)
	movwf	(GPIO_SetPinValue@Pin)
	clrf	(GPIO_SetPinValue@Value)
	incf	(GPIO_SetPinValue@Value),f
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	16
	
l1086:	
	asmopt push
asmopt off
movlw	6
movwf	((??_LCD_enablePulse)+1)
	movlw	48
movwf	((??_LCD_enablePulse))
	u1647:
decfsz	((??_LCD_enablePulse)),f
	goto	u1647
	decfsz	((??_LCD_enablePulse)+1),f
	goto	u1647
	nop
asmopt pop

	line	17
	
l1088:	
	movlw	low(02h)
	movwf	(GPIO_SetPinValue@Pin)
	clrf	(GPIO_SetPinValue@Value)
	movlw	low(01h)
	fcall	_GPIO_SetPinValue
	line	18
	asmopt push
asmopt off
movlw	6
movwf	((??_LCD_enablePulse)+1)
	movlw	48
movwf	((??_LCD_enablePulse))
	u1657:
decfsz	((??_LCD_enablePulse)),f
	goto	u1657
	decfsz	((??_LCD_enablePulse)+1),f
	goto	u1657
	nop
asmopt pop

	line	20
	
l90:	
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
;;  Pin             1    0[COMMON] unsigned char 
;;  Value           1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
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
	callstack 3
; Regs used in _GPIO_SetPinValue: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_SetPinValue@Port)
	line	56
	
l1048:	
	goto	l1082
	line	59
	
l1050:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u801
	goto	u800
u801:
	goto	l1054
u800:
	line	60
	
l1052:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	goto	l65
	line	62
	
l1054:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	l65
	line	66
	
l1056:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1060
u830:
	line	67
	
l1058:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u844
u845:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u844:
	addlw	-1
	skipz
	goto	u845
	movf	(0+(??_GPIO_SetPinValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(6),f	;volatile
	goto	l65
	line	69
	
l1060:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u854
u855:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u854:
	addlw	-1
	skipz
	goto	u855
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	l65
	line	73
	
l1062:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l1066
u860:
	line	74
	
l1064:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u874
u875:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u874:
	addlw	-1
	skipz
	goto	u875
	movf	(0+(??_GPIO_SetPinValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(7),f	;volatile
	goto	l65
	line	76
	
l1066:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u884
u885:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u884:
	addlw	-1
	skipz
	goto	u885
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	l65
	line	80
	
l1068:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l1072
u890:
	line	81
	
l1070:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u904
u905:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u904:
	addlw	-1
	skipz
	goto	u905
	movf	(0+(??_GPIO_SetPinValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(8),f	;volatile
	goto	l65
	line	83
	
l1072:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u914
u915:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u914:
	addlw	-1
	skipz
	goto	u915
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	l65
	line	87
	
l1074:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1078
u920:
	line	88
	
l1076:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u934
u935:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u934:
	addlw	-1
	skipz
	goto	u935
	movf	(0+(??_GPIO_SetPinValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(9),f	;volatile
	goto	l65
	line	90
	
l1078:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u944
u945:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u944:
	addlw	-1
	skipz
	goto	u945
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(9),f	;volatile
	goto	l65
	line	95
	
l1082:	
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
	goto	l1050
	xorlw	1^0	; case 1
	skipnz
	goto	l1056
	xorlw	2^1	; case 2
	skipnz
	goto	l1062
	xorlw	3^2	; case 3
	skipnz
	goto	l1068
	xorlw	4^3	; case 4
	skipnz
	goto	l1074
	goto	l65
	asmopt pop

	line	96
	
l65:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_SetPinValue
	__end_of_GPIO_SetPinValue:
	signat	_GPIO_SetPinValue,12409
global	___latbits
___latbits	equ	2
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
