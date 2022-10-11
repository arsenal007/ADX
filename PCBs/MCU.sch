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
Sheet 4 8
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
L ATMEGA328P-AU U6
U 1 1 6253E0EE
P 3150 2750
F 0 "U6" H 2400 4000 50  0000 L BNN
F 1 "ATMEGA328P-AU" H 3550 1350 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3150 2750 50  0001 C CIN
F 3 "" H 3150 2750 50  0001 C CNN
	1    3150 2750
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y2
U 1 1 6253E0F5
P 8350 2350
F 0 "Y2" H 8350 2500 50  0000 C CNN
F 1 "20Mhz" H 8350 2200 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 8350 2350 50  0001 C CNN
F 3 "" H 8350 2350 50  0001 C CNN
	1    8350 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 6253E0FC
P 8000 2650
F 0 "C19" H 8100 2700 50  0000 L CNN
F 1 "22pF" H 8100 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 8000 2650 50  0001 C CNN
F 3 "" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 6253E103
P 8550 2650
F 0 "C20" H 8650 2700 50  0000 L CNN
F 1 "22pF" H 8650 2600 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 8550 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR44
U 1 1 6253E10A
P 8000 2800
F 0 "#PWR44" H 8000 2550 50  0001 C CNN
F 1 "GND" H 8000 2650 50  0001 C CNN
F 2 "" H 8000 2800 50  0001 C CNN
F 3 "" H 8000 2800 50  0001 C CNN
	1    8000 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR47
U 1 1 6253E110
P 8550 2800
F 0 "#PWR47" H 8550 2550 50  0001 C CNN
F 1 "GND" H 8550 2650 50  0001 C CNN
F 2 "" H 8550 2800 50  0001 C CNN
F 3 "" H 8550 2800 50  0001 C CNN
	1    8550 2800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 6253E116
P 1850 2450
F 0 "C18" H 1950 2500 50  0000 L CNN
F 1 "100nF" H 1950 2400 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 1850 2450 50  0001 C CNN
F 3 "" H 1850 2450 50  0001 C CNN
	1    1850 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 6253E11D
P 1850 2600
F 0 "#PWR34" H 1850 2350 50  0001 C CNN
F 1 "GND" H 1850 2450 50  0001 C CNN
F 2 "" H 1850 2600 50  0001 C CNN
F 3 "" H 1850 2600 50  0001 C CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 6253E123
P 1500 2000
F 0 "C17" H 1600 2050 50  0000 L CNN
F 1 "100nF" H 1600 1950 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 1500 2000 50  0001 C CNN
F 3 "" H 1500 2000 50  0001 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR33
U 1 1 6253E12A
P 1500 2150
F 0 "#PWR33" H 1500 1900 50  0001 C CNN
F 1 "GND" H 1500 2000 50  0001 C CNN
F 2 "" H 1500 2150 50  0001 C CNN
F 3 "" H 1500 2150 50  0001 C CNN
	1    1500 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR31
U 1 1 6253E130
P 1000 1550
F 0 "#PWR31" H 1000 1400 50  0001 C CNN
F 1 "+5V" H 1000 1690 50  0000 C CNN
F 2 "" H 1000 1550 50  0001 C CNN
F 3 "" H 1000 1550 50  0001 C CNN
	1    1000 1550
	1    0    0    -1  
$EndComp
Text GLabel 6700 2900 2    60   BiDi ~ 0
SDA
Text GLabel 7050 3000 2    60   Output ~ 0
SCL
$Comp
L GND #PWR35
U 1 1 6253E13A
P 2200 4000
F 0 "#PWR35" H 2200 3750 50  0001 C CNN
F 1 "GND" H 2200 3850 50  0001 C CNN
F 2 "" H 2200 4000 50  0001 C CNN
F 3 "" H 2200 4000 50  0001 C CNN
	1    2200 4000
	1    0    0    -1  
$EndComp
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
L +5V #PWR51
U 1 1 6253E147
P 10800 950
F 0 "#PWR51" H 10800 800 50  0001 C CNN
F 1 "+5V" H 10800 1090 50  0000 C CNN
F 2 "" H 10800 950 50  0001 C CNN
F 3 "" H 10800 950 50  0001 C CNN
	1    10800 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR50
U 1 1 6253E14D
P 10550 1550
F 0 "#PWR50" H 10550 1300 50  0001 C CNN
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
	4150 3100 9300 3100
Wire Wire Line
	9150 1000 9150 3100
Wire Wire Line
	8000 2550 8000 2350
Connection ~ 8000 2350
Connection ~ 8550 2350
Wire Wire Line
	8000 2800 8000 2750
Wire Wire Line
	8550 2800 8550 2750
Wire Wire Line
	1850 2350 1850 2250
