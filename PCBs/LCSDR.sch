EESchema Schematic File Version 2
LIBS:LCSDR-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:LCSDR
LIBS:switches
LIBS:ftdi
LIBS:Oscillators
LIBS:BF998
LIBS:relays
LIBS:stm32
LIBS:Interface_USB
LIBS:Arduino
LIBS:LCSDR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "UT3MK VFO"
Date "2016-02-18"
Rev "2.0-pre1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x04 J6
U 1 1 5FFDFD88
P 9000 3300
F 0 "J6" H 9000 3500 50  0000 C CNN
F 1 "I2C" H 9000 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9000 3300 50  0001 C CNN
F 3 "" H 9000 3300 50  0001 C CNN
	1    9000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5FFDFFFB
P 8600 3200
F 0 "#PWR01" H 8600 2950 50  0001 C CNN
F 1 "GND" H 8600 3050 50  0001 C CNN
F 2 "" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3200
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR02
U 1 1 5FFE0CB0
P 8450 3300
F 0 "#PWR02" H 8450 3150 50  0001 C CNN
F 1 "+5V" V 8450 3500 50  0000 C CNN
F 2 "" H 8450 3300 50  0001 C CNN
F 3 "" H 8450 3300 50  0001 C CNN
	1    8450 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 3200 8800 3200
Text GLabel 8700 3400 0    60   BiDi ~ 0
SDA
Wire Wire Line
	8450 3300 8800 3300
Text GLabel 8700 3600 0    60   Output ~ 0
SCL
Wire Wire Line
	8700 3400 8800 3400
Wire Wire Line
	8700 3600 8750 3600
Wire Wire Line
	8750 3600 8750 3500
Wire Wire Line
	8750 3500 8800 3500
$Comp
L Conn_01x01 J12
U 1 1 6000B737
P 9050 1550
F 0 "J12" H 9050 1650 50  0000 C CNN
F 1 "Conn_01x01" H 9050 1450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 9050 1550 50  0001 C CNN
F 3 "" H 9050 1550 50  0001 C CNN
	1    9050 1550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J13
U 1 1 6000BA3A
P 9050 1850
F 0 "J13" H 9050 1950 50  0000 C CNN
F 1 "Conn_01x01" H 9050 1750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 9050 1850 50  0001 C CNN
F 3 "" H 9050 1850 50  0001 C CNN
	1    9050 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J14
U 1 1 6000BB7C
P 9050 2150
F 0 "J14" H 9050 2250 50  0000 C CNN
F 1 "Conn_01x01" H 9050 2050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 9050 2150 50  0001 C CNN
F 3 "" H 9050 2150 50  0001 C CNN
	1    9050 2150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J15
U 1 1 6000BCC1
P 9050 2450
F 0 "J15" H 9050 2550 50  0000 C CNN
F 1 "Conn_01x01" H 9050 2350 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 9050 2450 50  0001 C CNN
F 3 "" H 9050 2450 50  0001 C CNN
	1    9050 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 6000BED7
P 8650 2600
F 0 "#PWR03" H 8650 2350 50  0001 C CNN
F 1 "GND" H 8650 2450 50  0001 C CNN
F 2 "" H 8650 2600 50  0001 C CNN
F 3 "" H 8650 2600 50  0001 C CNN
	1    8650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1550 8650 2600
Wire Wire Line
	8650 1550 8850 1550
Wire Wire Line
	8850 1850 8650 1850
Connection ~ 8650 1850
Wire Wire Line
	8850 2150 8650 2150
Connection ~ 8650 2150
Wire Wire Line
	8850 2450 8650 2450
Connection ~ 8650 2450
$Sheet
S 850  1000 1600 950 
U 625015D7
F0 "SI5351" 60
F1 "SI5351.sch" 60
$EndSheet
$Sheet
S 2650 1000 1600 950 
U 6253BC2D
F0 "PowerSupplay" 60
F1 "PowerSupplay.sch" 60
$EndSheet
$Sheet
S 850  2200 1600 950 
U 6253D7B6
F0 "MCU" 60
F1 "MCU.sch" 60
$EndSheet
$Sheet
S 2650 2200 1600 950 
U 63054DF3
F0 "RX" 60
F1 "RX.sch" 60
$EndSheet
$Sheet
S 850  3350 1600 950 
U 63060EF3
F0 "PA" 60
F1 "PA.sch" 60
$EndSheet
$Sheet
S 2650 3350 1600 950 
U 63062823
F0 "LPF" 60
F1 "LPF.sch" 60
$EndSheet
$Sheet
S 4400 1000 1600 950 
U 6307088C
F0 "RS232" 60
F1 "RS232.sch" 60
$EndSheet
$EndSCHEMATC
