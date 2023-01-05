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
LIBS:MCU_Microchip_ATtiny
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
Text GLabel 6050 4650 0    60   Output ~ 0
RESET
$Comp
L C_Small C38
U 1 1 63071270
P 6350 4650
F 0 "C38" V 6200 4700 50  0000 L CNN
F 1 "100nF" V 6100 4550 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 6350 4650 50  0001 C CNN
F 3 "" H 6350 4650 50  0001 C CNN
	1    6350 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 4650 8450 4650
Wire Wire Line
	6250 4650 6050 4650
Wire Wire Line
	4800 4050 5050 4050
$Comp
L RJ45 J3
U 1 1 63A9DE7A
P 8200 2850
F 0 "J3" H 8400 3350 50  0000 C CNN
F 1 "RJ45" H 8050 3350 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4650 8450 3300
Wire Wire Line
	8250 3300 8250 3350
$Comp
L GND #PWR0105
U 1 1 63A9EE22
P 8250 3350
F 0 "#PWR0105" H 8250 3100 50  0001 C CNN
F 1 "GND" H 8250 3200 50  0001 C CNN
F 2 "" H 8250 3350 50  0001 C CNN
F 3 "" H 8250 3350 50  0001 C CNN
	1    8250 3350
	1    0    0    -1  
$EndComp
$Comp
L MMBT3904 Q13
U 1 1 63A9F4B0
P 4200 3050
F 0 "Q13" H 4400 3125 50  0000 L CNN
F 1 "MMBT3904" H 4400 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4400 2975 50  0001 L CIN
F 3 "" H 4200 3050 50  0001 L CNN
	1    4200 3050
	-1   0    0    -1  
$EndComp
$Comp
L MMBT3906 Q14
U 1 1 63A9F5A5
P 4950 3800
F 0 "Q14" H 5150 3875 50  0000 L CNN
F 1 "MMBT3906" H 5150 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5150 3725 50  0001 L CIN
F 3 "" H 4950 3800 50  0001 L CNN
	1    4950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3400 5050 3600
Wire Wire Line
	5050 3500 8050 3500
Wire Wire Line
	8050 3500 8050 3300
$Comp
L R_Small R28
U 1 1 63A9F93D
P 5050 3300
F 0 "R28" H 5100 3350 50  0000 L CNN
F 1 "4.7k" H 5100 3250 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5050 3300 50  0001 C CNN
F 3 "" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
Connection ~ 5050 3500
Wire Wire Line
	5050 3050 5050 3200
Wire Wire Line
	5050 4050 5050 4000
Wire Wire Line
	8350 3700 6850 3700
Wire Wire Line
	6850 3700 6850 3050
Wire Wire Line
	6850 3050 4900 3050
Wire Wire Line
	8350 3700 8350 3300
$Comp
L R_Small R27
U 1 1 63AA00B3
P 4800 3050
F 0 "R27" V 5000 3050 50  0000 L CNN
F 1 "10K" V 4900 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4800 3050 50  0001 C CNN
F 3 "" H 4800 3050 50  0001 C CNN
	1    4800 3050
	0    -1   -1   0   
$EndComp
Connection ~ 5050 3050
Wire Wire Line
	4700 3050 4400 3050
$Comp
L R_Small R20
U 1 1 63AA024E
P 4100 2600
F 0 "R20" H 4150 2650 50  0000 L CNN
F 1 "4.7k" H 4150 2550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4100 2600 50  0001 C CNN
F 3 "" H 4100 2600 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0106
U 1 1 63AA02B4
P 4100 3300
F 0 "#PWR0106" H 4100 3050 50  0001 C CNN
F 1 "GND" H 4100 3150 50  0001 C CNN
F 2 "" H 4100 3300 50  0001 C CNN
F 3 "" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3300 4100 3250
$Comp
L R_Small R21
U 1 1 63AA03A9
P 4550 3800
F 0 "R21" V 4750 3800 50  0000 L CNN
F 1 "1K" V 4650 3800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4550 3800 50  0001 C CNN
F 3 "" H 4550 3800 50  0001 C CNN
	1    4550 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 3800 4750 3800
Wire Wire Line
	4450 3800 4100 3800
Wire Wire Line
	4100 2700 4100 2850
Wire Wire Line
	4100 2400 4100 2500
Wire Wire Line
	4100 2800 3550 2800
Connection ~ 4100 2800
$Comp
L +3.3V #PWR0107
U 1 1 63AB286A
P 4100 2400
F 0 "#PWR0107" H 4100 2250 50  0001 C CNN
F 1 "+3.3V" H 4100 2540 50  0000 C CNN
F 2 "" H 4100 2400 50  0001 C CNN
F 3 "" H 4100 2400 50  0001 C CNN
	1    4100 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0108
U 1 1 63AB28C1
P 4800 4050
F 0 "#PWR0108" H 4800 3900 50  0001 C CNN
F 1 "+3.3V" V 4800 4300 50  0000 C CNN
F 2 "" H 4800 4050 50  0001 C CNN
F 3 "" H 4800 4050 50  0001 C CNN
	1    4800 4050
	0    -1   -1   0   
$EndComp
Text GLabel 4100 3800 0    60   Input ~ 0
RxD
Text GLabel 3550 2800 0    60   Output ~ 0
TxD
$EndSCHEMATC
