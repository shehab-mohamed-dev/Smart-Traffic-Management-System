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
	FNCALL	_main,_LED_Toggle
	FNCALL	_main,_UART_available
	FNCALL	_main,_UART_readByte
	FNCALL	_main,_UART_sendByte
	FNCALL	_main,_setup
	FNCALL	_setup,_EXT_INT_SetCallback
	FNCALL	_setup,_GPIO_SetPinDirection
	FNCALL	_setup,_IOC_Enable
	FNCALL	_setup,_IOC_SetCallback
	FNCALL	_setup,_IR_Init
	FNCALL	_setup,_LED_Init
	FNCALL	_setup,_UART_init
	FNCALL	_setup,_interrupt_EXT_edge
	FNCALL	_setup,_interrupt_EXT_enable
	FNCALL	_setup,_interrupt_globalEnable
	FNCALL	_setup,_interrupt_peripheralEnable
	FNCALL	_UART_init,_GPIO_SetPinDirection
	FNCALL	_LED_Init,_GPIO_SetPinDirection
	FNCALL	_IR_Init,_GPIO_SetPinDirection
	FNCALL	_LED_Toggle,_GPIO_GetPinValue
	FNCALL	_LED_Toggle,_GPIO_SetPinValue
	FNROOT	_main
	FNCALL	_ISR,_objectDetected_IR_ISR
	FNCALL	_ISR,_pedestrian_buttons_ISR
	FNCALL	_objectDetected_IR_ISR,_IR_ReadState
	FNCALL	_IR_ReadState,i1_GPIO_GetPinValue
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
	file	"build\test_friday.s"
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

	file	"build\test_friday.s"
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
?_interrupt_EXT_edge:	; 1 bytes @ 0x0
?_interrupt_EXT_enable:	; 1 bytes @ 0x0
?_IOC_Enable:	; 1 bytes @ 0x0
?_interrupt_globalEnable:	; 1 bytes @ 0x0
?_interrupt_peripheralEnable:	; 1 bytes @ 0x0
?_UART_init:	; 1 bytes @ 0x0
?_UART_sendByte:	; 1 bytes @ 0x0
?_UART_available:	; 1 bytes @ 0x0
?_UART_readByte:	; 1 bytes @ 0x0
?_pedestrian_buttons_ISR:	; 1 bytes @ 0x0
?_objectDetected_IR_ISR:	; 1 bytes @ 0x0
?_setup:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?i1_GPIO_GetPinValue:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1GPIO_GetPinValue@Pin
i1GPIO_GetPinValue@Pin:	; 1 bytes @ 0x0
??_pedestrian_buttons_ISR:	; 1 bytes @ 0x0
	ds	1
??i1_GPIO_GetPinValue:	; 1 bytes @ 0x1
	ds	1
	global	i1GPIO_GetPinValue@Port
i1GPIO_GetPinValue@Port:	; 1 bytes @ 0x2
	ds	1
	global	i1GPIO_GetPinValue@Local_Value
i1GPIO_GetPinValue@Local_Value:	; 1 bytes @ 0x3
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
?_GPIO_SetPinDirection:	; 1 bytes @ 0x0
?_EXT_INT_SetCallback:	; 1 bytes @ 0x0
?_IOC_SetCallback:	; 1 bytes @ 0x0
?_GPIO_SetPinValue:	; 1 bytes @ 0x0
?_GPIO_GetPinValue:	; 1 bytes @ 0x0
	global	GPIO_SetPinDirection@Pin
GPIO_SetPinDirection@Pin:	; 1 bytes @ 0x0
	global	GPIO_SetPinValue@Pin
GPIO_SetPinValue@Pin:	; 1 bytes @ 0x0
	global	GPIO_GetPinValue@Pin
GPIO_GetPinValue@Pin:	; 1 bytes @ 0x0
	global	interrupt_EXT_edge@edge
interrupt_EXT_edge@edge:	; 1 bytes @ 0x0
	global	EXT_INT_SetCallback@ptr
EXT_INT_SetCallback@ptr:	; 1 bytes @ 0x0
	global	IOC_SetCallback@ptr
IOC_SetCallback@ptr:	; 1 bytes @ 0x0
??_interrupt_EXT_edge:	; 1 bytes @ 0x0
??_interrupt_EXT_enable:	; 1 bytes @ 0x0
??_IOC_Enable:	; 1 bytes @ 0x0
??_interrupt_globalEnable:	; 1 bytes @ 0x0
??_interrupt_peripheralEnable:	; 1 bytes @ 0x0
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
??_GPIO_GetPinValue:	; 1 bytes @ 0x1
	ds	1
	global	GPIO_GetPinValue@Port
GPIO_GetPinValue@Port:	; 1 bytes @ 0x2
??_GPIO_SetPinDirection:	; 1 bytes @ 0x2
??_GPIO_SetPinValue:	; 1 bytes @ 0x2
	ds	1
	global	GPIO_SetPinDirection@Port
GPIO_SetPinDirection@Port:	; 1 bytes @ 0x3
	global	GPIO_SetPinValue@Port
GPIO_SetPinValue@Port:	; 1 bytes @ 0x3
	global	GPIO_GetPinValue@Local_Value
