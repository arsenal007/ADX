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
LIBS:MCU_Microchip_ATtiny
LIBS:LCSDR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3700 5050 0    60   BiDi ~ 0
SDA
Text GLabel 3700 3350 0    60   Output ~ 0
SCL
$Comp
L Si5351 U2
U 1 1 62501FCB
P 5550 3100
F 0 "U2" H 5550 3350 50  0000 C CNN
F 1 "Si5351" H 5550 3250 50  0000 C CNN
F 2 "Housings_SSOP:MSOP-10_3x3mm_Pitch0.5mm" H 5550 3100 50  0001 C CNN
F 3 "" H 5550 3000 50  0000 C CNN
	1    5550 3100
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 62501FD2
P 4650 2750
F 0 "Y1" H 4650 2900 50  0000 C CNN
F 1 "25Mhz" H 4650 2600 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 4650 2750 50  0001 C CNN
F 3 "" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 62501FD9
P 5000 2500
F 0 "#PWR02" H 5000 2350 50  0001 C CNN
F 1 "+3.3V" H 5000 2640 50  0000 C CNN
F 2 "" H 5000 2500 50  0001 C CNN
F 3 "" H 5000 2500 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 62501FDF
P 6250 3600
F 0 "#PWR03" H 6250 3350 50  0001 C CNN
F 1 "GND" H 6250 3450 50  0001 C CNN
F 2 "" H 6250 3600 50  0001 C CNN
F 3 "" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 62501FE5
P 6200 2100
F 0 "#PWR04" H 6200 1950 50  0001 C CNN
F 1 "+3.3V" H 6200 2240 50  0000 C CNN
F 2 "" H 6200 2100 50  0001 C CNN
F 3 "" H 6200 2100 50  0001 C CNN
	1    6200 2100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 62502034
P 5250 2700
F 0 "C1" V 5500 2650 50  0000 L CNN
F 1 "1µF" V 5400 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 6250203B
P 5400 2700
F 0 "#PWR05" H 5400 2450 50  0001 C CNN
F 1 "GND" H 5400 2550 50  0001 C CNN
F 2 "" H 5400 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 3350 5100 3350
Wire Wire Line
	3700 5050 4300 5050
Wire Wire Line
	4800 2750 4900 2750
Wire Wire Line
	4400 3250 5100 3250
Wire Wire Line
	4400 3250 4400 2750
Wire Wire Line
	4400 2750 4500 2750
Wire Wire Line
	4900 2750 4900 3150
Wire Wire Line
	4900 3150 5100 3150
Wire Wire Line
	5000 2500 5000 3050
Wire Wire Line
	5000 3050 5100 3050
Wire Wire Line
	6000 3250 6250 3250
Wire Wire Line
	6250 3250 6250 3600
Wire Wire Line
	6200 2500 6200 3350
Wire Wire Line
	6200 3350 6000 3350
Wire Wire Line
	6000 3450 6450 3450
Wire Wire Line
	6450 3450 6450 3750
Wire Wire Line
	6450 3750 7600 3750
Wire Wire Line
	6550 3300 8000 3300
Wire Wire Line
	6550 3300 6550 3150
Wire Wire Line
	6550 3150 6000 3150
Wire Wire Line
	6550 2900 7400 2900
Wire Wire Line
	6550 2900 6550 3050
Wire Wire Line
	6550 3050 6000 3050
Wire Wire Line
	7400 2900 7400 2700
Wire Wire Line
	7400 2700 8000 2700
Wire Wire Line
	7400 3750 7400 4000
Wire Wire Line
	7400 4000 8050 4000
Wire Wire Line
	5350 2700 5400 2700
Wire Wire Line
	5150 2700 5000 2700
Connection ~ 5000 2700
Wire Wire Line
	4000 2450 4000 3350
Connection ~ 4000 3350
Wire Wire Line
	4300 5050 4300 3450
$Comp
L +3.3V #PWR06
U 1 1 6250207D
P 4000 4000
F 0 "#PWR06" H 4000 3850 50  0001 C CNN
F 1 "+3.3V" H 4000 4140 50  0000 C CNN
F 2 "" H 4000 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3450 5100 3450
$Comp
L L_Small L1
U 1 1 62503A42
P 6200 2400
F 0 "L1" H 6230 2440 50  0000 L CNN
F 1 "100uH" H 6230 2360 50  0000 L CNN
F 2 "Choke_Axial_ThroughHole:Choke_Horizontal_RM10mm" H 6200 2400 50  0001 C CNN
F 3 "" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2100 6200 2300
$Comp
L C_Small C2
U 1 1 6253D1FD
P 6000 2700
F 0 "C2" V 6250 2650 50  0000 L CNN
F 1 "1µF" V 6150 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	1    6000 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 6253D2ED
P 5800 2700
F 0 "#PWR07" H 5800 2450 50  0001 C CNN
F 1 "GND" H 5800 2550 50  0001 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "" H 5800 2700 50  0001 C CNN
	1    5800 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2700 5900 2700
Wire Wire Line
	6100 2700 6200 2700
Connection ~ 6200 2700
Text GLabel 8000 3300 2    60   Output ~ 0
CLK1
Text GLabel 8000 2700 2    60   Output ~ 0
CLK0
$Comp
L R_Small R4
U 1 1 630C02E1
P 4000 2350
F 0 "R4" H 4050 2400 50  0000 L CNN
F 1 "10K" H 4050 2300 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4000 2350 50  0001 C CNN
F 3 "" H 4000 2350 50  0001 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 630C0393
P 4000 2150
F 0 "#PWR08" H 4000 2000 50  0001 C CNN
F 1 "+3.3V" H 4000 2290 50  0000 C CNN
F 2 "" H 4000 2150 50  0001 C CNN
F 3 "" H 4000 2150 50  0001 C CNN
	1    4000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2150 4000 2250
$Comp
L R_Small R11
U 1 1 630C0495
P 4000 4200
F 0 "R11" H 4050 4250 50  0000 L CNN
F 1 "10K" H 4050 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4000 4200 50  0001 C CNN
F 3 "" H 4000 4200 50  0001 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4000 4000 4100
Wire Wire Line
	4000 4300 4000 5050
Connection ~ 4000 5050
$Comp
L GND #PWR09
U 1 1 630C6EEC
P 7800 4200
F 0 "#PWR09" H 7800 3950 50  0001 C CNN
F 1 "GND" H 7800 4050 50  0001 C CNN
F 2 "" H 7800 4200 50  0001 C CNN
F 3 "" H 7800 4200 50  0001 C CNN
	1    7800 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 4100 8050 4100
Wire Wire Line
	7800 4100 7800 4200
$Comp
L Conn_01x02 J3
U 1 1 63A8716E
P 8250 4000
F 0 "J3" H 8250 4100 50  0000 C CNN
F 1 "Calibration" H 8250 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8250 4000 50  0001 C CNN
F 3 "" H 8250 4000 50  0001 C CNN
	1    8250 4000
	1    0    0    -1  
$EndComp
Text GLabel 7600 3750 2    60   Output ~ 0
CLK2
Connection ~ 7400 3750
$EndSCHEMATC
