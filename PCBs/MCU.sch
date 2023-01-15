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
Sheet 4 7
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
L C_Small C15
U 1 1 6253E18D
P 3250 4950
F 0 "C15" H 3350 5000 50  0000 L CNN
F 1 "100nF" H 3350 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3250 4950 50  0001 C CNN
F 3 "" H 3250 4950 50  0001 C CNN
	1    3250 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 6253E194
P 3250 5100
F 0 "#PWR025" H 3250 4850 50  0001 C CNN
F 1 "GND" H 3250 4950 50  0001 C CNN
F 2 "" H 3250 5100 50  0001 C CNN
F 3 "" H 3250 5100 50  0001 C CNN
	1    3250 5100
	1    0    0    -1  
$EndComp
$Comp
L JACK_TRS_3pins J10
U 1 1 630BAF45
P 9800 1450
F 0 "J10" H 9800 1850 50  0000 C CNN
F 1 "SPK" H 9750 1150 50  0000 C CNN
F 2 "LCSDR:audio_jack_3_5mm_PJ307" H 9900 1300 50  0001 C CNN
F 3 "" H 9900 1300 50  0000 C CNN
	1    9800 1450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 630BAF4C
P 9400 1450
F 0 "#PWR026" H 9400 1200 50  0001 C CNN
F 1 "GND" H 9400 1300 50  0001 C CNN
F 2 "" H 9400 1450 50  0001 C CNN
F 3 "" H 9400 1450 50  0001 C CNN
	1    9400 1450
	0    1    -1   0   
$EndComp
$Comp
L C_Small C53
U 1 1 630BB09A
P 8800 1400
F 0 "C53" V 8550 1350 50  0000 L CNN
F 1 "1uF" V 8650 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8800 1400 50  0001 C CNN
F 3 "" H 8800 1400 50  0001 C CNN
	1    8800 1400
	0    1    1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 630BB21D
P 8400 1000
F 0 "R18" H 8450 1050 50  0000 L CNN
F 1 "1M" H 8450 950 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8400 1000 50  0001 C CNN
F 3 "" H 8400 1000 50  0001 C CNN
	1    8400 1000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 630BB2CB
P 8400 1700
F 0 "R19" H 8450 1750 50  0000 L CNN
F 1 "4.7K" H 8450 1650 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8400 1700 50  0001 C CNN
F 3 "" H 8400 1700 50  0001 C CNN
	1    8400 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 630BB5BE
P 8400 1850
F 0 "#PWR027" H 8400 1600 50  0001 C CNN
F 1 "GND" H 8400 1700 50  0001 C CNN
F 2 "" H 8400 1850 50  0001 C CNN
F 3 "" H 8400 1850 50  0001 C CNN
	1    8400 1850
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 630BB673
P 8150 1400
F 0 "R17" V 8350 1400 50  0000 L CNN
F 1 "10k" V 8250 1350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8150 1400 50  0001 C CNN
F 3 "" H 8150 1400 50  0001 C CNN
	1    8150 1400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C52
U 1 1 630BB77D
P 7800 1700
F 0 "C52" H 7900 1750 50  0000 L CNN
F 1 "10nF" H 7900 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7800 1700 50  0001 C CNN
F 3 "" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C51
U 1 1 630BB82E
P 7300 1700
F 0 "C51" H 7400 1750 50  0000 L CNN
F 1 "10nF" H 7400 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7300 1700 50  0001 C CNN
F 3 "" H 7300 1700 50  0001 C CNN
	1    7300 1700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 630BB880
P 7550 1400
F 0 "R16" V 7750 1400 50  0000 L CNN
F 1 "10k" V 7650 1350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0001 C CNN
	1    7550 1400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR028
U 1 1 630BBB74
P 7800 1850
F 0 "#PWR028" H 7800 1600 50  0001 C CNN
F 1 "GND" H 7800 1700 50  0001 C CNN
F 2 "" H 7800 1850 50  0001 C CNN
F 3 "" H 7800 1850 50  0001 C CNN
	1    7800 1850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 630BBC47
P 7300 1850
F 0 "#PWR029" H 7300 1600 50  0001 C CNN
F 1 "GND" H 7300 1700 50  0001 C CNN
F 2 "" H 7300 1850 50  0001 C CNN
F 3 "" H 7300 1850 50  0001 C CNN
	1    7300 1850
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 630BBFA8
P 8400 800
F 0 "#PWR030" H 8400 650 50  0001 C CNN
F 1 "+3.3V" H 8400 940 50  0000 C CNN
F 2 "" H 8400 800 50  0001 C CNN
F 3 "" H 8400 800 50  0001 C CNN
	1    8400 800 
	1    0    0    -1  