GPIO_GetPinValue@Local_Value:	; 1 bytes @ 0x3
	ds	1
?_LED_Init:	; 1 bytes @ 0x4
?_LED_Toggle:	; 1 bytes @ 0x4
	global	LED_Init@Pin
LED_Init@Pin:	; 1 bytes @ 0x4
	global	LED_Toggle@Pin
LED_Toggle@Pin:	; 1 bytes @ 0x4
??_IR_Init:	; 1 bytes @ 0x4
??_UART_init:	; 1 bytes @ 0x4
	ds	1
	global	LED_Init@Port
LED_Init@Port:	; 1 bytes @ 0x5
	global	LED_Toggle@current
LED_Toggle@current:	; 1 bytes @ 0x5
??_LED_Init:	; 1 bytes @ 0x5
??_LED_Toggle:	; 1 bytes @ 0x5
	ds	1
	global	LED_Toggle@Port
LED_Toggle@Port:	; 1 bytes @ 0x6
??_setup:	; 1 bytes @ 0x6
	ds	1
??_main:	; 1 bytes @ 0x7
	ds	3
	global	main@piCommand
main@piCommand:	; 1 bytes @ 0xA
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
;!    _IR_ReadState->i1_GPIO_GetPinValue
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LED_Toggle
;!    _setup->_LED_Init
;!    _UART_init->_GPIO_SetPinDirection
;!    _LED_Init->_GPIO_SetPinDirection
;!    _IR_Init->_GPIO_SetPinDirection
;!    _LED_Toggle->_GPIO_GetPinValue
;!    _LED_Toggle->_GPIO_SetPinValue
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    2461
;!                                              7 BANK0      4     4      0
;!                         _LED_Toggle
;!                     _UART_available
;!                      _UART_readByte
;!                      _UART_sendByte
;!                              _setup
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0    1672
;!                _EXT_INT_SetCallback
;!               _GPIO_SetPinDirection
;!                         _IOC_Enable
;!                    _IOC_SetCallback
;!                            _IR_Init
;!                           _LED_Init
;!                          _UART_init
;!                 _interrupt_EXT_edge
;!               _interrupt_EXT_enable
;!             _interrupt_globalEnable
;!         _interrupt_peripheralEnable
;! ---------------------------------------------------------------------------------
;! (2) _interrupt_peripheralEnable                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _interrupt_globalEnable                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _interrupt_EXT_enable                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _interrupt_EXT_edge                                   1     1      0      29
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _UART_init                                            0     0      0     375
;!               _GPIO_SetPinDirection
;! ---------------------------------------------------------------------------------
;! (2) _LED_Init                                             2     1      1     428
;!                                              4 BANK0      2     1      1
;!               _GPIO_SetPinDirection
;! ---------------------------------------------------------------------------------
;! (2) _IR_Init                                              0     0      0     375
;!               _GPIO_SetPinDirection
;! ---------------------------------------------------------------------------------
;! (3) _GPIO_SetPinDirection                                 4     2      2     375
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
;! (1) _LED_Toggle                                           3     2      1     715
;!                                              4 BANK0      3     2      1
;!                   _GPIO_GetPinValue
;!                   _GPIO_SetPinValue
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_SetPinValue                                     4     2      2     363
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _GPIO_GetPinValue                                     4     3      1     173
;!                                              0 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  5     5      0     294
;!                                              9 COMMON     5     5      0
;!                                NULL *
;!              _objectDetected_IR_ISR *
;!             _pedestrian_buttons_ISR *
;! ---------------------------------------------------------------------------------
;! (5) _pedestrian_buttons_ISR                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _objectDetected_IR_ISR                                4     4      0     294
;!                                              5 COMMON     4     4      0
;!                       _IR_ReadState
;! ---------------------------------------------------------------------------------
;! (6) _IR_ReadState                                         1     1      0     202
;!                                              4 COMMON     1     1      0
;!                 i1_GPIO_GetPinValue
;! ---------------------------------------------------------------------------------
;! (7) i1_GPIO_GetPinValue                                   4     3      1     173
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (5) NULL(Fake)                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LED_Toggle
;!     _GPIO_GetPinValue
;!     _GPIO_SetPinValue
;!   _UART_available
;!   _UART_readByte
;!   _UART_sendByte
;!   _setup
;!     _EXT_INT_SetCallback
;!     _GPIO_SetPinDirection
;!     _IOC_Enable
;!     _IOC_SetCallback
;!     _IR_Init
;!       _GPIO_SetPinDirection
;!     _LED_Init
;!       _GPIO_SetPinDirection
;!     _UART_init
;!       _GPIO_SetPinDirection
;!     _interrupt_EXT_edge
;!     _interrupt_EXT_enable
;!     _interrupt_globalEnable
;!     _interrupt_peripheralEnable
;!
;! _ISR (ROOT)
;!   NULL(Fake) *
;!   _objectDetected_IR_ISR *
;!     _IR_ReadState
;!       i1_GPIO_GetPinValue
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
;;		line 83 in file "APP/main_hardware_UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  piCommand       1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   54[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_LED_Toggle
;;		_UART_available
;;		_UART_readByte
;;		_UART_sendByte
;;		_setup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"APP/main_hardware_UART.c"
	line	83
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"APP/main_hardware_UART.c"
	line	83
	
