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
	FNCALL	_main,_UART_readByte
	FNCALL	_main,_UART_sendByte
	FNCALL	_main,_setup
	FNCALL	_setup,_GPIO_Init
	FNCALL	_setup,_UART_init
	FNCALL	_setup,_UART_sendString
	FNCALL	_UART_sendString,_UART_sendByte
	FNCALL	_UART_init,_GPIO_SetPinDirection
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Global_EXT_Callback
	global	_Global_IOC_Callback
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
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
	retlw	85	;'U'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	107	;'k'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	33	;'!'
	retlw	10
	retlw	0
psect	strings
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"build\testUART.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_Global_EXT_Callback:
       ds      1

_Global_IOC_Callback:
       ds      1

	file	"build\testUART.s"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_UART_init:	; 1 bytes @ 0x0
?_UART_readByte:	; 1 bytes @ 0x0
?_UART_sendByte:	; 1 bytes @ 0x0
?_setup:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
	ds	3
?_GPIO_SetPinDirection:	; 1 bytes @ 0x3
	global	GPIO_SetPinDirection@Pin
GPIO_SetPinDirection@Pin:	; 1 bytes @ 0x3
??_GPIO_Init:	; 1 bytes @ 0x3
??_UART_readByte:	; 1 bytes @ 0x3
??_UART_sendByte:	; 1 bytes @ 0x3
	ds	1
	global	GPIO_SetPinDirection@Direction
GPIO_SetPinDirection@Direction:	; 1 bytes @ 0x4
	global	UART_sendByte@data
UART_sendByte@data:	; 1 bytes @ 0x4
	ds	1
?_UART_sendString:	; 1 bytes @ 0x5
	global	UART_sendString@string
UART_sendString@string:	; 1 bytes @ 0x5
??_GPIO_SetPinDirection:	; 1 bytes @ 0x5
	ds	1
	global	GPIO_SetPinDirection@Port
GPIO_SetPinDirection@Port:	; 1 bytes @ 0x6
??_UART_sendString:	; 1 bytes @ 0x6
	ds	1
	global	main@received_char
main@received_char:	; 1 bytes @ 0x7
??_UART_init:	; 1 bytes @ 0x7
??_setup:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
	ds	1
