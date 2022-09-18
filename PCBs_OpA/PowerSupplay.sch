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
LIBS:LCSDR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM1117-5.0 U4
U 1 1 6253C1F5
P 4600 1250
F 0 "U4" H 4450 1500 50  0000 C CNN
F 1 "LM1117-5.0" H 4400 1400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3 U5
U 1 1 6253C1FC
P 3950 3500
F 0 "U5" H 3800 3750 50  0000 C CNN
F 1 "LM1117-3.3" H 3750 3650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 3950 3500 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 6253C203
P 4600 1550
F 0 "#PWR016" H 4600 1300 50  0001 C CNN
F 1 "GND" H 4600 1400 50  0001 C CNN
F 2 "" H 4600 1550 50  0001 C CNN
F 3 "" H 4600 1550 50  0001 C CNN
	1    4600 1550
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C10
U 1 1 6253C209
P 5050 1450
F 0 "C10" H 5150 1500 50  0000 L CNN
F 1 "100uF" H 5150 1400 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 5050 1450 50  0001 C CNN
F 3 "" H 5050 1450 50  0001 C CNN
	1    5050 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 6253C210
P 5050 1550
F 0 "#PWR017" H 5050 1300 50  0001 C CNN
F 1 "GND" H 5050 1400 50  0001 C CNN
F 2 "" H 5050 1550 50  0001 C CNN
F 3 "" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 6253C216
P 5550 1550
F 0 "#PWR018" H 5550 1300 50  0001 C CNN
F 1 "GND" H 5550 1400 50  0001 C CNN
F 2 "" H 5550 1550 50  0001 C CNN
F 3 "" H 5550 1550 50  0001 C CNN
	1    5550 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 6253C21C
P 5550 1450
F 0 "C12" H 5650 1500 50  0000 L CNN
F 1 "100nF" H 5650 1400 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5550 1450 50  0001 C CNN
F 3 "" H 5550 1450 50  0001 C CNN
	1    5550 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 6253C223
P 5600 1250
F 0 "#PWR019" H 5600 1100 50  0001 C CNN
F 1 "+5V" V 5600 1450 50  0000 C CNN
F 2 "" H 5600 1250 50  0001 C CNN
F 3 "" H 5600 1250 50  0001 C CNN
	1    5600 1250
	0    1    1    0   
$EndComp
$Comp
L CP_Small C8
U 1 1 6253C229
P 3450 1450
F 0 "C8" H 3550 1500 50  0000 L CNN
F 1 "100uF" H 3550 1400 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 3450 1450 50  0001 C CNN
F 3 "" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 6253C230
P 3450 1550
F 0 "#PWR020" H 3450 1300 50  0001 C CNN
F 1 "GND" H 3450 1400 50  0001 C CNN
F 2 "" H 3450 1550 50  0001 C CNN
F 3 "" H 3450 1550 50  0001 C CNN
	1    3450 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 6253C236
P 3950 1550
F 0 "#PWR021" H 3950 1300 50  0001 C CNN
F 1 "GND" H 3950 1400 50  0001 C CNN
F 2 "" H 3950 1550 50  0001 C CNN
F 3 "" H 3950 1550 50  0001 C CNN
	1    3950 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 6253C23C
P 3950 1450
F 0 "C9" H 4050 1500 50  0000 L CNN
F 1 "100nF" H 4050 1400 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 3950 1450 50  0001 C CNN
F 3 "" H 3950 1450 50  0001 C CNN
	1    3950 1450
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 6253C243
P 2900 1450
F 0 "L2" H 2930 1490 50  0000 L CNN
F 1 "33µH" H 2930 1410 50  0000 L CNN
F 2 "Choke_Axial_ThroughHole:Choke_Horizontal_RM10mm" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 6253C24A
P 3950 3800
F 0 "#PWR022" H 3950 3550 50  0001 C CNN
F 1 "GND" H 3950 3650 50  0001 C CNN
F 2 "" H 3950 3800 50  0001 C CNN
F 3 "" H 3950 3800 50  0001 C CNN
	1    3950 3800
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C11
U 1 1 6253C250
P 4400 3700
F 0 "C11" H 4500 3750 50  0000 L CNN
F 1 "100uF" H 4500 3650 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 4400 3700 50  0001 C CNN
F 3 "" H 4400 3700 50  0001 C CNN
	1    4400 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 6253C257