_main:	
;incstack = 0
	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	85
	
l1262:	
	fcall	_setup
	line	91
	
l1264:	
		decf	((_pedestrianPressed)),w	;volatile
	btfss	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l1274
u1190:
	line	93
	
l1266:	
	movlw	low(050h)
	fcall	_UART_sendByte
	line	94
	
l1268:	
	clrf	(LED_Toggle@Pin)
	movlw	low(03h)
	fcall	_LED_Toggle
	line	95
	
l1270:	
	asmopt push
asmopt off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	12
movwf	((??_main)+1)
	movlw	51
movwf	((??_main))
	u1297:
decfsz	((??_main)),f
	goto	u1297
	decfsz	((??_main)+1),f
	goto	u1297
	decfsz	((??_main)+2),f
	goto	u1297
asmopt pop

	line	98
	
l1272:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_pedestrianPressed)	;volatile
	line	102
	
l1274:	
		decf	((_objectDetected)),w	;volatile
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l1284
u1200:
	line	105
	
l1276:	
	movlw	low(049h)
	fcall	_UART_sendByte
	line	106
	
l1278:	
	clrf	(LED_Toggle@Pin)
	movlw	low(03h)
	fcall	_LED_Toggle
	line	107
	
l1280:	
	asmopt push
asmopt off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main)+2)
movlw	12
movwf	((??_main)+1)
	movlw	51
movwf	((??_main))
	u1307:
decfsz	((??_main)),f
	goto	u1307
	decfsz	((??_main)+1),f
	goto	u1307
	decfsz	((??_main)+2),f
	goto	u1307
asmopt pop

	line	110
	
l1282:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_objectDetected)	;volatile
	line	113
	
l1284:	
	fcall	_UART_available
	xorlw	0
	skipnz
	goto	u1211
	goto	u1210
u1211:
	goto	l1264
u1210:
	line	116
	
l1286:	
	fcall	_UART_readByte
	movwf	(main@piCommand)
	line	119
	
l1288:	
		movlw	80
	xorwf	((main@piCommand)),w
	btfsc	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l1292
u1220:
	
l1290:	
		movlw	73
	xorwf	((main@piCommand)),w
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l1264
u1230:
	line	122
	
l1292:	
	movlw	low(02h)
	movwf	(LED_Toggle@Pin)
	movlw	low(03h)
	fcall	_LED_Toggle
	goto	l1264
	global	start
	ljmp	start
	callstack 0
	line	127
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 50 in file "APP/main_hardware_UART.c"
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
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_EXT_INT_SetCallback
;;		_GPIO_SetPinDirection
;;		_IOC_Enable
;;		_IOC_SetCallback
;;		_IR_Init
;;		_LED_Init
;;		_UART_init
;;		_interrupt_EXT_edge
;;		_interrupt_EXT_enable
;;		_interrupt_globalEnable
;;		_interrupt_peripheralEnable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	50
global __ptext1
__ptext1:	;psect for function _setup
psect	text1
	file	"APP/main_hardware_UART.c"
	line	50
	
_setup:	
;incstack = 0
	callstack 1
; Regs used in _setup: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	53
	
l1218:	
	clrf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(01h)
	fcall	_GPIO_SetPinDirection
	line	56
	fcall	_IR_Init
	line	58
	bcf	status, 5	;RP0=0, select bank0
	clrf	(LED_Init@Pin)
	movlw	low(03h)
	fcall	_LED_Init
	line	59
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(LED_Init@Pin)
	movlw	low(03h)
	fcall	_LED_Init
	line	61
	
l1220:	
	movlw	low(0)
	fcall	_interrupt_EXT_edge
	line	64
	
