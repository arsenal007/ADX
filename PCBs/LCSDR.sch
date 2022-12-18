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
LIBS:LCSDR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "UT3MK VFO"
Date "2016-02-18"
Rev "2.0-pre1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x01 J12
U 1 1 6000B737
P 7200 1250
F 0 "J12" H 7200 1350 50  0000 C CNN
F 1 "Conn_01x01" H 7200 1150 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 7200 1250 50  0001 C CNN
F 3 "" H 7200 1250 50  0001 C CNN
	1    7200 1250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J13
U 1 1 6000BA3A
P 7200 1550
F 0 "J13" H 7200 1650 50  0000 C CNN
F 1 "Conn_01x01" H 7200 1450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 7200 1550 50  0001 C CNN
F 3 "" H 7200 1550 50  0001 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J14
U 1 1 6000BB7C
P 7200 1850
F 0 "J14" H 7200 1950 50  0000 C CNN
F 1 "Conn_01x01" H 7200 1750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 7200 1850 50  0001 C CNN
F 3 "" H 7200 1850 50  0001 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J15
U 1 1 6000BCC1
P 7200 2150
F 0 "J15" H 7200 2250 50  0000 C CNN
F 1 "Conn_01x01" H 7200 2050 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 7200 2150 50  0001 C CNN
F 3 "" H 7200 2150 50  0001 C CNN
	1    7200 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 6000BED7
P 6800 2300
F 0 "#PWR01" H 6800 2050 50  0001 C CNN
F 1 "GND" H 6800 2150 50  0001 C CNN
F 2 "" H 6800 2300 50  0001 C CNN
F 3 "" H 6800 2300 50  0001 C CNN
	1    6800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1250 6800 2300
Wire Wire Line
	6800 1250 7000 1250
Wire Wire Line
	7000 1550 6800 1550
Connection ~ 6800 1550
Wire Wire Line
	7000 1850 6800 1850
Connection ~ 6800 1850
Wire Wire Line
	7000 2150 6800 2150
Connection ~ 6800 2150
$Sheet
S 850  1000 1600 950 
U 625015D7
F0 "SI5351" 60
F1 "SI5351.sch" 60
$EndSheet
$Sheet
S 2650 1000 1600 950 
U 6253BC2D
F0 "PowerSupplay" 60
F1 "PowerSupplay.sch" 60
$EndSheet
$Sheet
S 850  2200 1600 950 
U 6253D7B6
F0 "MCU" 60
F1 "MCU.sch" 60
$EndSheet
$Sheet
S 2650 2200 1600 950 
U 63054DF3
F0 "RX" 60
F1 "RX.sch" 60
$EndSheet
$Sheet
S 850  3350 1600 950 
U 63060EF3
F0 "PA" 60
F1 "PA.sch" 60
$EndSheet
$Sheet
S 2650 3350 1600 950 
U 63062823
F0 "LPF" 60
F1 "LPF.sch" 60
$EndSheet
$EndSCHEMATC