P 4400 3800
F 0 "#PWR023" H 4400 3550 50  0001 C CNN
F 1 "GND" H 4400 3650 50  0001 C CNN
F 2 "" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 6253C25D
P 4900 3800
F 0 "#PWR024" H 4900 3550 50  0001 C CNN
F 1 "GND" H 4900 3650 50  0001 C CNN
F 2 "" H 4900 3800 50  0001 C CNN
F 3 "" H 4900 3800 50  0001 C CNN
	1    4900 3800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C13
U 1 1 6253C263
P 4900 3700
F 0 "C13" H 5000 3750 50  0000 L CNN
F 1 "100nF" H 5000 3650 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 4900 3700 50  0001 C CNN
F 3 "" H 4900 3700 50  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 6253C26A
P 5000 3500
F 0 "#PWR025" H 5000 3350 50  0001 C CNN
F 1 "+3.3V" V 5000 3750 50  0000 C CNN
F 2 "" H 5000 3500 50  0001 C CNN
F 3 "" H 5000 3500 50  0001 C CNN
	1    5000 3500
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR026
U 1 1 6253C270
P 3200 3500
F 0 "#PWR026" H 3200 3350 50  0001 C CNN
F 1 "+5V" V 3200 3700 50  0000 C CNN
F 2 "" H 3200 3500 50  0001 C CNN
F 3 "" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR027
U 1 1 6253C290
P 1700 1950
F 0 "#PWR027" H 1700 1700 50  0001 C CNN
F 1 "GND" H 1700 1800 50  0001 C CNN
F 2 "" H 1700 1950 50  0001 C CNN
F 3 "" H 1700 1950 50  0001 C CNN
	1    1700 1950
	1    0    0    -1  
$EndComp
$Comp
L Jack-DC J8
U 1 1 630B3C5C
P 1350 1800
F 0 "J8" H 1350 2010 50  0000 C CNN
F 1 "Jack-DC" H 1350 1625 50  0000 C CNN
F 2 "LCSDR:BARREL_JACK" H 1400 1760 50  0001 C CNN
F 3 "" H 1400 1760 50  0001 C CNN
	1    1350 1800
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR028
U 1 1 630B53DA
P 2900 1100
F 0 "#PWR028" H 2900 950 50  0001 C CNN
F 1 "+12V" H 2900 1240 50  0000 C CNN
F 2 "" H 2900 1100 50  0001 C CNN
F 3 "" H 2900 1100 50  0001 C CNN
	1    2900 1100
	1    0    0    -1  
$EndComp
Connection ~ 2900 1250
Wire Wire Line
	2900 1700 2900 1550
Wire Wire Line
	1650 1700 2900 1700
Wire Wire Line
	3200 3500 3650 3500
Connection ~ 4900 3500
Connection ~ 4400 3500
Wire Wire Line
	4900 3500 4900 3600
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	4250 3500 5000 3500
Connection ~ 3450 1250
Wire Wire Line
	3450 1350 3450 1250
Connection ~ 3950 1250
Wire Wire Line
	3950 1250 3950 1350
Wire Wire Line
	2900 1250 4300 1250
Wire Wire Line
	2900 1100 2900 1350
Connection ~ 5550 1250
Connection ~ 5050 1250
Wire Wire Line
	5550 1250 5550 1350
Wire Wire Line
	5050 1250 5050 1350
Wire Wire Line
	4900 1250 5600 1250
$Comp
L +12VA #PWR029
U 1 1 630BADB5
P 2650 1600
F 0 "#PWR029" H 2650 1450 50  0001 C CNN
F 1 "+12VA" H 2650 1740 50  0000 C CNN
F 2 "" H 2650 1600 50  0001 C CNN
F 3 "" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1600 2650 1700
Connection ~ 2650 1700
Wire Wire Line
	1650 1800 1700 1800
Wire Wire Line
	1700 1800 1700 1950
Wire Wire Line
	1650 1900 1700 1900
Connection ~ 1700 1900
$Comp
L CP_Small C35
U 1 1 630BB4A7
P 2200 1900
F 0 "C35" H 2300 1950 50  0000 L CNN
F 1 "100uF" H 2300 1850 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 2200 1900 50  0001 C CNN
F 3 "" H 2200 1900 50  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 630BB4AD
P 2200 2000
F 0 "#PWR030" H 2200 1750 50  0001 C CNN
F 1 "GND" H 2200 1850 50  0001 C CNN
F 2 "" H 2200 2000 50  0001 C CNN
F 3 "" H 2200 2000 50  0001 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1800 2200 1700
Connection ~ 2200 1700
$EndSCHEMATC