l1222:	
	movlw	(low((fp__pedestrian_buttons_ISR-i1fpbase)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(EXT_INT_SetCallback@ptr)
	fcall	_EXT_INT_SetCallback
	line	67
	
l1224:	
	movlw	(low((fp__objectDetected_IR_ISR-i1fpbase)))&0ffh
	movwf	(IOC_SetCallback@ptr)
	fcall	_IOC_SetCallback
	line	70
	
l1226:	
	fcall	_interrupt_EXT_enable
	line	71
	
l1228:	
	fcall	_IOC_Enable
	line	74
	
l1230:	
	fcall	_interrupt_globalEnable
	line	77
	
l1232:	
	fcall	_interrupt_peripheralEnable
	line	78
	
l1234:	
	fcall	_UART_init
	line	80
	
l50:	
	return
	callstack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,89
	global	_interrupt_peripheralEnable

;; *************** function _interrupt_peripheralEnable *****************
;; Defined at:
;;		line 23 in file "MCAL/MCAL_interrupt/interrupt.c"
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
	line	23
global __ptext2
__ptext2:	;psect for function _interrupt_peripheralEnable
psect	text2
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	23
	
_interrupt_peripheralEnable:	
;incstack = 0
	callstack 2
; Regs used in _interrupt_peripheralEnable: []
	line	25
	
l1136:	
	bsf	(11)+(6/8),(6)&7	;volatile
	line	26
	
l133:	
	return
	callstack 0
GLOBAL	__end_of_interrupt_peripheralEnable
	__end_of_interrupt_peripheralEnable:
	signat	_interrupt_peripheralEnable,89
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext3
__ptext3:	;psect for function _interrupt_globalEnable
psect	text3
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	13
	
_interrupt_globalEnable:	
;incstack = 0
	callstack 2
; Regs used in _interrupt_globalEnable: []
	line	15
	
l1134:	
	bsf	(11)+(7/8),(7)&7	;volatile
	line	16
	
l127:	
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext4
__ptext4:	;psect for function _interrupt_EXT_enable
psect	text4
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	28
	
_interrupt_EXT_enable:	
;incstack = 0
	callstack 2
; Regs used in _interrupt_EXT_enable: []
	line	30
	
l1128:	
	bsf	(11)+(4/8),(4)&7	;volatile
	line	31
	
l136:	
	return
	callstack 0
GLOBAL	__end_of_interrupt_EXT_enable
	__end_of_interrupt_EXT_enable:
	signat	_interrupt_EXT_enable,89
	global	_interrupt_EXT_edge

;; *************** function _interrupt_EXT_edge *****************
;; Defined at:
;;		line 38 in file "MCAL/MCAL_interrupt/interrupt.c"
;; Parameters:    Size  Location     Type
;;  edge            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  edge            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext5
__ptext5:	;psect for function _interrupt_EXT_edge
psect	text5
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	38
	
_interrupt_EXT_edge:	
;incstack = 0
	callstack 2
; Regs used in _interrupt_EXT_edge: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(interrupt_EXT_edge@edge)
	line	40
	
l1110:	
		decf	((interrupt_EXT_edge@edge)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l1114
u860:
	line	42
	
l1112:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(129)^080h+(6/8),(6)&7	;volatile
	line	43
	goto	l144
	line	46
	
l1114:	
	movlw	low(0BFh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	49
	
l144:	
	return
	callstack 0
GLOBAL	__end_of_interrupt_EXT_edge
	__end_of_interrupt_EXT_edge:
	signat	_interrupt_EXT_edge,4217
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
;;		_GPIO_SetPinDirection
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_UART/UART.c"
	line	8
global __ptext6
__ptext6:	;psect for function _UART_init
psect	text6
	file	"MCAL/MCAL_UART/UART.c"
	line	8
	
_UART_init:	
;incstack = 0
	callstack 1
; Regs used in _UART_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	11
	
l1138:	
	movlw	033h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	15
	bsf	(152)^080h+(5/8),(5)&7	;volatile
	line	17
	bsf	(152)^080h+(2/8),(2)&7	;volatile
	line	19
	
l1140:	
	movlw	low(0EFh)
	andwf	(152)^080h,f	;volatile
	line	23
	
l1142:	
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(02h)
	fcall	_GPIO_SetPinDirection
	line	24
	
l1144:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	incf	(GPIO_SetPinDirection@Direction),f
	movlw	low(02h)
	fcall	_GPIO_SetPinDirection
	line	29
	
l1146:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24)+(7/8),(7)&7	;volatile
	line	31
	
l1148:	
	bsf	(24)+(4/8),(4)&7	;volatile
	line	32
	
l172:	
	return
	callstack 0
GLOBAL	__end_of_UART_init
	__end_of_UART_init:
	signat	_UART_init,89
	global	_LED_Init

;; *************** function _LED_Init *****************
;; Defined at:
;;		line 9 in file "HAL/HAL_LED/HAL_LED.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_SetPinDirection
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_LED/HAL_LED.c"
	line	9
global __ptext7
__ptext7:	;psect for function _LED_Init
psect	text7
	file	"HAL/HAL_LED/HAL_LED.c"
	line	9
	
_LED_Init:	
;incstack = 0
	callstack 1
; Regs used in _LED_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(LED_Init@Port)
	line	11
	
l1108:	
	movf	(LED_Init@Pin),w
	movwf	(GPIO_SetPinDirection@Pin)
	clrf	(GPIO_SetPinDirection@Direction)
	movf	(LED_Init@Port),w
	fcall	_GPIO_SetPinDirection
	line	12
	
l203:	
	return
	callstack 0
GLOBAL	__end_of_LED_Init
	__end_of_LED_Init:
	signat	_LED_Init,8313
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
;;		On entry : 200/0
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
	
l1106:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
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
	
l221:	
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
;;		_setup
;;		_UART_init
;;		_LED_Init
;;		_IR_Init
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
	
l1038:	
	goto	l1072
	line	14
	
l1040:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l1044
u650:
	line	15
	
l1042:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u664
u665:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u664:
	addlw	-1
	skipz
	goto	u665
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l85
	line	17
	
l1044:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u674
u675:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u674:
	addlw	-1
	skipz
	goto	u675
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	goto	l85
	line	21
	
l1046:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1050
u680:
	line	22
	
l1048:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u694
u695:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u694:
	addlw	-1
	skipz
	goto	u695
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l85
	line	24
	
l1050:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u704
u705:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u704:
	addlw	-1
	skipz
	goto	u705
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	goto	l85
	line	28
	
l1052:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u711
	goto	u710
u711:
	goto	l1056
u710:
	line	29
	
l1054:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u724
u725:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u724:
	addlw	-1
	skipz
	goto	u725
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l85
	line	31
	
l1056:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u734
u735:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u734:
	addlw	-1
	skipz
	goto	u735
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(135)^080h,f	;volatile
	goto	l85
	line	35
	
l1058:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u741
	goto	u740
u741:
	goto	l1062
u740:
	line	36
	
l1060:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u754
u755:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u754:
	addlw	-1
	skipz
	goto	u755
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l85
	line	38
	
l1062:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u764
u765:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u764:
	addlw	-1
	skipz
	goto	u765
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(136)^080h,f	;volatile
	goto	l85
	line	42
	
l1064:	
	movf	((GPIO_SetPinDirection@Direction)),w
	btfss	status,2
	goto	u771
	goto	u770
u771:
	goto	l1068
u770:
	line	43
	
l1066:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u784
u785:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u784:
	addlw	-1
	skipz
	goto	u785
	movf	(0+(??_GPIO_SetPinDirection)),w
	xorlw	0ffh
	bsf	status, 5	;RP0=1, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l85
	line	45
	
l1068:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinDirection)
	incf	(GPIO_SetPinDirection@Pin),w
	goto	u794
u795:
	clrc
	rlf	(??_GPIO_SetPinDirection),f
u794:
	addlw	-1
	skipz
	goto	u795
	movf	(0+(??_GPIO_SetPinDirection)),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(137)^080h,f	;volatile
	goto	l85
	line	50
	
l1072:	
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
	goto	l1040
	xorlw	1^0	; case 1
	skipnz
	goto	l1046
	xorlw	2^1	; case 2
	skipnz
	goto	l1052
	xorlw	3^2	; case 3
	skipnz
	goto	l1058
	xorlw	4^3	; case 4
	skipnz
	goto	l1064
	goto	l85
	asmopt pop

	line	51
	
l85:	
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
	
l1122:	
	movf	((IOC_SetCallback@ptr)),w
	btfsc	status,2
	goto	u881
	goto	u880
u881:
	goto	l158
u880:
	line	78
	
l1124:	
	movf	(IOC_SetCallback@ptr),w
	movwf	(_Global_IOC_Callback)
	line	83
	
l158:	
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
	
l1130:	
	movlw	low(0FEh)
	andwf	(11),f	;volatile
	line	71
	
l1132:	
	bsf	(11)+(3/8),(3)&7	;volatile
	line	72
	
l154:	
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
	
l1116:	
	movf	((EXT_INT_SetCallback@ptr)),w
	btfsc	status,2
	goto	u871
	goto	u870
u871:
	goto	l148
u870:
	line	55
	
l1118:	
	movf	(EXT_INT_SetCallback@ptr),w
	movwf	(_Global_EXT_Callback)
	line	59
	
l148:	
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
	
l1236:	
	
l1238:	
	movf	(12),w	;volatile
	movwf	(??_UART_sendByte)
	movlw	04h
u1135:
	clrc
	rrf	(??_UART_sendByte),f
	addlw	-1
	skipz
	goto	u1135
	btfss	(0+(??_UART_sendByte)),(0)&7
	goto	u1141
	goto	u1140
u1141:
	goto	l1238
u1140:
	line	41
	
l1240:	
	movf	(UART_sendByte@data),w
	movwf	(25)	;volatile
	line	42
	
l178:	
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
	
l1254:	
	
l1256:	
	movf	(12),w	;volatile
	movwf	(??_UART_readByte)
	movlw	05h
u1175:
	clrc
	rrf	(??_UART_readByte),f
	addlw	-1
	skipz
	goto	u1175
	btfss	(0+(??_UART_readByte)),(0)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l1256
u1180:
	line	75
	
l1258:	
	movf	(26),w	;volatile
	line	76
	
l194:	
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
	
l1250:	
	movf	(12),w	;volatile
	movwf	(??_UART_available)
	movlw	05h
u1165:
	clrc
	rrf	(??_UART_available),f
	addlw	-1
	skipz
	goto	u1165
	movf	(0+(??_UART_available)),w
	andlw	01h
	line	64
	
l188:	
	return
	callstack 0
GLOBAL	__end_of_UART_available
	__end_of_UART_available:
	signat	_UART_available,89
	global	_LED_Toggle

;; *************** function _LED_Toggle *****************
;; Defined at:
;;		line 24 in file "HAL/HAL_LED/HAL_LED.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    6[BANK0 ] unsigned char 
;;  current         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_GPIO_GetPinValue
;;		_GPIO_SetPinValue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_LED/HAL_LED.c"
	line	24
global __ptext16
__ptext16:	;psect for function _LED_Toggle
psect	text16
	file	"HAL/HAL_LED/HAL_LED.c"
	line	24
	
_LED_Toggle:	
;incstack = 0
	callstack 2
; Regs used in _LED_Toggle: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(LED_Toggle@Port)
	line	26
	
l1242:	
	movf	(LED_Toggle@Pin),w
	movwf	(GPIO_GetPinValue@Pin)
	movf	(LED_Toggle@Port),w
	fcall	_GPIO_GetPinValue
	movwf	(LED_Toggle@current)
	line	28
	
l1244:	
		decf	((LED_Toggle@current)),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1248
u1150:
	line	29
	
l1246:	
	movf	(LED_Toggle@Pin),w
	movwf	(GPIO_SetPinValue@Pin)
	clrf	(GPIO_SetPinValue@Value)
	movf	(LED_Toggle@Port),w
	fcall	_GPIO_SetPinValue
	goto	l214
	line	31
	
l1248:	
	movf	(LED_Toggle@Pin),w
	movwf	(GPIO_SetPinValue@Pin)
	clrf	(GPIO_SetPinValue@Value)
	incf	(GPIO_SetPinValue@Value),f
	movf	(LED_Toggle@Port),w
	fcall	_GPIO_SetPinValue
	line	32
	
l214:	
	return
	callstack 0
GLOBAL	__end_of_LED_Toggle
	__end_of_LED_Toggle:
	signat	_LED_Toggle,8313
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
;;		_LED_Toggle
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	54
global __ptext17
__ptext17:	;psect for function _GPIO_SetPinValue
psect	text17
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	54
	
_GPIO_SetPinValue:	
;incstack = 0
	callstack 2
; Regs used in _GPIO_SetPinValue: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_SetPinValue@Port)
	line	56
	
l1150:	
	goto	l1184
	line	59
	
l1152:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l1156
u890:
	line	60
	
l1154:	
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
	iorwf	(5),f	;volatile
	goto	l106
	line	62
	
l1156:	
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
	andwf	(5),f	;volatile
	goto	l106
	line	66
	
l1158:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1162
u920:
	line	67
	
l1160:	
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
	iorwf	(6),f	;volatile
	goto	l106
	line	69
	
l1162:	
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
	andwf	(6),f	;volatile
	goto	l106
	line	73
	
l1164:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l1168
u950:
	line	74
	
l1166:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u964
u965:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u964:
	addlw	-1
	skipz
	goto	u965
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(7),f	;volatile
	goto	l106
	line	76
	
l1168:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u974
u975:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u974:
	addlw	-1
	skipz
	goto	u975
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(7),f	;volatile
	goto	l106
	line	80
	
l1170:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l1174
u980:
	line	81
	
l1172:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u994
u995:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u994:
	addlw	-1
	skipz
	goto	u995
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(8),f	;volatile
	goto	l106
	line	83
	
l1174:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u1004
u1005:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u1004:
	addlw	-1
	skipz
	goto	u1005
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(8),f	;volatile
	goto	l106
	line	87
	
l1176:	
		decf	((GPIO_SetPinValue@Value)),w
	btfss	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l1180
u1010:
	line	88
	
l1178:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u1024
u1025:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u1024:
	addlw	-1
	skipz
	goto	u1025
	movf	(0+(??_GPIO_SetPinValue)),w
	iorwf	(9),f	;volatile
	goto	l106
	line	90
	
l1180:	
	movlw	low(01h)
	movwf	(??_GPIO_SetPinValue)
	incf	(GPIO_SetPinValue@Pin),w
	goto	u1034
u1035:
	clrc
	rlf	(??_GPIO_SetPinValue),f
u1034:
	addlw	-1
	skipz
	goto	u1035
	movf	(0+(??_GPIO_SetPinValue)),w
	xorlw	0ffh
	andwf	(9),f	;volatile
	goto	l106
	line	95
	
l1184:	
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
	goto	l1152
	xorlw	1^0	; case 1
	skipnz
	goto	l1158
	xorlw	2^1	; case 2
	skipnz
	goto	l1164
	xorlw	3^2	; case 3
	skipnz
	goto	l1170
	xorlw	4^3	; case 4
	skipnz
	goto	l1176
	goto	l106
	asmopt pop

	line	96
	
l106:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_SetPinValue
	__end_of_GPIO_SetPinValue:
	signat	_GPIO_SetPinValue,12409
	global	_GPIO_GetPinValue

;; *************** function _GPIO_GetPinValue *****************
;; Defined at:
;;		line 99 in file "MCAL/MCAL_GPIO/GPIO.c"
;; Parameters:    Size  Location     Type
;;  Port            1    wreg     unsigned char 
;;  Pin             1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Port            1    2[BANK0 ] unsigned char 
;;  Local_Value     1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Toggle
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	99
global __ptext18
__ptext18:	;psect for function _GPIO_GetPinValue
psect	text18
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	99
	
_GPIO_GetPinValue:	
;incstack = 0
	callstack 2
; Regs used in _GPIO_GetPinValue: [wreg-fsr0h+status,2+status,0]
	movwf	(GPIO_GetPinValue@Port)
	line	101
	
l1186:	
	clrf	(GPIO_GetPinValue@Local_Value)
	line	103
	goto	l1200
	line	106
	
l1188:	
	movf	(5),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u1044
u1045:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u1044:
	addlw	-1
	skipz
	goto	u1045
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	107
	goto	l1202
	line	110
	
l1190:	
	movf	(6),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u1054
u1055:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u1054:
	addlw	-1
	skipz
	goto	u1055
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	111
	goto	l1202
	line	114
	
l1192:	
	movf	(7),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u1064
u1065:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u1064:
	addlw	-1
	skipz
	goto	u1065
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	115
	goto	l1202
	line	118
	
l1194:	
	movf	(8),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u1074
u1075:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u1074:
	addlw	-1
	skipz
	goto	u1075
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	119
	goto	l1202
	line	122
	
l1196:	
	movf	(9),w	;volatile
	movwf	(??_GPIO_GetPinValue)
	incf	(GPIO_GetPinValue@Pin),w
	goto	u1084
u1085:
	clrc
	rrf	(??_GPIO_GetPinValue),f
u1084:
	addlw	-1
	skipz
	goto	u1085
	movf	(0+(??_GPIO_GetPinValue)),w
	movwf	(GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(GPIO_GetPinValue@Local_Value),f
	line	123
	goto	l1202
	line	127
	
l1200:	
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
	goto	l1188
	xorlw	1^0	; case 1
	skipnz
	goto	l1190
	xorlw	2^1	; case 2
	skipnz
	goto	l1192
	xorlw	3^2	; case 3
	skipnz
	goto	l1194
	xorlw	4^3	; case 4
	skipnz
	goto	l1196
	goto	l1202
	asmopt pop

	line	129
	
l1202:	
	movf	(GPIO_GetPinValue@Local_Value),w
	line	130
	
l117:	
	return
	callstack 0
GLOBAL	__end_of_GPIO_GetPinValue
	__end_of_GPIO_GetPinValue:
	signat	_GPIO_GetPinValue,8313
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	86
global __ptext19
__ptext19:	;psect for function _ISR
psect	text19
	file	"MCAL/MCAL_interrupt/interrupt.c"
	line	86
	
_ISR:	
;incstack = 0
	callstack 1
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
psect	text19
	line	89
	
i1l1294:	
	btfss	(11),(0)&7
	goto	u124_21
	goto	u124_20
u124_21:
	goto	i1l1300
u124_20:
	line	93
	
i1l1296:	
	movlw	low(0FEh)
	andwf	(11),f	;volatile
	line	97
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_Global_IOC_Callback)),w
	btfsc	status,2
	goto	u125_21
	goto	u125_20
