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
LIBS:LCSDR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
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
L BF998 Q7
U 1 1 6305B7EB
P 5750 2350
F 0 "Q7" H 6000 2200 50  0000 L CNN
F 1 "BF998" H 5950 2100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-143" H 5950 2450 50  0001 C CNN
F 3 "" H 5750 2350 50  0001 C CNN
	1    5750 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2300 6200 2300
$Comp
L C_Small C24
U 1 1 6305BA39
P 6300 2300
F 0 "C24" V 6550 2250 50  0000 L CNN
F 1 "10nF" V 6450 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6300 2300 50  0001 C CNN
F 3 "" H 6300 2300 50  0001 C CNN
	1    6300 2300
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R6
U 1 1 6305C0B4
P 5450 1400
F 0 "R6" V 5250 1350 50  0000 L CNN
F 1 "2.2k" V 5350 1350 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 5450 1400 50  0001 C CNN
F 3 "" H 5450 1400 50  0001 C CNN
	1    5450 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1400 5650 2150
$Comp
L R_Small R5
U 1 1 6305C2AB
P 4950 1400
F 0 "R5" V 4750 1350 50  0000 L CNN
F 1 "100" V 4850 1350 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4950 1400 50  0001 C CNN
F 3 "" H 4950 1400 50  0001 C CNN
	1    4950 1400
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR55
U 1 1 6305C3FB
P 4750 1400
F 0 "#PWR55" H 4750 1250 50  0001 C CNN
F 1 "+12V" V 4750 1600 50  0000 C CNN
F 2 "" H 4750 1400 50  0001 C CNN
F 3 "" H 4750 1400 50  0001 C CNN
	1    4750 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 1400 4850 1400
$Comp
L C_Small C22
U 1 1 6305C787
P 5200 1600
F 0 "C22" H 5300 1650 50  0000 L CNN
F 1 "100nF" H 5300 1550 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR57
U 1 1 6305C92E
P 5200 1750
F 0 "#PWR57" H 5200 1500 50  0001 C CNN
F 1 "GND" H 5200 1600 50  0001 C CNN
F 2 "" H 5200 1750 50  0001 C CNN
F 3 "" H 5200 1750 50  0001 C CNN
	1    5200 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1750 5200 1700
$Comp
L R_Small R8
U 1 1 6305CBA1
P 6100 2600
F 0 "R8" H 6150 2650 50  0000 L CNN
F 1 "470" H 6150 2550 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 6100 2600 50  0001 C CNN
F 3 "" H 6100 2600 50  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2500 6100 2300
Connection ~ 6100 2300
$Comp
L GND #PWR59
U 1 1 6305CDF4
P 6100 2750
F 0 "#PWR59" H 6100 2500 50  0001 C CNN
F 1 "GND" H 6100 2600 50  0001 C CNN
F 2 "" H 6100 2750 50  0001 C CNN
F 3 "" H 6100 2750 50  0001 C CNN
	1    6100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2750 6100 2700
Text GLabel 6500 2300 2    60   Input ~ 0
CLK1
Wire Wire Line
	6500 2300 6400 2300
$Comp
L R_Small R9
U 1 1 6305D3FD
P 6500 2600
F 0 "R9" H 6550 2650 50  0000 L CNN
F 1 "27k" H 6550 2550 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 6500 2600 50  0001 C CNN
F 3 "" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2500 6500 2400
Connection ~ 6500 2400
$Comp
L GND #PWR60
U 1 1 6305D55E
P 6500 2750
F 0 "#PWR60" H 6500 2500 50  0001 C CNN
F 1 "GND" H 6500 2600 50  0001 C CNN
F 2 "" H 6500 2750 50  0001 C CNN
F 3 "" H 6500 2750 50  0001 C CNN
	1    6500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2750 6500 2700
$Comp
L GND #PWR58
U 1 1 6305D895
P 5650 2650
F 0 "#PWR58" H 5650 2400 50  0001 C CNN
F 1 "GND" H 5650 2500 50  0001 C CNN
F 2 "" H 5650 2650 50  0001 C CNN
F 3 "" H 5650 2650 50  0001 C CNN
	1    5650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2550 5650 2650
Wire Wire Line
	4800 2100 5650 2100
Connection ~ 5650 2100
$Comp
L C_Small C16
U 1 1 6305DEFD
P 5000 2300
F 0 "C16" H 5100 2350 50  0000 L CNN
F 1 "10nF" H 5100 2250 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5000 2300 50  0001 C CNN
F 3 "" H 5000 2300 50  0001 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2200 5000 2100
$Comp
L C_Small C7
U 1 1 6305E189
P 4450 2300
F 0 "C7" H 4550 2350 50  0000 L CNN
F 1 "10nF" H 4550 2250 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 4450 2300 50  0001 C CNN
F 3 "" H 4450 2300 50  0001 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
Connection ~ 5000 2100
$Comp
L GND #PWR56
U 1 1 6305E42E
P 5000 2450
F 0 "#PWR56" H 5000 2200 50  0001 C CNN
F 1 "GND" H 5000 2300 50  0001 C CNN
F 2 "" H 5000 2450 50  0001 C CNN
F 3 "" H 5000 2450 50  0001 C CNN
	1    5000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2450 5000 2400