Wire Wire Line
	1850 2250 2250 2250
Wire Wire Line
	1500 1900 1500 1650
Wire Wire Line
	1000 1650 2250 1650
Wire Wire Line
	2150 1650 2150 1950
Wire Wire Line
	2150 1950 2250 1950
Connection ~ 2150 1650
Wire Wire Line
	2250 1750 2150 1750
Connection ~ 2150 1750
Connection ~ 1500 1650
Wire Wire Line
	1850 2600 1850 2550
Wire Wire Line
	1500 2150 1500 2100
Wire Wire Line
	4150 2900 6700 2900
Wire Wire Line
	4150 3000 7050 3000
Wire Wire Line
	2200 3750 2200 4000
Wire Wire Line
	2200 3950 2250 3950
Wire Wire Line
	2200 3850 2250 3850
Connection ~ 2200 3950
Wire Wire Line
	2200 3750 2250 3750
Connection ~ 2200 3850
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
Wire Wire Line
	1000 1550 1000 1900
$Comp
L C_Small C15
U 1 1 6253E18D
P 1000 2000
F 0 "C15" H 1100 2050 50  0000 L CNN
F 1 "100nF" H 1100 1950 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0001 C CNN
	1    1000 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 6253E194
P 1000 2150
F 0 "#PWR32" H 1000 1900 50  0001 C CNN
F 1 "GND" H 1000 2000 50  0001 C CNN
F 2 "" H 1000 2150 50  0001 C CNN
F 3 "" H 1000 2150 50  0001 C CNN
	1    1000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2150 1000 2100
Connection ~ 1000 1650
Text GLabel 6100 3450 2    60   Output ~ 0
IO_4
Text GLabel 5750 3550 2    60   Output ~ 0
IO_5
Wire Wire Line
	4150 3650 6100 3650
Wire Wire Line
	4150 3950 5550 3950
$Comp
L +5V #PWR48
U 1 1 6253E1E6
P 9150 750
F 0 "#PWR48" H 9150 600 50  0001 C CNN
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
L GND #PWR39
U 1 1 63053534
P 4250 3850
F 0 "#PWR39" H 4250 3600 50  0001 C CNN
F 1 "GND" H 4250 3700 50  0001 C CNN
F 2 "" H 4250 3850 50  0001 C CNN
F 3 "" H 4250 3850 50  0001 C CNN
	1    4250 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 3850 4250 3850
Text GLabel 6100 3650 2    60   Output ~ 0
IO_6
Wire Wire Line
	4150 3750 5750 3750
Text GLabel 5700 2500 2    60   Output ~ 0
RX_TX
Wire Wire Line
	4150 2500 5700 2500
Text GLabel 6050 2600 2    60   Output ~ 0
IO_1
Wire Wire Line
	6050 2600 4150 2600
Wire Wire Line
	4150 2700 5200 2700
Text GLabel 5200 2700 2    60   Output ~ 0
LED_RED
Text GLabel 6050 2800 2    60   Output ~ 0
LED_GREEN
Wire Wire Line
	6050 2800 4150 2800
Wire Wire Line
	4850 750  5850 750 
Wire Wire Line
	4850 1650 4850 750 
Wire Wire Line
	5000 1750 5000 900 
Wire Wire Line
	5000 900  5850 900 
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
Text GLabel 7450 3250 2    60   Input ~ 0
RxD
Wire Wire Line
	7450 3250 4150 3250
Text GLabel 7150 3350 2    60   Output ~ 0
TxD
Text GLabel 9300 3100 2    60   Input ~ 0
RESET
Connection ~ 9150 3100
$Comp
L JACK_TRS_3pins J10
U 1 1 630BAF45
P 9600 4350
F 0 "J10" H 9600 4750 50  0000 C CNN
F 1 "SPK" H 9550 4050 50  0000 C CNN
F 2 "LCSDR:audio_jack_3_5mm_PJ307" H 9700 4200 50  0001 C CNN
F 3 "" H 9700 4200 50  0000 C CNN
	1    9600 4350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR49
U 1 1 630BAF4C
P 9200 4350
F 0 "#PWR49" H 9200 4100 50  0001 C CNN
F 1 "GND" H 9200 4200 50  0001 C CNN
F 2 "" H 9200 4350 50  0001 C CNN
F 3 "" H 9200 4350 50  0001 C CNN
	1    9200 4350
	0    1    -1   0   
$EndComp
$Comp
L C_Small C53
U 1 1 630BB09A
P 8600 4300
F 0 "C53" V 8350 4250 50  0000 L CNN
F 1 "100nF" V 8450 4250 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 8600 4300 50  0001 C CNN
F 3 "" H 8600 4300 50  0001 C CNN
	1    8600 4300
	0    1    1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 630BB21D