u125_21:
	goto	i1l1300
u125_20:
	line	99
	
i1l1298:	
	movf	(_Global_IOC_Callback),w
	fcall	i1fptable
	line	107
	
i1l1300:	
	movf	(11),w	;volatile
	movwf	(??_ISR)
	movlw	01h
u126_25:
	clrc
	rrf	(??_ISR),f
	addlw	-1
	skipz
	goto	u126_25
	btfss	(0+(??_ISR)),(0)&7
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l167
u127_20:
	line	110
	
i1l1302:	
	movlw	low(0FDh)
	andwf	(11),f	;volatile
	line	113
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_Global_EXT_Callback)),w
	btfsc	status,2
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l167
u128_20:
	line	115
	
i1l1304:	
	movf	(_Global_EXT_Callback),w
	fcall	i1fptable
	line	121
	
i1l167:	
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
;;		line 28 in file "APP/main_hardware_UART.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"APP/main_hardware_UART.c"
	line	28
global __ptext20
__ptext20:	;psect for function _pedestrian_buttons_ISR
psect	text20
	file	"APP/main_hardware_UART.c"
	line	28
	
_pedestrian_buttons_ISR:	
;incstack = 0
	callstack 3
; Regs used in _pedestrian_buttons_ISR: []
	line	30
	
