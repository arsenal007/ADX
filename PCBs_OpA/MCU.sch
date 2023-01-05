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
Sheet 4 9
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
L Crystal Y2
U 1 1 6253E0F5
P -1800 4600
F 0 "Y2" H -1800 4750 50  0000 C CNN
F 1 "20Mhz" H -1800 4450 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H -1800 4600 50  0001 C CNN
F 3 "" H -1800 4600 50  0001 C CNN
	1    -1800 4600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 6253E0FC
P -2050 4950
F 0 "C19" H -1950 5000 50  0000 L CNN
F 1 "22pF" H -1950 4900 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H -2050 4950 50  0001 C CNN
F 3 "" H -2050 4950 50  0001 C CNN
	1    -2050 4950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 6253E103
P -1550 4950
F 0 "C20" H -1450 5000 50  0000 L CNN
F 1 "22pF" H -1450 4900 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H -1550 4950 50  0001 C CNN
F 3 "" H -1550 4950 50  0001 C CNN
	1    -1550 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 6253E10A
P -2050 5100
F 0 "#PWR027" H -2050 4850 50  0001 C CNN
F 1 "GND" H -2050 4950 50  0001 C CNN
F 2 "" H -2050 5100 50  0001 C CNN
F 3 "" H -2050 5100 50  0001 C CNN
	1    -2050 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 6253E110
P -1550 5100
F 0 "#PWR028" H -1550 4850 50  0001 C CNN
F 1 "GND" H -1550 4950 50  0001 C CNN
F 2 "" H -1550 5100 50  0001 C CNN
F 3 "" H -1550 5100 50  0001 C CNN
	1    -1550 5100
	1    0    0    -1  
$EndComp
Text GLabel 6700 2900 2    60   BiDi ~ 0
SDA
Text GLabel 7050 3000 2    60   Output ~ 0
SCL
$Comp
L AVR-ISP-6 CON2
U 1 1 6253E140
P 10350 1300
F 0 "CON2" H 10245 1540 50  0000 C CNN
F 1 "AVR-ISP-6" H 10085 1070 50  0000 L BNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" V 9830 1340 50  0001 C CNN
F 3 "" H 10325 1300 50  0001 C CNN
	1    10350 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 6253E147
P 10800 950
F 0 "#PWR029" H 10800 800 50  0001 C CNN
F 1 "+5V" H 10800 1090 50  0000 C CNN
F 2 "" H 10800 950 50  0001 C CNN
F 3 "" H 10800 950 50  0001 C CNN
	1    10800 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 6253E14D
P 10550 1550
F 0 "#PWR030" H 10550 1300 50  0001 C CNN
F 1 "GND" H 10550 1400 50  0001 C CNN
F 2 "" H 10550 1550 50  0001 C CNN
F 3 "" H 10550 1550 50  0001 C CNN
	1    10550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2350 8200 2350
Wire Wire Line
	4150 2250 8100 2250
Wire Wire Line
	8100 2250 8100 2100
Wire Wire Line
	8100 2100 8550 2100
Wire Wire Line
	8550 2100 8550 2550
Wire Wire Line
	8550 2350 8500 2350
Wire Wire Line
	8000 2550 8000 2350
Connection ~ 8000 2350
Connection ~ 8550 2350
Wire Wire Line
	-2050 5100 -2050 5050
Wire Wire Line
	-1550 5100 -1550 5050
Wire Wire Line
	4150 2900 6700 2900
Wire Wire Line
	4150 3000 7050 3000
Wire Wire Line
	6100 3450 4150 3450
Wire Wire Line
	5750 3550 4150 3550
Wire Wire Line
	4150 2150 7800 2150
Wire Wire Line
	10200 1300 7800 1300
Wire Wire Line
	7800 1300 7800 2150
Wire Wire Line
	4150 2050 7700 2050
Wire Wire Line
	7700 2050 7700 1200
Wire Wire Line
	7700 1200 10200 1200
Wire Wire Line
	10200 1400 9150 1400
Wire Wire Line
	10450 1200 10800 1200
Wire Wire Line
	10800 1200 10800 950 
Wire Wire Line
	10450 1300 10950 1300
Wire Wire Line
	10950 1300 10950 1950
Wire Wire Line
	10950 1950 4150 1950
Wire Wire Line
	10450 1400 10550 1400
Wire Wire Line
	10550 1400 10550 1550
Text GLabel 6100 3450 2    60   Output ~ 0
IO_4
Text GLabel 5750 3550 2    60   Output ~ 0
IO_5
Wire Wire Line
	4150 3650 6100 3650