P 8200 3900
F 0 "R18" H 8250 3950 50  0000 L CNN
F 1 "1M" H 8250 3850 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 8200 3900 50  0001 C CNN
F 3 "" H 8200 3900 50  0001 C CNN
	1    8200 3900
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 630BB2CB
P 8200 4600
F 0 "R19" H 8250 4650 50  0000 L CNN
F 1 "4.7K" H 8250 4550 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 8200 4600 50  0001 C CNN
F 3 "" H 8200 4600 50  0001 C CNN
	1    8200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4000 8200 4500
Wire Wire Line
	8050 4300 8500 4300
Connection ~ 8200 4300
Wire Wire Line
	8700 4300 8900 4300
Wire Wire Line
	8900 4050 8900 4450
Wire Wire Line
	8900 4050 9200 4050
Wire Wire Line
	9100 4050 9100 4150
Wire Wire Line
	9100 4150 9200 4150
Connection ~ 9100 4050
Wire Wire Line
	8900 4450 9200 4450
Wire Wire Line
	9100 4450 9100 4550
Wire Wire Line
	9100 4550 9200 4550
Connection ~ 8900 4300
Connection ~ 9100 4450
$Comp
L GND #PWR46
U 1 1 630BB5BE
P 8200 4750
F 0 "#PWR46" H 8200 4500 50  0001 C CNN
F 1 "GND" H 8200 4600 50  0001 C CNN
F 2 "" H 8200 4750 50  0001 C CNN
F 3 "" H 8200 4750 50  0001 C CNN
	1    8200 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 4750 8200 4700
$Comp
L R_Small R17
U 1 1 630BB673
P 7950 4300
F 0 "R17" V 8150 4300 50  0000 L CNN
F 1 "10k" V 8050 4250 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 7950 4300 50  0001 C CNN
F 3 "" H 7950 4300 50  0001 C CNN
	1    7950 4300
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C52
U 1 1 630BB77D
P 7600 4600
F 0 "C52" H 7700 4650 50  0000 L CNN
F 1 "10nF" H 7700 4550 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 7600 4600 50  0001 C CNN
F 3 "" H 7600 4600 50  0001 C CNN
	1    7600 4600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C51
U 1 1 630BB82E
P 7100 4600
F 0 "C51" H 7200 4650 50  0000 L CNN
F 1 "10nF" H 7200 4550 50  0000 L CNN
F 2 "LCSDR:C_1206_0603" H 7100 4600 50  0001 C CNN
F 3 "" H 7100 4600 50  0001 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 630BB880
P 7350 4300
F 0 "R16" V 7550 4300 50  0000 L CNN
F 1 "10k" V 7450 4250 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 7350 4300 50  0001 C CNN
F 3 "" H 7350 4300 50  0001 C CNN
	1    7350 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 4300 7250 4300
Wire Wire Line
	7100 4300 7100 4500
Wire Wire Line
	7450 4300 7850 4300
Wire Wire Line
	7600 4500 7600 4300
Connection ~ 7600 4300
Wire Wire Line
	5550 3950 5550 4300
Connection ~ 7100 4300
$Comp
L GND #PWR43
U 1 1 630BBB74
P 7600 4750
F 0 "#PWR43" H 7600 4500 50  0001 C CNN
F 1 "GND" H 7600 4600 50  0001 C CNN
F 2 "" H 7600 4750 50  0001 C CNN
F 3 "" H 7600 4750 50  0001 C CNN
	1    7600 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 4750 7600 4700
$Comp
L GND #PWR42
U 1 1 630BBC47
P 7100 4750
F 0 "#PWR42" H 7100 4500 50  0001 C CNN
F 1 "GND" H 7100 4600 50  0001 C CNN
F 2 "" H 7100 4750 50  0001 C CNN
F 3 "" H 7100 4750 50  0001 C CNN
	1    7100 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 4750 7100 4700
$Comp
L +3.3V #PWR45
U 1 1 630BBFA8
P 8200 3700
F 0 "#PWR45" H 8200 3550 50  0001 C CNN
F 1 "+3.3V" H 8200 3840 50  0000 C CNN
F 2 "" H 8200 3700 50  0001 C CNN
F 3 "" H 8200 3700 50  0001 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3800 8200 3700
$Comp
L R_Small R12
U 1 1 630C5D2F
P 4800 6250
F 0 "R12" V 5000 6200 50  0000 L CNN
F 1 "1k" V 4900 6200 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4800 6250 50  0001 C CNN
F 3 "" H 4800 6250 50  0001 C CNN
	1    4800 6250
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 630C5D7B
P 5400 6250
F 0 "D3" H 5400 6350 50  0000 C CNN
F 1 "LED" H 5400 6150 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm_Horizontal_O3.81mm_Z10.0mm" H 5400 6250 50  0001 C CNN
F 3 "" H 5400 6250 50  0001 C CNN
	1    5400 6250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR40