i1l1206:	
	movlw	01h
	movwf	(_pedestrianPressed)	;volatile
	line	31
	
i1l41:	
	return
	callstack 0
GLOBAL	__end_of_pedestrian_buttons_ISR
	__end_of_pedestrian_buttons_ISR:
	signat	_pedestrian_buttons_ISR,89
	global	_objectDetected_IR_ISR

;; *************** function _objectDetected_IR_ISR *****************
;; Defined at:
;;		line 33 in file "APP/main_hardware_UART.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	33
global __ptext21
__ptext21:	;psect for function _objectDetected_IR_ISR
psect	text21
	file	"APP/main_hardware_UART.c"
	line	33
	
_objectDetected_IR_ISR:	
;incstack = 0
	callstack 1
; Regs used in _objectDetected_IR_ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	37
	
i1l1208:	
	movlw	low(07h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin1)
	line	38
	movlw	low(06h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin2)
	line	39
	movlw	low(05h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin3)
	line	40
	movlw	low(04h)
	fcall	_IR_ReadState
	movwf	(objectDetected_IR_ISR@pin4)
	line	42
	
i1l1210:	
	movf	((objectDetected_IR_ISR@pin1)),w
	btfss	status,2
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l46
u109_20:
	
i1l1212:	
	movf	((objectDetected_IR_ISR@pin2)),w
	btfss	status,2
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l46
u110_20:
	