$Comp
L +5V #PWR031
U 1 1 6253E1E6
P 9150 750
F 0 "#PWR031" H 9150 600 50  0001 C CNN
F 1 "+5V" H 9150 900 50  0000 C CNN
F 2 "" H 9150 750 50  0001 C CNN
F 3 "" H 9150 750 50  0001 C CNN
	1    9150 750 
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 6253E1EC
P 9150 900
F 0 "R7" H 9200 950 50  0000 L CNN
F 1 "10k" H 9200 850 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 9150 900 50  0001 C CNN
F 3 "" H 9150 900 50  0001 C CNN
	1    9150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 750  9150 800 
Connection ~ 9150 1400
Wire Wire Line
	7150 3350 4150 3350
Wire Wire Line
	4150 1650 4850 1650
$Comp
L GND #PWR032
U 1 1 63053534
P 4250 3850
F 0 "#PWR032" H 4250 3600 50  0001 C CNN
F 1 "GND" H 4250 3700 50  0001 C CNN
F 2 "" H 4250 3850 50  0001 C CNN
F 3 "" H 4250 3850 50  0001 C CNN
	1    4250 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 3850 4250 3850
Text GLabel 2350 4700 2    60   Output ~ 0
RX_TX
Text GLabel 6100 3650 2    60   Output ~ 0
IO_6
Wire Wire Line
	4150 3750 5750 3750
Text GLabel 5850 1050 2    60   Output ~ 0
IO_10
Wire Wire Line
	4150 2500 5700 2500
Text GLabel 2750 4400 2    60   Output ~ 0
BAND
Wire Wire Line
	6050 2600 4150 2600
Wire Wire Line
	4150 2700 5200 2700
Text GLabel 2750 4600 2    60   Output ~ 0
LED_RED
Text GLabel 6050 2800 2    60   Output ~ 0
LED_GREEN
Wire Wire Line
	6050 2800 4150 2800
Text GLabel 5850 900  2    60   Output ~ 0
IO_9
Wire Wire Line
	4850 750  5850 750 
Wire Wire Line
	4850 1650 4850 750 
Wire Wire Line
	5000 1750 5000 900 
Wire Wire Line
	5000 900  5850 900 
Text GLabel 5850 750  2    60   Output ~ 0
IO_8
Text GLabel 5750 3750 2    60   Output ~ 0
IO_7
Wire Wire Line
	4150 1750 5000 1750
Wire Wire Line
	5150 1850 4150 1850
Wire Wire Line
	5150 1050 5150 1850
Wire Wire Line
	5850 1050 5150 1050
Text GLabel 2500 4000 2    60   Output ~ 0
RxD
Wire Wire Line
	7450 3250 4150 3250
Text GLabel 2700 4200 2    60   Input ~ 0
TxD
$Comp
L JACK_TRS_3pins J10
U 1 1 630BAF45
P 6300 7000
F 0 "J10" H 6300 7400 50  0000 C CNN
F 1 "SPK" H 6250 6700 50  0000 C CNN
F 2 "LCSDR:audio_jack_3_5mm_PJ307" H 6400 6850 50  0001 C CNN
F 3 "" H 6400 6850 50  0000 C CNN
	1    6300 7000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 630BAF4C
P 5900 7000
F 0 "#PWR033" H 5900 6750 50  0001 C CNN
F 1 "GND" H 5900 6850 50  0001 C CNN
F 2 "" H 5900 7000 50  0001 C CNN
F 3 "" H 5900 7000 50  0001 C CNN
	1    5900 7000
	0    1    -1   0   
$EndComp
$Comp
L R_Small R18
U 1 1 630BB21D
P 4900 6550
F 0 "R18" H 4950 6600 50  0000 L CNN
F 1 "1M" H 4950 6500 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4900 6550 50  0001 C CNN
F 3 "" H 4900 6550 50  0001 C CNN
	1    4900 6550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 630BB2CB
P 4900 7250
F 0 "R19" H 4950 7300 50  0000 L CNN
F 1 "4.7K" H 4950 7200 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4900 7250 50  0001 C CNN
F 3 "" H 4900 7250 50  0001 C CNN
	1    4900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6650 4900 7150
Wire Wire Line
	4750 6950 5200 6950
Connection ~ 4900 6950
Wire Wire Line
	5400 6950 5600 6950
Wire Wire Line
	5600 6700 5600 7100
Wire Wire Line
	5600 6700 5900 6700