$EndComp
$Comp
L R_Small R12
U 1 1 630C5D2F
P 6800 2600
F 0 "R12" V 7000 2550 50  0000 L CNN
F 1 "1k" V 6900 2550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6800 2600 50  0001 C CNN
F 3 "" H 6800 2600 50  0001 C CNN
	1    6800 2600
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 630C5D7B
P 7400 2600
F 0 "D3" H 7400 2700 50  0000 C CNN
F 1 "LED" H 7400 2500 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 7400 2600 50  0001 C CNN
F 3 "" H 7400 2600 50  0001 C CNN
	1    7400 2600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR031
U 1 1 630C5E43
P 7650 2600
F 0 "#PWR031" H 7650 2350 50  0001 C CNN
F 1 "GND" H 7650 2450 50  0001 C CNN
F 2 "" H 7650 2600 50  0001 C CNN
F 3 "" H 7650 2600 50  0001 C CNN
	1    7650 2600
	0    -1   1    0   
$EndComp
Text GLabel 6500 2600 0    60   Input ~ 0
LED
Wire Wire Line
	3250 4500 3250 4850
Wire Wire Line
	3250 5100 3250 5050
Wire Wire Line
	8400 1100 8400 1600
Wire Wire Line
	8250 1400 8700 1400
Connection ~ 8400 1400
Wire Wire Line
	8900 1400 9100 1400
Wire Wire Line
	9100 1150 9100 1550
Wire Wire Line
	9100 1150 9400 1150
Wire Wire Line
	9300 1150 9300 1250
Wire Wire Line
	9300 1250 9400 1250
Connection ~ 9300 1150
Wire Wire Line
	9100 1550 9400 1550
Wire Wire Line
	9300 1550 9300 1650
Wire Wire Line
	9300 1650 9400 1650
Connection ~ 9100 1400
Connection ~ 9300 1550
Wire Wire Line
	8400 1850 8400 1800
Wire Wire Line
	7100 1400 7450 1400
Wire Wire Line
	7300 1400 7300 1600
Wire Wire Line
	7650 1400 8050 1400
Wire Wire Line
	7800 1600 7800 1400
Connection ~ 7800 1400
Connection ~ 7300 1400
Wire Wire Line
	7800 1850 7800 1800
Wire Wire Line
	7300 1850 7300 1800
Wire Wire Line
	8400 900  8400 800 
Wire Wire Line
	7550 2600 7650 2600
Wire Wire Line
	7250 2600 6900 2600
Wire Wire Line
	6500 2600 6700 2600
Text GLabel 7100 1400 0    60   Output ~ 0
AUDIO_IN
$Comp
L GND #PWR032
U 1 1 6383C121
P 3550 4750
F 0 "#PWR032" H 3550 4500 50  0001 C CNN
F 1 "GND" H 3550 4600 50  0001 C CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4650 3550 4750
Text GLabel 6450 3650 2    60   Output ~ 0
RX_TX
Text GLabel 6750 3450 2    60   BiDi ~ 0
RESET_UPDI
$Comp
L ATtiny1604-SS U1
U 1 1 63B68F0B
P 4950 4350
F 0 "U1" H 4300 5400 50  0000 L BNN
F 1 "ATtiny1614-SS" H 4800 3900 50  0000 L TNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 5250 4050 50  0001 C CIN
F 3 "" H 4950 4350 50  0001 C CNN
	1    4950 4350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR033
U 1 1 63B6BF49
P 2350 4700
F 0 "#PWR033" H 2350 4550 50  0001 C CNN
F 1 "+3.3V" V 2350 4950 50  0000 C CNN
F 2 "" H 2350 4700 50  0001 C CNN
F 3 "" H 2350 4700 50  0001 C CNN
	1    2350 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 4500 3600 4500
Connection ~ 3250 4500
Wire Wire Line
	3550 4650 3600 4650
Text GLabel 3350 3550 0    60   Output ~ 0
SCL
Wire Wire Line
	3350 3550 3600 3550
Text GLabel 3150 3750 0    60   BiDi ~ 0
SDA
Wire Wire Line
	3150 3750 3600 3750
Wire Wire Line
	1250 3950 3600 3950
Wire Wire Line
	1550 4150 3600 4150
Wire Wire Line
	6250 4450 6750 4450
Wire Wire Line
	6250 4550 6450 4550
Text GLabel 6750 4450 2    60   Input ~ 0
AUDIO_IN
$Comp
L GND #PWR034
U 1 1 63B6CE21
P 6450 4600
F 0 "#PWR034" H 6450 4350 50  0001 C CNN
F 1 "GND" H 6450 4450 50  0001 C CNN
F 2 "" H 6450 4600 50  0001 C CNN
F 3 "" H 6450 4600 50  0001 C CNN
	1    6450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4550 6450 4600
