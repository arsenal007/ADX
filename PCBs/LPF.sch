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
Sheet 7 8
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
L L_Small L6
U 1 1 630B800D
P 5200 2400
F 0 "L6" V 5400 2450 50  0000 L CNN
F 1 "1.22uH" V 5300 2250 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_6,5x13mm_Vertical" H 5200 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C32
U 1 1 630B80C9
P 5550 2650
F 0 "C32" H 5650 2700 50  0000 L CNN
F 1 "750pF" H 5650 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C30
U 1 1 630B8174
P 4950 2650
F 0 "C30" H 5050 2700 50  0000 L CNN
F 1 "360pF" H 5050 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 4950 2650 50  0001 C CNN
F 3 "" H 4950 2650 50  0001 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2400 5750 2400
Wire Wire Line
	5550 2400 5550 2550
Connection ~ 5550 2400
Wire Wire Line
	4950 2400 4950 2550
Wire Wire Line
	4300 2400 5100 2400
$Comp
L L_Small L8
U 1 1 630B8320
P 5850 2400
F 0 "L8" V 6050 2450 50  0000 L CNN
F 1 "1.42uH" V 5950 2250 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_6,5x13mm_Vertical" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2400 6400 2400
Wire Wire Line
	6200 2400 6200 2550
Connection ~ 6200 2400
$Comp
L L_Small L10
U 1 1 630B83B3
P 6500 2400
F 0 "L10" V 6700 2450 50  0000 L CNN
F 1 "1.22uH" V 6600 2250 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_6,5x13mm_Vertical" H 6500 2400 50  0001 C CNN
F 3 "" H 6500 2400 50  0001 C CNN
	1    6500 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR92
U 1 1 630B845A
P 4950 2800
F 0 "#PWR92" H 4950 2550 50  0001 C CNN
F 1 "GND" H 4950 2650 50  0001 C CNN
F 2 "" H 4950 2800 50  0001 C CNN
F 3 "" H 4950 2800 50  0001 C CNN
	1    4950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2800 4950 2750
$Comp
L GND #PWR93
U 1 1 630B84B3
P 5550 2800
F 0 "#PWR93" H 5550 2550 50  0001 C CNN
F 1 "GND" H 5550 2650 50  0001 C CNN
F 2 "" H 5550 2800 50  0001 C CNN
F 3 "" H 5550 2800 50  0001 C CNN
	1    5550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2800 5550 2750
$Comp
L GND #PWR94
U 1 1 630B84EC
P 6200 2800
F 0 "#PWR94" H 6200 2550 50  0001 C CNN
F 1 "GND" H 6200 2650 50  0001 C CNN
F 2 "" H 6200 2800 50  0001 C CNN
F 3 "" H 6200 2800 50  0001 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C34
U 1 1 630B8512
P 6200 2650
F 0 "C34" H 6300 2700 50  0000 L CNN
F 1 "750pF" H 6300 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 6200 2650 50  0001 C CNN
F 3 "" H 6200 2650 50  0001 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2750 6200 2800
Wire Wire Line
	6600 2400 8100 2400
Wire Wire Line
	6800 2400 6800 2550
$Comp
L GND #PWR95
U 1 1 630B859B
P 6800 2800
F 0 "#PWR95" H 6800 2550 50  0001 C CNN
F 1 "GND" H 6800 2650 50  0001 C CNN
F 2 "" H 6800 2800 50  0001 C CNN
F 3 "" H 6800 2800 50  0001 C CNN
	1    6800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2800 6800 2750
$Comp
L C_Small C36
U 1 1 630B85D7
P 6800 2650
F 0 "C36" H 6900 2700 50  0000 L CNN
F 1 "360pF" H 6900 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 6800 2650 50  0001 C CNN
F 3 "" H 6800 2650 50  0001 C CNN
	1    6800 2650
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J2
U 1 1 630B89B9
P 4150 2400
F 0 "J2" H 4160 2520 50  0000 C CNN
F 1 "ANT" H 4350 2400 50  0000 C CNN
F 2 "Connectors:SMA_THT_Jack_Straight" H 4150 2400 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4150 2400
	-1   0    0    -1  
$EndComp
$Comp
L SPARK_GAP E1
U 1 1 630B8A79
P 4450 2700
F 0 "E1" V 4400 2850 50  0000 C CNN
F 1 "90V" V 4500 2850 50  0000 C CNN
F 2 "LCSDR:C_Rect_L11.0mm_W8.8mm_P10.00mm_MKT" H 4450 2630 50  0001 C CNN
F 3 "" V 4450 2700 50  0001 C CNN
	1    4450 2700
	0    1    1    0   
$EndComp
Connection ~ 4950 2400
Wire Wire Line
	4450 2500 4450 2400
Connection ~ 4450 2400
$Comp
L GND #PWR91
U 1 1 630B8EE3
P 4450 2950
F 0 "#PWR91" H 4450 2700 50  0001 C CNN
F 1 "GND" H 4450 2800 50  0001 C CNN
F 2 "" H 4450 2950 50  0001 C CNN
F 3 "" H 4450 2950 50  0001 C CNN
	1    4450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2950 4450 2900
$Comp
L GND #PWR90
U 1 1 630B8F7F
P 4150 2650
F 0 "#PWR90" H 4150 2400 50  0001 C CNN
F 1 "GND" H 4150 2500 50  0001 C CNN
F 2 "" H 4150 2650 50  0001 C CNN
F 3 "" H 4150 2650 50  0001 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2650 4150 2600
Connection ~ 6800 2400
Text GLabel 8100 2400 2    60   BiDi ~ 0
LPF
$Comp
L Conn_Coaxial J5
U 1 1 63329C77
P 7850 2600
F 0 "J5" H 7860 2720 50  0000 C CNN
F 1 "LPF" H 8050 2600 50  0000 C CNN
F 2 "LCSDR:U.FL_Molex_MCRF_73412-0110_Vertical" H 7850 2600 50  0001 C CNN
F 3 "" H 7850 2600 50  0001 C CNN
	1    7850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2600 7550 2600
Wire Wire Line
	7550 2600 7550 2400
Connection ~ 7550 2400
$Comp
L GND #PWR96
U 1 1 63329DD2
P 7850 2850
F 0 "#PWR96" H 7850 2600 50  0001 C CNN
F 1 "GND" H 7850 2700 50  0001 C CNN
F 2 "" H 7850 2850 50  0001 C CNN
F 3 "" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2850 7850 2800
$EndSCHEMATC