Wire Wire Line
	4450 2200 4450 2100
Wire Wire Line
	4350 2100 4600 2100
$Comp
L GND #PWR54
U 1 1 6305E6B0
P 4450 2450
F 0 "#PWR54" H 4450 2200 50  0001 C CNN
F 1 "GND" H 4450 2300 50  0001 C CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "" H 4450 2450 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2450 4450 2400
Connection ~ 4450 2100
$Comp
L CP_Small C14
U 1 1 6309E190
P 4250 2100
F 0 "C14" V 4000 2050 50  0000 L CNN
F 1 "2.2uF" V 4100 2050 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 4250 2100 50  0001 C CNN
F 3 "" H 4250 2100 50  0001 C CNN
	1    4250 2100
	0    1    1    0   
$EndComp
$Comp
L JACK_TRS_3pins J1
U 1 1 6309F08B
P 2900 2250
F 0 "J1" H 2900 2650 50  0000 C CNN
F 1 "MIC" H 2850 1950 50  0000 C CNN
F 2 "LCSDR:audio_jack_3_5mm_PJ307" H 3000 2100 50  0001 C CNN
F 3 "" H 3000 2100 50  0000 C CNN
	1    2900 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR52
U 1 1 6309F154
P 3300 2250
F 0 "#PWR52" H 3300 2000 50  0001 C CNN
F 1 "GND" H 3300 2100 50  0001 C CNN
F 2 "" H 3300 2250 50  0001 C CNN
F 3 "" H 3300 2250 50  0001 C CNN
	1    3300 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1950 3600 1950
Wire Wire Line
	3600 1950 3600 2450
Wire Wire Line
	3600 2450 3300 2450
Wire Wire Line
	3300 2350 3600 2350
Connection ~ 3600 2350
Wire Wire Line
	3300 2050 3600 2050
Connection ~ 3600 2050
Wire Wire Line
	3600 2100 4150 2100
Connection ~ 3600 2100
Wire Wire Line
	5950 2400 7000 2400
$Comp
L C_Small C23
U 1 1 630AFCAA
P 7100 2400
F 0 "C23" V 7350 2350 50  0000 L CNN
F 1 "10nF" V 7250 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7100 2400 50  0001 C CNN
F 3 "" H 7100 2400 50  0001 C CNN
	1    7100 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 2400 8300 2400
$Comp
L C_Small C54
U 1 1 630BA740
P 3800 2550
F 0 "C54" H 3900 2600 50  0000 L CNN
F 1 "100nF" H 3900 2500 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 3800 2550 50  0001 C CNN
F 3 "" H 3800 2550 50  0001 C CNN
	1    3800 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR53
U 1 1 630BA840
P 3800 2700
F 0 "#PWR53" H 3800 2450 50  0001 C CNN
F 1 "GND" H 3800 2550 50  0001 C CNN
F 2 "" H 3800 2700 50  0001 C CNN
F 3 "" H 3800 2700 50  0001 C CNN
	1    3800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2450 3800 2100
Connection ~ 3800 2100
Wire Wire Line
	3800 2650 3800 2700
Wire Wire Line
	5200 1500 5200 1400
Wire Wire Line
	5050 1400 5350 1400
Connection ~ 5200 1400
Wire Wire Line
	5550 1400 5650 1400
$Comp
L R_Small R2
U 1 1 63326C81
P 4700 2100
F 0 "R2" V 4500 2050 50  0000 L CNN
F 1 "2.2K" V 4600 2050 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4700 2100 50  0001 C CNN
F 3 "" H 4700 2100 50  0001 C CNN
	1    4700 2100
	0    1    1    0   
$EndComp
$Comp
L BFR92 Q3
U 1 1 63326DA0
P 8050 2800
F 0 "Q3" H 8250 2875 50  0000 L CNN
F 1 "BFR93A" H 8250 2800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8250 2725 50  0001 L CIN
F 3 "" H 8050 2800 50  0001 L CNN
	1    8050 2800
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R23
U 1 1 63326E14
P 7950 3500
F 0 "R23" H 8000 3550 50  0000 L CNN
F 1 "47" H 8000 3450 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 7950 3500 50  0001 C CNN
F 3 "" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 63326E82
P 7550 3250
F 0 "C4" V 7800 3200 50  0000 L CNN
F 1 "100nF" V 7700 3100 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 7550 3250 50  0001 C CNN
F 3 "" H 7550 3250 50  0001 C CNN
	1    7550 3250
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R22
U 1 1 63326F2C
P 7200 3500
F 0 "R22" H 7250 3550 50  0000 L CNN
F 1 "4.7" H 7250 3450 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 7200 3500 50  0001 C CNN
F 3 "" H 7200 3500 50  0001 C CNN
	1    7200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3250 7950 3250
Wire Wire Line
	7950 3000 7950 3400