;!
;!Data Sizes:
;!    Strings     15
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      10
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    Global_EXT_Callback	PTR FTN()void  size(1) Largest target is 1
;!		 -> NULL(), 
;!
;!    Global_IOC_Callback	PTR FTN()void  size(1) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART_sendString@string	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_1(CODE[15]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _UART_sendString->_UART_sendByte
;!    _UART_init->_GPIO_SetPinDirection
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;! (0) _main                                                 1     1      0     484
;!                                              7 COMMON     1     1      0
;!                      _UART_readByte
;!                      _UART_sendByte
;!                              _setup
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0     446
;!                          _GPIO_Init
;!                          _UART_init
;!                    _UART_sendString
;! ---------------------------------------------------------------------------------
;! (2) _UART_sendString                                      1     0      1      83
;!                                              5 COMMON     1     0      1
;!                      _UART_sendByte
;! ---------------------------------------------------------------------------------
;! (3) _UART_sendByte                                        2     2      0      15
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _UART_init                                            0     0      0     363
;!               _GPIO_SetPinDirection
;! ---------------------------------------------------------------------------------
;! (3) _GPIO_SetPinDirection                                 4     2      2     363
;!                                              3 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _UART_readByte                                        1     1      0       0
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _UART_readByte
;!   _UART_sendByte
;!   _setup
;!     _GPIO_Init
;!     _UART_init
;!       _GPIO_SetPinDirection
;!     _UART_sendString
;!       _UART_sendByte
;!
;! _ISR (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      8      10     71.4%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      10      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "APP/main_test_UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  received_cha    1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   17[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_UART_readByte
;;		_UART_sendByte
;;		_setup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"APP/main_test_UART.c"
	line	12
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"APP/main_test_UART.c"
	line	12
	
_main:	
;incstack = 0
	callstack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	14
	
l897:	
	fcall	_setup
	line	16
	
l899:	
	fcall	_UART_readByte
	movwf	(main@received_char)
	line	17
	
l901:	
	movf	(main@received_char),w
	fcall	_UART_sendByte
	goto	l899
	global	start
	ljmp	start
	callstack 0
	line	19
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 6 in file "APP/main_test_UART.c"
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_GPIO_Init
;;		_UART_init
;;		_UART_sendString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	6
global __ptext1
__ptext1:	;psect for function _setup
psect	text1
	file	"APP/main_test_UART.c"
	line	6
	
_setup:	
;incstack = 0
	callstack 4
; Regs used in _setup: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l891:	
	fcall	_GPIO_Init
	line	9
	
l893:	
	fcall	_UART_init
	line	10
	
l895:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(UART_sendString@string)
	fcall	_UART_sendString
	line	11
	
l13:	
	return
	callstack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,89
	global	_UART_sendString

;; *************** function _UART_sendString *****************
;; Defined at:
;;		line 44 in file "MCAL/MCAL_UART/UART.c"
;; Parameters:    Size  Location     Type
;;  string          1    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(15), 
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
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_UART_sendByte
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_UART/UART.c"
	line	44
global __ptext2
__ptext2:	;psect for function _UART_sendString
psect	text2
	file	"MCAL/MCAL_UART/UART.c"
	line	44
	
_UART_sendString:	
;incstack = 0
	callstack 4
; Regs used in _UART_sendString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	47
	
l881:	
	movf	((UART_sendString@string)),w
	btfsc	status,2
	goto	u401
	goto	u400
u401:
	goto	l142
u400:
	goto	l889
	line	53
	
l885:	
	movf	(UART_sendString@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_UART_sendByte
	line	56
	
l887:	
	movlw	low(01h)
	addwf	(UART_sendString@string),f
	line	50
	
l889:	
	movf	(UART_sendString@string),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u411
	goto	u410
u411:
	goto	l885
u410:
	line	59
	
l142:	
	return
	callstack 0
GLOBAL	__end_of_UART_sendString
	__end_of_UART_sendString:
	signat	_UART_sendString,4217
	global	_UART_sendByte

;; *************** function _UART_sendByte *****************
;; Defined at:
;;		line 34 in file "MCAL/MCAL_UART/UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_UART_sendString
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext3
__ptext3:	;psect for function _UART_sendByte
psect	text3
	file	"MCAL/MCAL_UART/UART.c"
	line	34
	
_UART_sendByte:	
;incstack = 0
	callstack 4
; Regs used in _UART_sendByte: [wreg+status,2+status,0]
	movwf	(UART_sendByte@data)
	line	39
	
l739:	
	
l741:	
	movf	(12),w	;volatile
	movwf	(??_UART_sendByte)
	movlw	04h
u15:
	clrc
	rrf	(??_UART_sendByte),f
	addlw	-1
	skipz
	goto	u15
	btfss	(0+(??_UART_sendByte)),(0)&7
	goto	u21
	goto	u20
u21:
	goto	l741
u20:
	line	41
	
l743:	
	movf	(UART_sendByte@data),w
	movwf	(25)	;volatile
	line	42
	
l135:	
	return
	callstack 0
GLOBAL	__end_of_UART_sendByte
	__end_of_UART_sendByte:
	signat	_UART_sendByte,4217
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_GPIO_SetPinDirection
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext4
__ptext4:	;psect for function _UART_init
psect	text4
	file	"MCAL/MCAL_UART/UART.c"
	line	8
	
_UART_init:	
;incstack = 0
	callstack 4
; Regs used in _UART_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	11
	
l869:	
	movlw	033h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	15
	bsf	(152)^080h+(5/8),(5)&7	;volatile
	line	17
	bsf	(152)^080h+(2/8),(2)&7	;volatile
	line	19
	
l871:	
	movlw	low(0EFh)
	andwf	(152)^080h,f	;volatile
	line	23
	
l873:	
	movlw	low(06h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(02h)
	fcall	_GPIO_SetPinDirection
	line	24
	
l875:	
	movlw	low(07h)
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(02h)
	fcall	_GPIO_SetPinDirection
	line	29
	
l877:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24)+(7/8),(7)&7	;volatile
	line	31
	
l879:	
	bsf	(24)+(4/8),(4)&7	;volatile
	line	32
	
l129:	
	return
	callstack 0
GLOBAL	__end_of_UART_init
	__end_of_UART_init:
	signat	_UART_init,89
	global	_GPIO_SetPinDirection

;; *************** function _GPIO_SetPinDirection *****************
;; Defined at:
;;		line 9 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    3[COMMON] unsigned char 
;;  Direction       1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_init
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	9
global __ptext5
__ptext5:	;psect for function _GPIO_SetPinDirection
psect	text5
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	9
	
_GPIO_SetPinDirection:	
;incstack = 0
	callstack 4
; Regs used in _GPIO_SetPinDirection: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_SetPinDirection@Port)
	line	11
	
l833:	
	goto	l867
	line	14
	
l835:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l839
u250:
	line	15
	
l837:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u264
u265:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u264:
	addlw	-1
	skipz
	goto	u265
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l42
	line	17
	
l839:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u274
u275:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u274:
	addlw	-1
	skipz
	goto	u275
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l42
	line	21
	
l841:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u281
	goto	u280
u281:
	goto	l845
u280:
	line	22
	
l843:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u294
u295:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u294:
	addlw	-1
	skipz
	goto	u295
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l42
	line	24
	
l845:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u304
u305:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u304:
	addlw	-1
	skipz
	goto	u305
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	goto	l42
	line	28
	
l847:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u311
	goto	u310
u311:
	goto	l851
u310:
	line	29
	
l849:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u324
u325:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u324:
	addlw	-1
	skipz
	goto	u325
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l42
	line	31
	
l851:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u334
u335:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u334:
	addlw	-1
	skipz
	goto	u335
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	goto	l42
	line	35
	
l853:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u341
	goto	u340
u341:
	goto	l857
u340:
	line	36
	
l855:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u354
u355:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u354:
	addlw	-1
	skipz
	goto	u355
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l42
	line	38
	
l857:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u364
u365:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u364:
	addlw	-1
	skipz
	goto	u365
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(136)^080h,f	;volatile
	goto	l42
	line	42
	
l859:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l863
u370:
	line	43
	
l861:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u384
u385:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u384:
	addlw	-1
	skipz
	goto	u385
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l42
	line	45
	
l863:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u394
u395:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u394:
	addlw	-1
	skipz
	goto	u395
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(137)^080h,f	;volatile
	goto	l42
	line	50
	
l867:	
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
	goto	l835
	xorlw	1^0	; case 1
	skipnz
	goto	l841
	xorlw	2^1	; case 2
	skipnz
	goto	l847
	xorlw	3^2	; case 3
	skipnz
	goto	l853
	xorlw	4^3	; case 4
	skipnz
	goto	l859
	goto	l42
	asmopt pop

	line	51
	
l42:	
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	132
global __ptext6
__ptext6:	;psect for function _GPIO_Init
psect	text6
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	132
	
_GPIO_Init:	
;incstack = 0
	callstack 5
; Regs used in _GPIO_Init: [status,2]
	line	134
	
l781:	
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
	
l77:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
	signat	_GPIO_Init,89
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_UART/UART.c"
	line	66
global __ptext7
__ptext7:	;psect for function _UART_readByte
psect	text7
	file	"MCAL/MCAL_UART/UART.c"
	line	66
	
_UART_readByte:	
;incstack = 0
	callstack 6
; Regs used in _UART_readByte: [wreg+status,2+status,0]
	line	70
	
l811:	
	
l813:	
	movf	(12),w	;volatile
	movwf	(??_UART_readByte)
	movlw	05h
u205:
	clrc
	rrf	(??_UART_readByte),f
	addlw	-1
	skipz
	goto	u205
	btfss	(0+(??_UART_readByte)),(0)&7
	goto	u211
	goto	u210
u211:
	goto	l813
u210:
	line	75
	
l815:	
	movf	(26),w	;volatile
	line	76
	
l151:	
	return
	callstack 0
GLOBAL	__end_of_UART_readByte
	__end_of_UART_readByte:
	signat	_UART_readByte,89
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
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	86
global __ptext8
__ptext8:	;psect for function _ISR
psect	text8
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	86
	
_ISR:	
;incstack = 0
	callstack 4
; Regs used in _ISR: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_ISR+2)
	ljmp	_ISR
psect	text8
	line	89
	
i1l825:	
	btfss	(11),(0)&7
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l829
u22_20:
	line	93
	
i1l827:	
	movlw	low(0FEh)
	andwf	(11),f	;volatile
	line	107
	
i1l829:	
	movf	(11),w	;volatile
	movwf	(??_ISR)
	movlw	01h
u23_25:
	clrc
	rrf	(??_ISR),f
	addlw	-1
	skipz
	goto	u23_25
	btfss	(0+(??_ISR)),(0)&7
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l124
u24_20:
	line	110
	
i1l831:	
	movlw	low(0FDh)
	andwf	(11),f	;volatile
	line	121
	
i1l124:	
	movf	(??_ISR+2),w
	movwf	pclath
	swapf	(??_ISR+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
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