Wire Wire Line
	5800 6700 5800 6800
Wire Wire Line
	5800 6800 5900 6800
Connection ~ 5800 6700
Wire Wire Line
	5600 7100 5900 7100
Wire Wire Line
	5800 7100 5800 7200
Wire Wire Line
	5800 7200 5900 7200
Connection ~ 5600 6950
Connection ~ 5800 7100
$Comp
L GND #PWR034
U 1 1 630BB5BE
P 4900 7400
F 0 "#PWR034" H 4900 7150 50  0001 C CNN
F 1 "GND" H 4900 7250 50  0001 C CNN
F 2 "" H 4900 7400 50  0001 C CNN
F 3 "" H 4900 7400 50  0001 C CNN
	1    4900 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 7400 4900 7350
$Comp
L R_Small R17
U 1 1 630BB673
P 4650 6950
F 0 "R17" V 4850 6950 50  0000 L CNN
F 1 "10k" V 4750 6900 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4650 6950 50  0001 C CNN
F 3 "" H 4650 6950 50  0001 C CNN
	1    4650 6950
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C52
U 1 1 630BB77D
P 4300 7250
F 0 "C52" H 4400 7300 50  0000 L CNN
F 1 "100nF" H 4400 7200 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 4300 7250 50  0001 C CNN
F 3 "" H 4300 7250 50  0001 C CNN
	1    4300 7250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C51
U 1 1 630BB82E
P 3800 7250
F 0 "C51" H 3900 7300 50  0000 L CNN
F 1 "100nF" H 3900 7200 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 3800 7250 50  0001 C CNN
F 3 "" H 3800 7250 50  0001 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6950 3950 6950
Wire Wire Line
	3800 6950 3800 7150
Wire Wire Line
	4150 6950 4550 6950
Wire Wire Line
	4300 7150 4300 6950
Connection ~ 4300 6950
Connection ~ 3800 6950
$Comp
L GND #PWR035
U 1 1 630BBB74
P 4300 7400
F 0 "#PWR035" H 4300 7150 50  0001 C CNN
F 1 "GND" H 4300 7250 50  0001 C CNN
F 2 "" H 4300 7400 50  0001 C CNN
F 3 "" H 4300 7400 50  0001 C CNN
	1    4300 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 7400 4300 7350
$Comp
L GND #PWR036
U 1 1 630BBC47
P 3800 7400
F 0 "#PWR036" H 3800 7150 50  0001 C CNN
F 1 "GND" H 3800 7250 50  0001 C CNN
F 2 "" H 3800 7400 50  0001 C CNN
F 3 "" H 3800 7400 50  0001 C CNN
	1    3800 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 7400 3800 7350
$Comp
L +3.3V #PWR037
U 1 1 630BBFA8
P 4900 6350
F 0 "#PWR037" H 4900 6200 50  0001 C CNN
F 1 "+3.3V" H 4900 6490 50  0000 C CNN
F 2 "" H 4900 6350 50  0001 C CNN
F 3 "" H 4900 6350 50  0001 C CNN
	1    4900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6450 4900 6350
$Comp
L R_Small R13
U 1 1 630C8BFD
P 2200 6350
F 0 "R13" V 2400 6300 50  0000 L CNN
F 1 "1k" V 2300 6300 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 2200 6350 50  0001 C CNN
F 3 "" H 2200 6350 50  0001 C CNN
	1    2200 6350
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 630C8C03
P 2800 6350
F 0 "D4" H 2800 6450 50  0000 C CNN
F 1 "LED" H 2800 6250 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm_Horizontal_O3.81mm_Z10.0mm" H 2800 6350 50  0001 C CNN
F 3 "" H 2800 6350 50  0001 C CNN
	1    2800 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR038
U 1 1 630C8C09
P 3050 6350
F 0 "#PWR038" H 3050 6100 50  0001 C CNN
F 1 "GND" H 3050 6200 50  0001 C CNN
F 2 "" H 3050 6350 50  0001 C CNN
F 3 "" H 3050 6350 50  0001 C CNN
	1    3050 6350
	0    -1   1    0   
$EndComp
Wire Wire Line
	2950 6350 3050 6350
Wire Wire Line
	2650 6350 2300 6350
Text GLabel 1900 6350 0    60   Input ~ 0
LED_RED
Wire Wire Line
	1900 6350 2100 6350
Text GLabel 4500 3950 2    60   Input ~ 0
MIC
Wire Wire Line
	4150 3950 4500 3950
