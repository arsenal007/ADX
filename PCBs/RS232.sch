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
Sheet 8 8
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
L +5V #PWR096
U 1 1 6382D3E4
P 7150 1950
F 0 "#PWR096" H 7150 1800 50  0001 C CNN
F 1 "+5V" V 7150 2150 50  0000 C CNN
F 2 "" H 7150 1950 50  0001 C CNN
F 3 "" H 7150 1950 50  0001 C CNN
	1    7150 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 1950 7150 1950
Connection ~ 4250 3650
Wire Wire Line
	4250 3650 4250 3700
Wire Wire Line
	4300 3650 4300 3600
Wire Wire Line
	4200 3650 4300 3650
Wire Wire Line
	4200 3600 4200 3650
$Comp
L GND #PWR095
U 1 1 6382D291
P 4250 3700
F 0 "#PWR095" H 4250 3450 50  0001 C CNN
F 1 "GND" H 4250 3550 50  0001 C CNN
F 2 "" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3950 6000 3900
$Comp
L GND #PWR094
U 1 1 6382D236
P 6000 3950
F 0 "#PWR094" H 6000 3700 50  0001 C CNN
F 1 "GND" H 6000 3800 50  0001 C CNN
F 2 "" H 6000 3950 50  0001 C CNN
F 3 "" H 6000 3950 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2300 6650 2250
$Comp
L GND #PWR093
U 1 1 6382CF3D
P 6650 2300
F 0 "#PWR093" H 6650 2050 50  0001 C CNN
F 1 "GND" H 6650 2150 50  0001 C CNN
F 2 "" H 6650 2300 50  0001 C CNN
F 3 "" H 6650 2300 50  0001 C CNN
	1    6650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2300 6250 2250
$Comp
L GND #PWR092
U 1 1 6382CECE
P 6250 2300
F 0 "#PWR092" H 6250 2050 50  0001 C CNN
F 1 "GND" H 6250 2150 50  0001 C CNN
F 2 "" H 6250 2300 50  0001 C CNN
F 3 "" H 6250 2300 50  0001 C CNN
	1    6250 2300
	1    0    0    -1  
$EndComp
Connection ~ 6650 1950
Wire Wire Line
	6650 2050 6650 1950
Connection ~ 6250 1950
Wire Wire Line
	6250 2050 6250 1950
Wire Wire Line
	6000 1950 6000 2700
Wire Wire Line
	6750 1950 6000 1950
Wire Wire Line
	5200 2550 5250 2550
Wire Wire Line
	5200 2600 5200 2550
$Comp
L GND #PWR091
U 1 1 6382C93E
P 5200 2600
F 0 "#PWR091" H 5200 2350 50  0001 C CNN
F 1 "GND" H 5200 2450 50  0001 C CNN
F 2 "" H 5200 2600 50  0001 C CNN
F 3 "" H 5200 2600 50  0001 C CNN
	1    5200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2550 5900 2700
Wire Wire Line
	5450 2550 5900 2550
Wire Wire Line
	7000 3100 7100 3100
Wire Wire Line
	6600 3100 6800 3100
Wire Wire Line
	6600 3000 6600 3100
Wire Wire Line
	6400 3000 6600 3000
Wire Wire Line
	6600 2900 6400 2900
Wire Wire Line
	6600 2750 6600 2900
Wire Wire Line
	6800 2750 6600 2750
Wire Wire Line
	7000 2750 7100 2750
Wire Wire Line
	7050 3700 7600 3700
Wire Wire Line
	6400 3700 6850 3700
Wire Wire Line
	4600 3300 5600 3300
Wire Wire Line
	4600 3200 5600 3200
$Comp
L CH340E U4
U 1 1 6382B9FA
P 6000 3300
F 0 "U4" H 5800 3850 50  0000 R CNN
F 1 "CH340E" H 6050 3850 50  0000 L CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 6050 2750 50  0001 L CNN
F 3 "" H 5650 4100 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L USB_B J3
U 1 1 6382895E
P 4300 3200
F 0 "J3" H 4100 3650 50  0000 L CNN
F 1 "USB_B" H 4100 3550 50  0000 L CNN
F 2 "Connectors:USB_B" H 4450 3150 50  0001 C CNN
F 3 "" H 4450 3150 50  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 638123D7
P 6650 2150
F 0 "C20" H 6750 2200 50  0000 L CNN
F 1 "100nF" H 6750 2100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6650 2150 50  0001 C CNN
F 3 "" H 6650 2150 50  0001 C CNN
	1    6650 2150
	1    0    0    -1  
$EndComp
$Comp
L L_Small L4
U 1 1 63811C30
P 6850 1950
F 0 "L4" V 7050 1950 50  0000 L CNN
F 1 "10uH" V 6950 1850 50  0000 L CNN
F 2 "Choke_Axial_ThroughHole:Choke_Horizontal_RM10mm" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C31
U 1 1 6380FB4E
P 5350 2550
F 0 "C31" V 5550 2750 50  0000 L CNN
F 1 "100nF" V 5450 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5350 2550 50  0001 C CNN
F 3 "" H 5350 2550 50  0001 C CNN
	1    5350 2550
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R21
U 1 1 630C95E8
P 6900 2750
F 0 "R21" V 7100 2750 50  0000 L CNN
F 1 "1K" V 7000 2750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6900 2750 50  0001 C CNN
F 3 "" H 6900 2750 50  0001 C CNN
	1    6900 2750
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R20
U 1 1 630C948C
P 6900 3100
F 0 "R20" V 7100 3100 50  0000 L CNN
F 1 "1K" V 7000 3100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6900 3100 50  0001 C CNN
F 3 "" H 6900 3100 50  0001 C CNN
	1    6900 3100
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C38
U 1 1 63071270
P 6950 3700
F 0 "C38" V 6800 3750 50  0000 L CNN
F 1 "100nF" V 6700 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6950 3700 50  0001 C CNN
F 3 "" H 6950 3700 50  0001 C CNN
	1    6950 3700
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C44
U 1 1 63071026
P 6250 2150
F 0 "C44" H 6350 2200 50  0000 L CNN
F 1 "10uF" H 6350 2100 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 6250 2150 50  0001 C CNN
F 3 "" H 6250 2150 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
Text GLabel 7600 3700 2    60   Output ~ 0
RESET
Text GLabel 7100 2750 2    60   Output ~ 0
RxD
Text GLabel 7100 3100 2    60   Input ~ 0
TxD
$EndSCHEMATC
