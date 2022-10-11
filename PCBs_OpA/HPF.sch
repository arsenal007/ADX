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
F 1 "270pF" V 3850 2050 50  0000 L CNN
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
F 1 "270pF" V 4700 2050 50  0000 L CNN
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
F 1 "680pF" V 5450 2050 50  0000 L CNN
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
F 1 "900nH" H 4980 2360 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_6,5x13mm_Vertical" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
$Comp
L L_Small L15
U 1 1 630A3742
P 4150 2400
F 0 "L15" H 4180 2440 50  0000 L CNN
F 1 "800nH" H 4180 2360 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_6,5x13mm_Vertical" H 4150 2400 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
$Comp
L L_Small L13
U 1 1 630A3786
P 3350 2400
F 0 "L13" H 3380 2440 50  0000 L CNN
F 1 "900nH" H 3380 2360 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_6,5x13mm_Vertical" H 3350 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0001 C CNN
	1    3350 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0117
U 1 1 630A3972
P 4950 2600
F 0 "#PWR0117" H 4950 2350 50  0001 C CNN
F 1 "GND" H 4950 2450 50  0000 C CNN
F 2 "" H 4950 2600 50  0001 C CNN
F 3 "" H 4950 2600 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0118
U 1 1 630A39B4
P 4150 2600
F 0 "#PWR0118" H 4150 2350 50  0001 C CNN
F 1 "GND" H 4150 2450 50  0000 C CNN
F 2 "" H 4150 2600 50  0001 C CNN
F 3 "" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0119
U 1 1 630A39EF
P 3350 2600
F 0 "#PWR0119" H 3350 2350 50  0001 C CNN
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
	5400 2200 6400 2200
Wire Wire Line
	3800 2200 4450 2200
Wire Wire Line
	4150 2200 4150 2300
Connection ~ 4150 2200
Wire Wire Line
	3350 2200 3350 2300
Connection ~ 3350 2200
Wire Wire Line
	4950 2500 4950 2600
Wire Wire Line
	4150 2500 4150 2600
Wire Wire Line
	3350 2600 3350 2500
Text GLabel 2500 2200 0    60   Input ~ 0
RF_IN
Text GLabel 6400 2200 2    60   Output ~ 0
HPF
$Comp
L Conn_Coaxial J7
U 1 1 630C7FBA
P 6250 2500
F 0 "J7" H 6260 2620 50  0000 C CNN
F 1 "MEASURE" H 6550 2500 50  0000 C CNN
F 2 "LCSDR:U.FL_Molex_MCRF_73412-0110_Vertical" H 6250 2500 50  0001 C CNN
F 3 "" H 6250 2500 50  0001 C CNN
	1    6250 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0120
U 1 1 630C7FC1
P 6250 2750
F 0 "#PWR0120" H 6250 2500 50  0001 C CNN
F 1 "GND" H 6250 2600 50  0001 C CNN
F 2 "" H 6250 2750 50  0001 C CNN
F 3 "" H 6250 2750 50  0001 C CNN
	1    6250 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 2750 6250 2700
Wire Wire Line
	6100 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2200
Connection ~ 6000 2200
$Comp
L Conn_Coaxial J5
U 1 1 630C80F5
P 2300 2500
F 0 "J5" H 2310 2620 50  0000 C CNN
F 1 "MEASURE" H 2600 2500 50  0000 C CNN
F 2 "LCSDR:U.FL_Molex_MCRF_73412-0110_Vertical" H 2300 2500 50  0001 C CNN
F 3 "" H 2300 2500 50  0001 C CNN
	1    2300 2500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0121
U 1 1 630C80FB
P 2300 2750
F 0 "#PWR0121" H 2300 2500 50  0001 C CNN
F 1 "GND" H 2300 2600 50  0001 C CNN
F 2 "" H 2300 2750 50  0001 C CNN
F 3 "" H 2300 2750 50  0001 C CNN
	1    2300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2750 2300 2700
$Comp
L C_Small C21
U 1 1 631185E3
P 3050 2200
F 0 "C21" V 3300 2150 50  0000 L CNN
F 1 "680pF" V 3200 2050 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 3050 2200 50  0001 C CNN
F 3 "" H 3050 2200 50  0001 C CNN
	1    3050 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2200 3600 2200
Wire Wire Line
	2950 2200 2500 2200
Wire Wire Line
	2450 2500 2750 2500
Wire Wire Line
	2750 2500 2750 2200
Connection ~ 2750 2200
Text Notes 3250 1700 0    60   ~ 0
 40M  (7Mhz) High Pass Filter
$EndSCHEMATC
