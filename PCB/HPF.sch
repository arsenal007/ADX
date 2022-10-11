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
Sheet 9 9
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
L C_Small C45
U 1 1 630A3609
P 3700 2200
F 0 "C45" V 3950 2150 50  0000 L CNN
F 1 "330pF" V 3850 2050 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 3700 2200 50  0001 C CNN
F 3 "" H 3700 2200 50  0001 C CNN
	1    3700 2200
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C47
U 1 1 630A3651
P 4550 2200
F 0 "C47" V 4800 2150 50  0000 L CNN
F 1 "220pF" V 4700 2050 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 4550 2200 50  0001 C CNN
F 3 "" H 4550 2200 50  0001 C CNN
	1    4550 2200
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C49
U 1 1 630A366B
P 5300 2200
F 0 "C49" V 5550 2150 50  0000 L CNN
F 1 "330pF" V 5450 2050 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L17
U 1 1 630A36DA
P 4950 2400
F 0 "L17" H 4980 2440 50  0000 L CNN
F 1 "680nH" H 4980 2360 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
$Comp
L L_Small L19
U 1 1 630A370D
P 5650 2400
F 0 "L19" H 5680 2440 50  0000 L CNN
F 1 "1uH" H 5680 2360 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" H 5650 2400 50  0001 C CNN
F 3 "" H 5650 2400 50  0001 C CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
$Comp
L L_Small L15
U 1 1 630A3742
P 4150 2400
F 0 "L15" H 4180 2440 50  0000 L CNN
F 1 "680nH" H 4180 2360 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" H 4150 2400 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
$Comp
L L_Small L13
U 1 1 630A3786
P 3350 2400
F 0 "L13" H 3380 2440 50  0000 L CNN
F 1 "1uH" H 3380 2360 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" H 3350 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0001 C CNN
	1    3350 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR095
U 1 1 630A3912
P 5650 2600
F 0 "#PWR095" H 5650 2350 50  0001 C CNN
F 1 "GND" H 5650 2450 50  0000 C CNN
F 2 "" H 5650 2600 50  0001 C CNN
F 3 "" H 5650 2600 50  0001 C CNN
	1    5650 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 630A3972
P 4950 2600
F 0 "#PWR096" H 4950 2350 50  0001 C CNN
F 1 "GND" H 4950 2450 50  0000 C CNN
F 2 "" H 4950 2600 50  0001 C CNN
F 3 "" H 4950 2600 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR097
U 1 1 630A39B4
P 4150 2600
F 0 "#PWR097" H 4150 2350 50  0001 C CNN
F 1 "GND" H 4150 2450 50  0000 C CNN
F 2 "" H 4150 2600 50  0001 C CNN
F 3 "" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR098
U 1 1 630A39EF
P 3350 2600
F 0 "#PWR098" H 3350 2350 50  0001 C CNN
F 1 "GND" H 3350 2450 50  0000 C CNN
F 2 "" H 3350 2600 50  0001 C CNN
F 3 "" H 3350 2600 50  0001 C CNN
	1    3350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2200 5200 2200
Wire Wire Line
	4950 2300 4950 2200
Connection ~ 4950 2200
Wire Wire Line
	5400 2200 6300 2200
Wire Wire Line
	5650 2200 5650 2300
Wire Wire Line
	3800 2200 4450 2200
Wire Wire Line
	4150 2200 4150 2300
Connection ~ 4150 2200
Wire Wire Line
	3000 2200 3600 2200
Wire Wire Line
	3350 2200 3350 2300
Connection ~ 5650 2200
Connection ~ 3350 2200
Wire Wire Line
	5650 2500 5650 2600
Wire Wire Line
	4950 2500 4950 2600
Wire Wire Line
	4150 2500 4150 2600
Wire Wire Line
	3350 2600 3350 2500
Text GLabel 6300 2200 2    60   Output ~ 0
PREAMP_IN
Text GLabel 3000 2200 0    60   Input ~ 0
RF_IN
$EndSCHEMATC