Connection ~ 7950 3250
Wire Wire Line
	7450 3250 7200 3250
Wire Wire Line
	7200 3250 7200 3400
$Comp
L GND #PWR62
U 1 1 63327041
P 7200 3700
F 0 "#PWR62" H 7200 3450 50  0001 C CNN
F 1 "GND" H 7200 3550 50  0001 C CNN
F 2 "" H 7200 3700 50  0001 C CNN
F 3 "" H 7200 3700 50  0001 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3700 7200 3600
$Comp
L GND #PWR64
U 1 1 633270C2
P 7950 3700
F 0 "#PWR64" H 7950 3450 50  0001 C CNN
F 1 "GND" H 7950 3550 50  0001 C CNN
F 2 "" H 7950 3700 50  0001 C CNN
F 3 "" H 7950 3700 50  0001 C CNN
	1    7950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3700 7950 3600
Wire Wire Line
	7950 1700 7950 2600
$Comp
L R_Small R26
U 1 1 63327448
P 8850 3200
F 0 "R26" H 8900 3250 50  0000 L CNN
F 1 "1K" H 8900 3150 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 8850 3200 50  0001 C CNN
F 3 "" H 8850 3200 50  0001 C CNN
	1    8850 3200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R25
U 1 1 63327503
P 8850 2600
F 0 "R25" H 8900 2650 50  0000 L CNN
F 1 "470" H 8900 2550 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 8850 2600 50  0001 C CNN
F 3 "" H 8850 2600 50  0001 C CNN
	1    8850 2600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R24
U 1 1 633275A9
P 8400 2400
F 0 "R24" V 8500 2350 50  0000 L CNN
F 1 "2.7K" V 8300 2350 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 8400 2400 50  0001 C CNN
F 3 "" H 8400 2400 50  0001 C CNN
	1    8400 2400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C5
U 1 1 63327690
P 8400 2100
F 0 "C5" V 8650 2050 50  0000 L CNN
F 1 "100nF" V 8550 1950 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 8400 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0001 C CNN
	1    8400 2100
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L3
U 1 1 63327878
P 7950 1600
F 0 "L3" H 8000 1650 50  0000 L CNN
F 1 "5.6uH" H 8000 1550 50  0000 L CNN
F 2 "Choke_Axial_ThroughHole:Choke_Horizontal_RM10mm" H 7950 1600 50  0001 C CNN
F 3 "" H 7950 1600 50  0001 C CNN
	1    7950 1600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 63327AEB
P 9500 2800
F 0 "C6" V 9750 2750 50  0000 L CNN
F 1 "10nF" V 9650 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9500 2800 50  0001 C CNN
F 3 "" H 9500 2800 50  0001 C CNN
	1    9500 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 2800 8250 2800
Wire Wire Line
	8850 2700 8850 3100
Connection ~ 8850 2800
Wire Wire Line
	8500 2100 8850 2100
Wire Wire Line
	8850 2100 8850 2500
Wire Wire Line
	8500 2400 8850 2400
Connection ~ 8850 2400
Connection ~ 7950 2400
Wire Wire Line
	8300 2100 7950 2100
Connection ~ 7950 2100
Text GLabel 9800 2800 2    60   Input ~ 0
RF_IN
Wire Wire Line
	9600 2800 9800 2800
$Comp
L GND #PWR65
U 1 1 633285BF
P 8850 3350
F 0 "#PWR65" H 8850 3100 50  0001 C CNN
F 1 "GND" H 8850 3200 50  0001 C CNN
F 2 "" H 8850 3350 50  0001 C CNN
F 3 "" H 8850 3350 50  0001 C CNN
	1    8850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3350 8850 3300
$Comp
L R_Small R10
U 1 1 633287B8
P 7200 1350
F 0 "R10" V 7000 1300 50  0000 L CNN
F 1 "33" V 7100 1300 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 7200 1350 50  0001 C CNN
F 3 "" H 7200 1350 50  0001 C CNN
	1    7200 1350
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR61
U 1 1 633287BE
P 7000 1350
F 0 "#PWR61" H 7000 1200 50  0001 C CNN
F 1 "+12V" V 7000 1550 50  0000 C CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 1350 50  0001 C CNN
	1    7000 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 1350 7100 1350
$Comp
L C_Small C3
U 1 1 633287C5
P 7450 1550
F 0 "C3" H 7550 1600 50  0000 L CNN
F 1 "100nF" H 7550 1500 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 7450 1550 50  0001 C CNN
F 3 "" H 7450 1550 50  0001 C CNN
	1    7450 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR63
U 1 1 633287CB
P 7450 1700
F 0 "#PWR63" H 7450 1450 50  0001 C CNN
F 1 "GND" H 7450 1550 50  0001 C CNN
F 2 "" H 7450 1700 50  0001 C CNN
F 3 "" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1700 7450 1650
Wire Wire Line
	7450 1450 7450 1350
Wire Wire Line
	7300 1350 7950 1350
Connection ~ 7450 1350
Wire Wire Line
	7950 1350 7950 1500
$EndSCHEMATC