i1l1214:	
	movf	((objectDetected_IR_ISR@pin3)),w
	btfss	status,2
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l46
u111_20:
	
i1l1216:	
	movf	((objectDetected_IR_ISR@pin4)),w
	btfsc	status,2
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l47
u112_20:
	
i1l46:	
	line	44
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_objectDetected)	;volatile
	line	47
	
i1l47:	
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
;;		i1_GPIO_GetPinValue
;; This function is called by:
;;		_objectDetected_IR_ISR
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"HAL/HAL_IR/HAL_IR.c"
	line	18
global __ptext22
__ptext22:	;psect for function _IR_ReadState
psect	text22
	file	"HAL/HAL_IR/HAL_IR.c"
	line	18
	
_IR_ReadState:	
;incstack = 0
	callstack 1
; Regs used in _IR_ReadState: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(IR_ReadState@sensorPin)
	line	21
	
i1l1094:	
	movf	(IR_ReadState@sensorPin),w
	movwf	(i1GPIO_GetPinValue@Pin)
	movlw	low(01h)
	fcall	i1_GPIO_GetPinValue
	xorlw	0
	skipz
	goto	u85_21
	goto	u85_20
u85_21:
	goto	i1l1102
u85_20:
	line	24
	
i1l1096:	
	movlw	low(01h)
	goto	i1l225
	line	29
	
