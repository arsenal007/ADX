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
Sheet 8 9
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
L GND #PWR0111
U 1 1 630723F2
P 6300 2150
F 0 "#PWR0111" H 6300 1900 50  0001 C CNN
F 1 "GND" H 6300 2000 50  0001 C CNN
F 2 "" H 6300 2150 50  0001 C CNN
F 3 "" H 6300 2150 50  0001 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2350 3850 2350
Wire Wire Line
	2850 2450 4100 2450
Text GLabel 2400 2450 0    60   Input ~ 0
TxD
Text GLabel 3100 2000 0    60   Output ~ 0
RxD
Text GLabel 3050 2750 0    60   Output ~ 0
RESET
$Comp
L CP_Small C44
U 1 1 63071026
P 6300 2050
F 0 "C44" H 6400 2100 50  0000 L CNN
F 1 "10uF" H 6400 2000 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 6300 2050 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C38
U 1 1 63071270
P 3350 2750
F 0 "C38" V 3200 2800 50  0000 L CNN
F 1 "100nF" V 3100 2650 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 3350 2750 50  0001 C CNN
F 3 "" H 3350 2750 50  0001 C CNN
	1    3350 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 2750 4100 2750
Wire Wire Line
	3250 2750 3050 2750
$Comp
L L_Small L12
U 1 1 630713F4
P 4600 1900
F 0 "L12" V 4800 1900 50  0000 L CNN
F 1 "10uH" V 4700 1800 50  0000 L CNN
F 2 "Choke_Axial_ThroughHole:Choke_Horizontal_RM10mm" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0001 C CNN
	1    4600 1900
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR0112
U 1 1 63071610
P 4300 1900
F 0 "#PWR0112" H 4300 1750 50  0001 C CNN
F 1 "+5V" V 4300 2100 50  0000 C CNN
F 2 "" H 4300 1900 50  0001 C CNN
F 3 "" H 4300 1900 50  0001 C CNN
	1    4300 1900
	0    -1   -1   0   
$EndComp
$Comp
L USB_B J3
U 1 1 630B7FAF
P 8000 2450
F 0 "J3" H 7800 2900 50  0000 L CNN
F 1 "USB_B" H 7800 2800 50  0000 L CNN
F 2 "Connectors:USB_B" H 8150 2400 50  0001 C CNN
F 3 "" H 8150 2400 50  0001 C CNN
	1    8000 2450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0113
U 1 1 630B8385
P 8050 2950
F 0 "#PWR0113" H 8050 2700 50  0001 C CNN
F 1 "GND" H 8050 2800 50  0001 C CNN
F 2 "" H 8050 2950 50  0001 C CNN
F 3 "" H 8050 2950 50  0001 C CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2850 8000 2900
Wire Wire Line
	8000 2900 8100 2900
Wire Wire Line
	8100 2900 8100 2850
Wire Wire Line
	8050 2900 8050 2950
Connection ~ 8050 2900
$Comp
L FT232RL U3
U 1 1 630B8CDC
P 4900 3050
F 0 "U3" H 4250 3950 50  0000 L CNN
F 1 "FT232RL" H 5300 3950 50  0000 L CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 4900 3050 50  0001 C CNN
F 3 "" H 4900 3050 50  0001 C CNN
	1    4900 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 2650 6300 2650
Wire Wire Line
	6300 2650 6300 2450
Wire Wire Line
	5700 2750 6550 2750
Wire Wire Line
	5900 1900 5900 3150
Wire Wire Line
	5900 3050 5700 3050
Wire Wire Line
	5000 1900 5000 2050
Wire Wire Line
	5700 3750 5900 3750
Wire Wire Line
	5900 3750 5900 4200
Wire Wire Line
	5900 4200 4700 4200
Wire Wire Line
	5100 4200 5100 4050
Wire Wire Line
	4900 4050 4900 4300
Connection ~ 5100 4200
Wire Wire Line
	4800 4200 4800 4050
Connection ~ 4900 4200
Wire Wire Line
	4700 4200 4700 4050
Connection ~ 4800 4200
Wire Wire Line
	4800 2050 4800 1900
Wire Wire Line
	4700 1900 6300 1900
Connection ~ 5000 1900
Wire Wire Line
	5700 2350 6450 2350
$Comp
L GND #PWR0114
U 1 1 630B9402
P 4900 4300
F 0 "#PWR0114" H 4900 4050 50  0001 C CNN
F 1 "GND" H 4900 4150 50  0001 C CNN
F 2 "" H 4900 4300 50  0001 C CNN
F 3 "" H 4900 4300 50  0001 C CNN
	1    4900 4300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C33
U 1 1 630B9493
P 6450 3250
F 0 "C33" H 6550 3300 50  0000 L CNN
F 1 "100nF" H 6550 3200 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 6450 3250 50  0001 C CNN
F 3 "" H 6450 3250 50  0001 C CNN
	1    6450 3250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C31
U 1 1 630B9531
P 5900 3250
F 0 "C31" H 6000 3300 50  0000 L CNN
F 1 "100nF" H 6000 3200 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5900 3250 50  0001 C CNN
F 3 "" H 5900 3250 50  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2350 6450 3150
Connection ~ 5900 3050
$Comp
L GND #PWR0115
U 1 1 630B965B
P 5900 3400
F 0 "#PWR0115" H 5900 3150 50  0001 C CNN
F 1 "GND" H 5900 3250 50  0001 C CNN
F 2 "" H 5900 3400 50  0001 C CNN
F 3 "" H 5900 3400 50  0001 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3400 5900 3350
$Comp
L GND #PWR0116
U 1 1 630B96F9
P 6450 3400
F 0 "#PWR0116" H 6450 3150 50  0001 C CNN
F 1 "GND" H 6450 3250 50  0001 C CNN
F 2 "" H 6450 3400 50  0001 C CNN
F 3 "" H 6450 3400 50  0001 C CNN
	1    6450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3400 6450 3350
Connection ~ 4800 1900
Wire Wire Line
	4300 1900 4500 1900
Wire Wire Line
	6300 1900 6300 1950
Connection ~ 5900 1900
$Comp
L R_Small R20
U 1 1 630C948C
P 2750 2450
F 0 "R20" V 2950 2450 50  0000 L CNN
F 1 "1K" V 2850 2450 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2750 2450 50  0001 C CNN
F 3 "" H 2750 2450 50  0001 C CNN
	1    2750 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2450 2650 2450
$Comp
L R_Small R21
U 1 1 630C95E8
P 3400 2000
F 0 "R21" V 3600 2000 50  0000 L CNN
F 1 "1K" V 3500 2000 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3400 2000 50  0001 C CNN
F 3 "" H 3400 2000 50  0001 C CNN
	1    3400 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 2000 3300 2000
Wire Wire Line
	3500 2000 3850 2000
Wire Wire Line
	3850 2000 3850 2350
Wire Wire Line
	6300 2450 7700 2450
Wire Wire Line
	7700 2550 6550 2550
Wire Wire Line
	6550 2550 6550 2750
$EndSCHEMATC