Text GLabel 2250 6950 0    60   Output ~ 0
MIC
$Comp
L L_Small L7
U 1 1 6314089C
P 4050 6950
F 0 "L7" V 4250 6950 50  0000 L CNN
F 1 "100mH" V 4150 6800 50  0000 L CNN
F 2 "Choke_Toroid_ThroughHole:Choke_Toroid_8x16mm_Vertical" H 4050 6950 50  0001 C CNN
F 3 "" H 4050 6950 50  0001 C CNN
	1    4050 6950
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C53
U 1 1 630BB09A
P 5300 6950
F 0 "C53" V 5050 6900 50  0000 L CNN
F 1 "1uF" V 5150 6900 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 5300 6950 50  0001 C CNN
F 3 "" H 5300 6950 50  0001 C CNN
	1    5300 6950
	0    1    1    0   
$EndComp
$Comp
L ATtiny1614-SS U3
U 1 1 63AA1381
P 900 4700
F 0 "U3" H 400 5350 50  0000 L BNN
F 1 "ATtiny1614-SS" H 650 4250 50  0000 L TNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 900 4700 50  0001 C CIN
F 3 "" H 900 4700 50  0001 C CNN
	1    900  4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2050 4300 -450 4300
Text GLabel 2700 4800 2    60   Input ~ 0
MIC
Wire Wire Line
	2200 4900 2500 4900
$Comp
L GND #PWR041
U 1 1 63AA1A4C
P 2500 4900
F 0 "#PWR041" H 2500 4650 50  0001 C CNN
F 1 "GND" H 2500 4750 50  0001 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 4800 2200 4800
$Comp
L GND #PWR042
U 1 1 63AA1BB5
P -550 5050
F 0 "#PWR042" H -550 4800 50  0001 C CNN
F 1 "GND" H -550 4900 50  0001 C CNN
F 2 "" H -550 5050 50  0001 C CNN
F 3 "" H -550 5050 50  0001 C CNN
	1    -550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	-550 5050 -550 5000
Wire Wire Line
	-450 4100 -1000 4100
Wire Wire Line
	-450 3900 -600 3900
Text GLabel -600 3900 0    60   Output ~ 0
SCL
Text GLabel -1000 4100 0    60   BiDi ~ 0
SDA
Wire Wire Line
	2200 4000 2500 4000
Wire Wire Line
	-1650 4600 -1550 4600
Connection ~ -1550 4600
Wire Wire Line
	-2050 4300 -2050 4850
Wire Wire Line
	-850 4750 -850 4900
$Comp
L C_Small C15
U 1 1 63AA2CEE
P -850 5000
F 0 "C15" H -1100 5000 50  0000 L CNN
F 1 "100nF" H -1100 4900 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H -850 5000 50  0001 C CNN
F 3 "" H -850 5000 50  0001 C CNN
	1    -850 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 63AA2CF4
P -850 5150
F 0 "#PWR043" H -850 4900 50  0001 C CNN
F 1 "GND" H -850 5000 50  0001 C CNN
F 2 "" H -850 5150 50  0001 C CNN
F 3 "" H -850 5150 50  0001 C CNN
	1    -850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	-850 5150 -850 5100
Connection ~ -850 4850
Wire Wire Line
	-850 4850 -450 4850
Wire Wire Line
	-1550 4500 -1550 4850
Wire Wire Line
	-1550 4500 -450 4500
Wire Wire Line
	-1950 4600 -2050 4600
Connection ~ -2050 4600
Wire Wire Line
	2200 4200 2700 4200
Wire Wire Line
	-550 5000 -450 5000
Wire Wire Line
	2200 4700 2350 4700
Wire Wire Line
	2200 3800 2750 3800
Text GLabel 2750 3800 2    60   Output ~ 0
UPDI
Wire Wire Line
	2200 4600 2750 4600
Wire Wire Line
	2750 4400 2200 4400
$Comp
L +3.3V #PWR045
U 1 1 63AB1EE1
P -850 4750
F 0 "#PWR045" H -850 4600 50  0001 C CNN
F 1 "+3.3V" H -850 4890 50  0000 C CNN
F 2 "" H -850 4750 50  0001 C CNN
F 3 "" H -850 4750 50  0001 C CNN
	1    -850 4750
	1    0    0    -1  
$EndComp
Text GLabel 2750 3450 2    60   Input ~ 0
RESET
Wire Wire Line
	2750 3450 2500 3450
Wire Wire Line
	2500 3450 2500 3800
Connection ~ 2500 3800
$EndSCHEMATC