i1l1102:	
	movlw	low(0)
	line	32
	
i1l225:	
	return
	callstack 0
GLOBAL	__end_of_IR_ReadState
	__end_of_IR_ReadState:
	signat	_IR_ReadState,4217
	global	i1_GPIO_GetPinValue

;; *************** function i1_GPIO_GetPinValue *****************
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	99
global __ptext23
__ptext23:	;psect for function i1_GPIO_GetPinValue
psect	text23
	file	"MCAL/MCAL_GPIO/GPIO.c"
	line	99
	
i1_GPIO_GetPinValue:	
;incstack = 0
	callstack 1
; Regs used in i1_GPIO_GetPinValue: [wreg-fsr0h+status,2+status,0]
	movwf	(i1GPIO_GetPinValue@Port)
	line	101
	
i1l1074:	
	clrf	(i1GPIO_GetPinValue@Local_Value)
	line	103
	goto	i1l1088
	line	106
	
i1l1076:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	movwf	(??i1_GPIO_GetPinValue)
	incf	(i1GPIO_GetPinValue@Pin),w
	goto	u80_24
u80_25:
	clrc
	rrf	(??i1_GPIO_GetPinValue),f
u80_24:
	addlw	-1
	skipz
	goto	u80_25
	movf	(0+(??i1_GPIO_GetPinValue)),w
	movwf	(i1GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(i1GPIO_GetPinValue@Local_Value),f
	line	107
	goto	i1l1090
	line	110
	
i1l1078:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??i1_GPIO_GetPinValue)
	incf	(i1GPIO_GetPinValue@Pin),w
	goto	u81_24
u81_25:
	clrc
	rrf	(??i1_GPIO_GetPinValue),f
u81_24:
	addlw	-1
	skipz
	goto	u81_25
	movf	(0+(??i1_GPIO_GetPinValue)),w
	movwf	(i1GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(i1GPIO_GetPinValue@Local_Value),f
	line	111
	goto	i1l1090
	line	114
	
i1l1080:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??i1_GPIO_GetPinValue)
	incf	(i1GPIO_GetPinValue@Pin),w
	goto	u82_24
u82_25:
	clrc
	rrf	(??i1_GPIO_GetPinValue),f
u82_24:
	addlw	-1
	skipz
	goto	u82_25
	movf	(0+(??i1_GPIO_GetPinValue)),w
	movwf	(i1GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(i1GPIO_GetPinValue@Local_Value),f
	line	115
	goto	i1l1090
	line	118
	
i1l1082:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??i1_GPIO_GetPinValue)
	incf	(i1GPIO_GetPinValue@Pin),w
	goto	u83_24
u83_25:
	clrc
	rrf	(??i1_GPIO_GetPinValue),f
u83_24:
	addlw	-1
	skipz
	goto	u83_25
	movf	(0+(??i1_GPIO_GetPinValue)),w
	movwf	(i1GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(i1GPIO_GetPinValue@Local_Value),f
	line	119
	goto	i1l1090
	line	122
	
i1l1084:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(9),w	;volatile
	movwf	(??i1_GPIO_GetPinValue)
	incf	(i1GPIO_GetPinValue@Pin),w
	goto	u84_24
u84_25:
	clrc
	rrf	(??i1_GPIO_GetPinValue),f
u84_24:
	addlw	-1
	skipz
	goto	u84_25
	movf	(0+(??i1_GPIO_GetPinValue)),w
	movwf	(i1GPIO_GetPinValue@Local_Value)
	movlw	low(01h)
	andwf	(i1GPIO_GetPinValue@Local_Value),f
	line	123
	goto	i1l1090
	line	127
	
i1l1088:	
	movf	(i1GPIO_GetPinValue@Port),w
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
	goto	i1l1076
	xorlw	1^0	; case 1
	skipnz
	goto	i1l1078
	xorlw	2^1	; case 2
	skipnz
	goto	i1l1080
	xorlw	3^2	; case 3
	skipnz
	goto	i1l1082
	xorlw	4^3	; case 4
	skipnz
	goto	i1l1084
	goto	i1l1090
	asmopt pop

	line	129
	
i1l1090:	
	movf	(i1GPIO_GetPinValue@Local_Value),w
	line	130
	
i1l117:	
	return
	callstack 0
GLOBAL	__end_ofi1_GPIO_GetPinValue
	__end_ofi1_GPIO_GetPinValue:
	signat	i1_GPIO_GetPinValue,8281
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