U 1 1 630C5E43
P 5650 6250
F 0 "#PWR40" H 5650 6000 50  0001 C CNN
F 1 "GND" H 5650 6100 50  0001 C CNN
F 2 "" H 5650 6250 50  0001 C CNN
F 3 "" H 5650 6250 50  0001 C CNN
	1    5650 6250
	0    -1   1    0   
$EndComp
Wire Wire Line
	5550 6250 5650 6250
Wire Wire Line
	5250 6250 4900 6250
Text GLabel 4500 6250 0    60   Input ~ 0
LED_GREEN
Wire Wire Line
	4500 6250 4700 6250
$Comp
L R_Small R13
U 1 1 630C8BFD
P 4800 6650
F 0 "R13" V 5000 6600 50  0000 L CNN
F 1 "1k" V 4900 6600 50  0000 L CNN
F 2 "LCSDR:R_1206_0603" H 4800 6650 50  0001 C CNN
F 3 "" H 4800 6650 50  0001 C CNN
	1    4800 6650
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 630C8C03
P 5400 6650
F 0 "D4" H 5400 6750 50  0000 C CNN
F 1 "LED" H 5400 6550 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm_Horizontal_O3.81mm_Z10.0mm" H 5400 6650 50  0001 C CNN
F 3 "" H 5400 6650 50  0001 C CNN
	1    5400 6650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR41
U 1 1 630C8C09
P 5650 6650
F 0 "#PWR41" H 5650 6400 50  0001 C CNN
F 1 "GND" H 5650 6500 50  0001 C CNN
F 2 "" H 5650 6650 50  0001 C CNN
F 3 "" H 5650 6650 50  0001 C CNN
	1    5650 6650
	0    -1   1    0   
$EndComp
Wire Wire Line
	5550 6650 5650 6650
Wire Wire Line
	5250 6650 4900 6650
Text GLabel 4500 6650 0    60   Input ~ 0
LED_RED
Wire Wire Line
	4500 6650 4700 6650
$Comp
L Conn_01x10 J7
U 1 1 63328137
P 4450 5100
F 0 "J7" H 4450 5600 50  0000 C CNN
F 1 "Conn_01x10" H 4450 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 4450 5100 50  0001 C CNN
F 3 "" H 4450 5100 50  0001 C CNN
	1    4450 5100
	1    0    0    -1  
$EndComp
Text GLabel 3750 4800 0    60   Output ~ 0
IO_4
$Comp
L GND #PWR37
U 1 1 63329439
P 4150 4700
F 0 "#PWR37" H 4150 4450 50  0001 C CNN
F 1 "GND" H 4150 4550 50  0001 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "" H 4150 4700 50  0001 C CNN
	1    4150 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 4700 4250 4700
Wire Wire Line
	3750 4800 4250 4800
Text GLabel 4100 4900 0    60   Output ~ 0
IO_5
Wire Wire Line
	4250 4900 4100 4900
Text GLabel 3750 5000 0    60   Output ~ 0
IO_6
Wire Wire Line
	3750 5000 4250 5000
Text GLabel 4100 5100 0    60   Output ~ 0
IO_7
Wire Wire Line
	4100 5100 4250 5100
Text GLabel 3750 5200 0    60   Output ~ 0
IO_8
Wire Wire Line
	3750 5200 4250 5200
Text GLabel 4100 5300 0    60   Output ~ 0
IO_9
Wire Wire Line
	4250 5300 4100 5300
Text GLabel 3750 5400 0    60   Output ~ 0
IO_10
Wire Wire Line
	3750 5400 4250 5400
$Comp
L +5V #PWR38
U 1 1 63329C42
P 4150 5500
F 0 "#PWR38" H 4150 5350 50  0001 C CNN
F 1 "+5V" V 4150 5750 50  0000 C CNN
F 2 "" H 4150 5500 50  0001 C CNN
F 3 "" H 4150 5500 50  0001 C CNN
	1    4150 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 5500 4250 5500
$Comp
L +12V #PWR36
U 1 1 63329E6E
P 3700 5600
F 0 "#PWR36" H 3700 5450 50  0001 C CNN
F 1 "+12V" V 3700 5850 50  0000 C CNN
F 2 "" H 3700 5600 50  0001 C CNN
F 3 "" H 3700 5600 50  0001 C CNN
	1    3700 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 5600 4250 5600
Text GLabel 5850 750  2    60   Output ~ 0
IO_8
Text GLabel 5850 900  2    60   Output ~ 0
IO_9
Text GLabel 5850 1050 2    60   Output ~ 0
IO_10
$EndSCHEMATC