$Comp
L RJ45 J4
U 1 1 63B6D3DF
P 1400 2450
F 0 "J4" H 1600 2950 50  0000 C CNN
F 1 "RJ45" H 1250 2950 50  0000 C CNN
F 2 "Connectors:RJ45_8" H 1400 2450 50  0001 C CNN
F 3 "" H 1400 2450 50  0001 C CNN
	1    1400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3650 6450 3650
Text GLabel 6450 3850 2    60   Output ~ 0
RX_TX_PA
Wire Wire Line
	6250 3850 6450 3850
Wire Wire Line
	6250 3450 6750 3450
Text GLabel 6500 4350 2    60   Output ~ 0
LED
Wire Wire Line
	6500 4350 6250 4350
Wire Wire Line
	6250 4250 7000 4250
Text GLabel 7000 4250 2    60   Output ~ 0
BAND
$Comp
L R_Small R7
U 1 1 63B70B72
P 8150 4050
F 0 "R7" V 8350 4000 50  0000 L CNN
F 1 "47" V 8250 4000 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8150 4050 50  0001 C CNN
F 3 "" H 8150 4050 50  0001 C CNN
	1    8150 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 4050 8550 4050
Wire Wire Line
	8050 4050 6250 4050
$Comp
L Conn_01x03 J6
U 1 1 63B720F4
P 3350 1950
F 0 "J6" H 3350 2150 50  0000 C CNN
F 1 "Conn_01x03" H 3350 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3350 1950 50  0001 C CNN
F 3 "" H 3350 1950 50  0001 C CNN
	1    3350 1950
	-1   0    0    -1  
$EndComp
Text GLabel 4600 1950 2    60   BiDi ~ 0
RESET_UPDI
$Comp
L R_Small R13
U 1 1 63B724E1
P 4350 1950
F 0 "R13" V 4550 1900 50  0000 L CNN
F 1 "47" V 4450 1900 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4350 1950 50  0001 C CNN
F 3 "" H 4350 1950 50  0001 C CNN
	1    4350 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 1950 4600 1950
Wire Wire Line
	4250 1950 3550 1950
$Comp
L GND #PWR038
U 1 1 63B726EF
P 3650 2100
F 0 "#PWR038" H 3650 1850 50  0001 C CNN
F 1 "GND" H 3650 1950 50  0001 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2050 3650 2050
Wire Wire Line
	3650 2050 3650 2100
$Comp
L R_Small R3
U 1 1 63B727D4
P 3750 1850
F 0 "R3" V 3950 1800 50  0000 L CNN
F 1 "47" V 3850 1800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3750 1850 50  0001 C CNN
F 3 "" H 3750 1850 50  0001 C CNN
	1    3750 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 1850 3650 1850
Text GLabel 3150 4500 0    60   Input ~ 0
VCC
Text GLabel 3950 1850 2    60   Output ~ 0
VCC
Wire Wire Line
	3850 1850 3950 1850
$Comp
L R_Small R1
U 1 1 63B73011
P 2600 4700
F 0 "R1" V 2800 4700 50  0000 L CNN
F 1 "0" V 2700 4750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 4700 2500 4700
Wire Wire Line
	2700 4700 3250 4700
Connection ~ 3250 4700
Text GLabel 2950 3000 2    60   BiDi ~ 0
RESET_UPDI
$Comp
L C_Small C17
U 1 1 63B73886
P 2550 3000
F 0 "C17" V 2750 3050 50  0000 L CNN
F 1 "100nF" V 2650 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2550 3000 50  0001 C CNN
F 3 "" H 2550 3000 50  0001 C CNN
	1    2550 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3000 2950 3000
$Comp
L C_Small C18
U 1 1 63B73A74
P 2550 3350
F 0 "C18" V 2750 3400 50  0000 L CNN
F 1 "100nF" V 2650 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2550 3350 50  0001 C CNN
F 3 "" H 2550 3350 50  0001 C CNN
	1    2550 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3350 2800 3350
Wire Wire Line
	2800 3350 2800 3000
Connection ~ 2800 3000
Wire Wire Line
	2450 3350 1650 3350
Wire Wire Line
	1650 3350 1650 2900
Wire Wire Line
	1750 2900 1750 3000
Wire Wire Line
	1750 3000 2450 3000
Wire Wire Line
	1250 2900 1250 3950
Wire Wire Line
	1550 2900 1550 4150
Text GLabel 8550 4050 2    60   Input ~ 0
CLK2
$EndSCHEMATC
