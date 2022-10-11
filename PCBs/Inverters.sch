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
LIBS:sdfgdsfgsdfgdfsg
LIBS:switches
LIBS:ftdi
LIBS:Oscillators
LIBS:LCSDR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L 74LVC1G3157 U3
U 1 1 62535F68
P 3350 2900
F 0 "U3" H 3350 2350 60  0000 C CNN
F 1 "NC7WZ04" H 3350 2200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6" H 3350 2900 60  0001 C CNN
F 3 "" H 3350 2900 60  0000 C CNN
	1    3350 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 62535F7C
P 2750 2900
F 0 "#PWR027" H 2750 2650 50  0001 C CNN
F 1 "GND" H 2750 2750 50  0001 C CNN
F 2 "" H 2750 2900 50  0001 C CNN
F 3 "" H 2750 2900 50  0001 C CNN
	1    2750 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2900 2850 2900
Wire Wire Line
	2850 2600 2300 2600
Wire Wire Line
	2850 3200 2300 3200
$Comp
L Conn_01x04 J7
U 1 1 62535FB5
P 4900 2950
F 0 "J7" H 4900 3150 50  0000 C CNN
F 1 "PRE_ATT" H 4900 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4900 2950 50  0001 C CNN
F 3 "" H 4900 2950 50  0001 C CNN
	1    4900 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	3850 2600 4200 2600
Wire Wire Line
	4200 2600 4200 2750
Wire Wire Line
	4700 3050 4200 3050
Wire Wire Line
	4200 3050 4200 3200
Wire Wire Line
	4200 3200 3850 3200
$Comp
L GND #PWR028
U 1 1 6253604F
P 4600 2900
F 0 "#PWR028" H 4600 2650 50  0001 C CNN
F 1 "GND" H 4600 2750 50  0001 C CNN
F 2 "" H 4600 2900 50  0001 C CNN
F 3 "" H 4600 2900 50  0001 C CNN
	1    4600 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2850 4650 2850
Wire Wire Line
	4650 2850 4650 2950
Wire Wire Line
	4650 2950 4700 2950
Wire Wire Line
	4600 2900 4650 2900
Connection ~ 4650 2900
Text GLabel 2300 2600 0    60   Input ~ 0
PREAMP
Text GLabel 2300 3200 0    60   Input ~ 0
ATT
$Comp
L +5V #PWR029
U 1 1 62536948
P 4050 2000
F 0 "#PWR029" H 4050 1850 50  0001 C CNN
F 1 "+5V" H 4050 2140 50  0000 C CNN
F 2 "" H 4050 2000 50  0001 C CNN
F 3 "" H 4050 2000 50  0001 C CNN
	1    4050 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 62536986
P 4500 2350
F 0 "#PWR030" H 4500 2100 50  0001 C CNN
F 1 "GND" H 4500 2200 50  0001 C CNN
F 2 "" H 4500 2350 50  0001 C CNN
F 3 "" H 4500 2350 50  0001 C CNN
	1    4500 2350
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C7
U 1 1 62536997
P 4350 2350
F 0 "C7" V 4550 2350 50  0000 L CNN
F 1 "100nF" V 4450 2200 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 4350 2350 50  0001 C CNN
F 3 "" H 4350 2350 50  0001 C CNN
	1    4350 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 2350 4500 2350
Wire Wire Line
	4250 2350 4050 2350
Wire Wire Line
	4050 2000 4050 2900
Wire Wire Line
	4050 2900 3850 2900
Connection ~ 4050 2350
Wire Wire Line
	4200 2750 4700 2750
$EndSCHEMATC
