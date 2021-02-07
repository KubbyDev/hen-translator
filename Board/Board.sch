EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Hen translator"
Date "2021-01-26"
Rev "V1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 601056A9
P 8600 3150
F 0 "U1" H 7750 2550 50  0000 C CNN
F 1 "ATmega328P-AU" H 7750 2450 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 8600 3150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 8600 3150 50  0001 C CNN
	1    8600 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Micro_SD_Card J1
U 1 1 6010CE8A
P 4700 5400
F 0 "J1" H 4650 6117 50  0000 C CNN
F 1 "Micro_SD_Card" H 4650 6026 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Wuerth_693072010801" H 5850 5700 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 4700 5400 50  0001 C CNN
	1    4700 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 601143C0
P 2150 5900
F 0 "LS1" H 2320 5896 50  0000 L CNN
F 1 "Speaker" H 2320 5805 50  0000 L CNN
F 2 "Board:SPKR_CMS-151135-078S-67" H 2150 5700 50  0001 C CNN
F 3 "~" H 2140 5850 50  0001 C CNN
	1    2150 5900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TPS613221ADBV U2
U 1 1 60105AB3
P 2300 2450
F 0 "U2" H 2300 2817 50  0000 C CNN
F 1 "TPS613221ADBV" H 2300 2726 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2300 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61322.pdf" H 2300 2300 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 60106C11
P 1650 2350
F 0 "L1" H 1650 2565 50  0000 C CNN
F 1 "4.7uH" H 1650 2474 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 1650 2350 50  0001 C CNN
F 3 "~" H 1650 2350 50  0001 C CNN
	1    1650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60107613
P 2850 2500
F 0 "C2" H 2965 2546 50  0000 L CNN
F 1 "22uF" H 2965 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 2350 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2350 2850 2350
$Comp
L power:GND #PWR0103
U 1 1 601081F0
P 2300 2750
F 0 "#PWR0103" H 2300 2500 50  0001 C CNN
F 1 "GND" H 2305 2577 50  0000 C CNN
F 2 "" H 2300 2750 50  0001 C CNN
F 3 "" H 2300 2750 50  0001 C CNN
	1    2300 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0104
U 1 1 6010A06B
P 1400 2350
F 0 "#PWR0104" H 1400 2200 50  0001 C CNN
F 1 "+BATT" V 1400 2600 50  0000 C CNN
F 2 "" H 1400 2350 50  0001 C CNN
F 3 "" H 1400 2350 50  0001 C CNN
	1    1400 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2350 3150 2350
Connection ~ 2850 2350
$Comp
L power:+3.3V #PWR0105
U 1 1 6010AFAD
P 3150 2350
F 0 "#PWR0105" H 3150 2200 50  0001 C CNN
F 1 "+3.3V" V 3150 2500 50  0000 L CNN
F 2 "" H 3150 2350 50  0001 C CNN
F 3 "" H 3150 2350 50  0001 C CNN
	1    3150 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6010B535
P 2850 2650
F 0 "#PWR0106" H 2850 2400 50  0001 C CNN
F 1 "GND" H 2855 2477 50  0000 C CNN
F 2 "" H 2850 2650 50  0001 C CNN
F 3 "" H 2850 2650 50  0001 C CNN
	1    2850 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6010BA8F
P 8450 1500
F 0 "C1" V 8198 1500 50  0000 C CNN
F 1 "100nF" V 8289 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 1350 50  0001 C CNN
F 3 "~" H 8450 1500 50  0001 C CNN
	1    8450 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 1650 8600 1500
$Comp
L power:GND #PWR0109
U 1 1 6012558A
P 8300 1500
F 0 "#PWR0109" H 8300 1250 50  0001 C CNN
F 1 "GND" V 8305 1372 50  0000 R CNN
F 2 "" H 8300 1500 50  0001 C CNN
F 3 "" H 8300 1500 50  0001 C CNN
	1    8300 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6012581A
P 8600 4650
F 0 "#PWR0110" H 8600 4400 50  0001 C CNN
F 1 "GND" H 8605 4477 50  0000 C CNN
F 2 "" H 8600 4650 50  0001 C CNN
F 3 "" H 8600 4650 50  0001 C CNN
	1    8600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1650 8700 1650
Connection ~ 8600 1650
$Comp
L Device:R R1
U 1 1 6012BB84
P 9400 3300
F 0 "R1" H 9550 3400 50  0000 C CNN
F 1 "10k" H 9550 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 3300 50  0001 C CNN
F 3 "~" H 9400 3300 50  0001 C CNN
	1    9400 3300
	1    0    0    -1  
$EndComp
Text Label 4800 6550 1    50   ~ 0
SCK
Text Label 5000 6550 1    50   ~ 0
MISO
Text Label 4600 6550 1    50   ~ 0
MOSI
Text Label 4500 6550 1    50   ~ 0
CS
NoConn ~ 4400 6300
NoConn ~ 5100 6300
Wire Wire Line
	9200 2150 9500 2150
Wire Wire Line
	9200 2250 9500 2250
Wire Wire Line
	9200 2350 9500 2350
Text Label 9500 2150 2    50   ~ 0
CS
Text Label 9500 2250 2    50   ~ 0
MOSI
Text Label 9500 2350 2    50   ~ 0
MISO
Wire Wire Line
	9200 2450 9500 2450
Text Label 9500 2450 2    50   ~ 0
SCK
$Comp
L Device:LED D1
U 1 1 60124EB0
P 9650 1750
F 0 "D1" H 9650 1550 50  0000 C CNN
F 1 "RED" H 9650 1650 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9650 1750 50  0001 C CNN
F 3 "~" H 9650 1750 50  0001 C CNN
	1    9650 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 6012AE91
P 9950 1750
F 0 "R2" V 10157 1750 50  0000 C CNN
F 1 "120" V 10066 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9880 1750 50  0001 C CNN
F 3 "~" H 9950 1750 50  0001 C CNN
	1    9950 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6012AFF5
P 10100 1750
F 0 "#PWR0116" H 10100 1500 50  0001 C CNN
F 1 "GND" V 10100 1650 50  0000 R CNN
F 2 "" H 10100 1750 50  0001 C CNN
F 3 "" H 10100 1750 50  0001 C CNN
	1    10100 1750
	0    -1   -1   0   
$EndComp
NoConn ~ 5300 4600
$Comp
L Device:R R4
U 1 1 6011E8C0
P 1950 5600
F 0 "R4" H 2020 5646 50  0000 L CNN
F 1 "3.48" H 2020 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 1880 5600 50  0001 C CNN
F 3 "~" H 1950 5600 50  0001 C CNN
	1    1950 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6011F8B1
P 1800 5200
F 0 "C6" V 1550 5150 50  0000 C CNN
F 1 "1000uF" V 1650 5150 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" H 1838 5050 50  0001 C CNN
F 3 "~" H 1800 5200 50  0001 C CNN
	1    1800 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6012024F
P 1650 5200
F 0 "#PWR01" H 1650 4950 50  0001 C CNN
F 1 "GND" V 1655 5072 50  0000 R CNN
F 2 "" H 1650 5200 50  0001 C CNN
F 3 "" H 1650 5200 50  0001 C CNN
	1    1650 5200
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 60120D4F
P 1950 4900
F 0 "#PWR02" H 1950 4750 50  0001 C CNN
F 1 "+3.3V" H 1965 5073 50  0000 C CNN
F 2 "" H 1950 4900 50  0001 C CNN
F 3 "" H 1950 4900 50  0001 C CNN
	1    1950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4900 1950 5200
Wire Wire Line
	1950 5200 1950 5450
Connection ~ 1950 5200
Wire Wire Line
	1950 5750 1950 5900
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 60124F8A
P 1850 6450
F 0 "Q1" H 2054 6404 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 2054 6495 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 6550 50  0001 C CNN
F 3 "~" H 1850 6450 50  0001 C CNN
	1    1850 6450
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 601296B8
P 1500 6450
F 0 "R3" V 1300 6400 50  0000 L CNN
F 1 "1k" V 1400 6400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 6450 50  0001 C CNN
F 3 "~" H 1500 6450 50  0001 C CNN
	1    1500 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 6450 1000 6450
Text Label 1000 6450 0    50   ~ 0
SPEAKER
$Comp
L power:GND #PWR03
U 1 1 6012AA28
P 1950 6650
F 0 "#PWR03" H 1950 6400 50  0001 C CNN
F 1 "GND" H 1955 6477 50  0000 C CNN
F 2 "" H 1950 6650 50  0001 C CNN
F 3 "" H 1950 6650 50  0001 C CNN
	1    1950 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6000 1950 6250
Wire Wire Line
	9200 1950 9200 1750
Wire Wire Line
	9200 2050 9300 2050
Wire Wire Line
	9300 2050 9300 1950
Text Label 9650 1950 2    50   ~ 0
SPEAKER
Wire Wire Line
	9300 1950 9650 1950
$Comp
L power:+BATT #PWR09
U 1 1 60133D60
P 8000 2250
F 0 "#PWR09" H 8000 2100 50  0001 C CNN
F 1 "+BATT" V 8015 2377 50  0000 L CNN
F 2 "" H 8000 2250 50  0001 C CNN
F 3 "" H 8000 2250 50  0001 C CNN
	1    8000 2250
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Audio:IM69D120 MK1
U 1 1 6012AB30
P 5350 1800
F 0 "MK1" V 5000 1900 50  0000 R CNN
F 1 "IM69D120" V 4900 2000 50  0000 R CNN
F 2 "Sensor_Audio:Infineon_PG-LLGA-5-1" H 6050 1500 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/Infineon-IM69D120-DS-v01_00-EN.pdf?fileId=5546d462602a9dc801607a0e41a01a2b" H 5350 1800 50  0001 C CNN
	1    5350 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6012E749
P 5050 1800
F 0 "#PWR04" H 5050 1550 50  0001 C CNN
F 1 "GND" V 5050 1600 50  0000 C CNN
F 2 "" H 5050 1800 50  0001 C CNN
F 3 "" H 5050 1800 50  0001 C CNN
	1    5050 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 6012F022
P 5850 1950
F 0 "C7" V 5700 1900 50  0000 C CNN
F 1 "100nF" V 5700 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 1800 50  0001 C CNN
F 3 "~" H 5850 1950 50  0001 C CNN
	1    5850 1950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6012FF8C
P 5850 2100
F 0 "#PWR06" H 5850 1850 50  0001 C CNN
F 1 "GND" H 5850 1950 50  0000 C CNN
F 2 "" H 5850 2100 50  0001 C CNN
F 3 "" H 5850 2100 50  0001 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1800 5850 1800
Connection ~ 5850 1800
$Comp
L power:+3.3V #PWR05
U 1 1 60132251
P 5450 2200
F 0 "#PWR05" H 5450 2050 50  0001 C CNN
F 1 "+3.3V" H 5400 2350 50  0000 C CNN
F 2 "" H 5450 2200 50  0001 C CNN
F 3 "" H 5450 2200 50  0001 C CNN
	1    5450 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2200 5250 2450
$Comp
L Device:R R5
U 1 1 6013957B
P 5250 2600
F 0 "R5" H 5050 2650 50  0000 L CNN
F 1 "68" H 5050 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5180 2600 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 6013C2A3
P 6150 1800
F 0 "#PWR07" H 6150 1650 50  0001 C CNN
F 1 "+3.3V" H 6150 1950 50  0000 C CNN
F 2 "" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6013CE49
P 6150 1950
F 0 "C8" V 6000 1900 50  0000 C CNN
F 1 "100nF" V 6000 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6188 1800 50  0001 C CNN
F 3 "~" H 6150 1950 50  0001 C CNN
	1    6150 1950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6013D229
P 6150 2100
F 0 "#PWR08" H 6150 1850 50  0001 C CNN
F 1 "GND" H 6150 1950 50  0000 C CNN
F 2 "" H 6150 2100 50  0001 C CNN
F 3 "" H 6150 2100 50  0001 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1800 6150 1800
Connection ~ 6150 1800
Wire Wire Line
	5250 2750 5250 3100
Text Label 5250 3100 1    50   ~ 0
MICDATA
Wire Wire Line
	5350 2200 5350 2450
Text Label 5350 3100 1    50   ~ 0
MICCLK
Wire Wire Line
	8000 2150 7500 2150
Text Label 7500 2150 0    50   ~ 0
MICDATA
Text Label 9650 3950 2    50   ~ 0
MICCLK
Wire Wire Line
	9200 3950 9650 3950
Wire Notes Line
	7000 6500 11200 6500
Wire Notes Line
	11200 6500 11200 500 
Wire Notes Line
	11200 500  7000 500 
Wire Notes Line
	7000 500  7000 6500
Wire Notes Line
	6950 7750 6950 3850
Wire Notes Line
	6950 3850 3300 3850
Wire Notes Line
	3300 3850 3300 7750
Wire Notes Line
	3300 7750 6950 7750
Wire Notes Line
	3250 7750 3250 3850
Wire Notes Line
	3250 3850 500  3850
Wire Notes Line
	500  3850 500  7750
Wire Notes Line
	500  7750 3250 7750
Wire Notes Line
	500  3800 4150 3800
Wire Notes Line
	4150 3800 4150 500 
Wire Notes Line
	4150 500  500  500 
Wire Notes Line
	500  500  500  3800
Wire Notes Line
	4200 500  4200 3800
Wire Notes Line
	4200 3800 6950 3800
Wire Notes Line
	6950 3800 6950 500 
Wire Notes Line
	6950 500  4200 500 
Text Notes 550  600  0    50   ~ 0
POWER\n
Text Notes 3350 3950 0    50   ~ 0
SD CARD
Text Notes 4250 600  0    50   ~ 0
MICROPHONE\n
Text Notes 550  3950 0    50   ~ 0
SPEAKER\n
Text Notes 7050 600  0    50   ~ 0
MICROCONTROLLER
$Comp
L power:+3.3V #PWR0108
U 1 1 6013E65E
P 7950 5450
F 0 "#PWR0108" H 7950 5300 50  0001 C CNN
F 1 "+3.3V" H 7965 5623 50  0000 C CNN
F 2 "" H 7950 5450 50  0001 C CNN
F 3 "" H 7950 5450 50  0001 C CNN
	1    7950 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 6013F684
P 8350 5450
F 0 "#PWR0111" H 8350 5300 50  0001 C CNN
F 1 "+5V" H 8365 5623 50  0000 C CNN
F 2 "" H 8350 5450 50  0001 C CNN
F 3 "" H 8350 5450 50  0001 C CNN
	1    8350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5450 7950 5650
Wire Wire Line
	8350 5450 8350 5650
Text GLabel 8550 5650 2    50   Output ~ 0
MCU_POWER
Wire Wire Line
	8350 5650 8550 5650
Text GLabel 9400 3050 2    50   Input ~ 0
MCU_POWER
Text GLabel 8000 1950 0    50   Input ~ 0
MCU_POWER
Text GLabel 8600 1200 2    50   Input ~ 0
MCU_POWER
Wire Wire Line
	8600 1500 8600 1200
Connection ~ 8600 1500
Wire Wire Line
	10150 5300 9800 5300
Wire Wire Line
	10150 5400 9800 5400
Wire Wire Line
	10150 5500 9800 5500
$Comp
L power:+5V #PWR0112
U 1 1 6016308A
P 9800 5300
F 0 "#PWR0112" H 9800 5150 50  0001 C CNN
F 1 "+5V" V 9815 5428 50  0000 L CNN
F 2 "" H 9800 5300 50  0001 C CNN
F 3 "" H 9800 5300 50  0001 C CNN
	1    9800 5300
	0    -1   -1   0   
$EndComp
Text Label 9800 5400 0    50   ~ 0
SCK
Text Label 9800 5500 0    50   ~ 0
MISO
Text Label 9800 5600 0    50   ~ 0
MOSI
Wire Wire Line
	9200 3450 9400 3450
Wire Wire Line
	9400 3450 9800 3450
Connection ~ 9400 3450
Text Label 9800 3450 2    50   ~ 0
RESET
Wire Wire Line
	9400 3150 9400 3050
NoConn ~ 9200 4050
NoConn ~ 9200 3750
NoConn ~ 9200 3650
NoConn ~ 9200 3350
NoConn ~ 9200 3250
NoConn ~ 9200 3150
NoConn ~ 9200 3050
NoConn ~ 9200 2950
NoConn ~ 9200 2850
Wire Wire Line
	9800 5600 10150 5600
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 60166A54
P 5900 6400
F 0 "Q2" V 6150 6350 50  0000 L CNN
F 1 "Q_NMOS_GSD" V 6250 6150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6100 6500 50  0001 C CNN
F 3 "~" H 5900 6400 50  0001 C CNN
	1    5900 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60166A5A
P 5900 6050
F 0 "R6" H 5700 6100 50  0000 L CNN
F 1 "1k" H 5700 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5830 6050 50  0001 C CNN
F 3 "~" H 5900 6050 50  0001 C CNN
	1    5900 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 5500 5900 5900
Text Label 5900 5500 3    50   ~ 0
SD_POWER
Text GLabel 5700 6500 0    50   Output ~ 0
SDGND
Text GLabel 4900 6550 3    50   Input ~ 0
SDGND
Wire Wire Line
	4500 6300 4500 6550
Wire Wire Line
	4600 6300 4600 6550
Wire Wire Line
	4700 6300 4700 6550
Wire Wire Line
	4800 6300 4800 6550
Wire Wire Line
	4900 6300 4900 6550
Wire Wire Line
	5000 6300 5000 6550
Wire Wire Line
	9200 3850 9650 3850
Text Label 9650 3850 2    50   ~ 0
SD_POWER
Wire Wire Line
	9200 1750 9500 1750
$Comp
L power:GND #PWR0115
U 1 1 6017478A
P 10000 4650
F 0 "#PWR0115" H 10000 4400 50  0001 C CNN
F 1 "GND" H 10000 4500 50  0000 C CNN
F 2 "" H 10000 4650 50  0001 C CNN
F 3 "" H 10000 4650 50  0001 C CNN
	1    10000 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60175203
P 10000 4500
F 0 "R7" H 10150 4500 50  0000 C CNN
F 1 "10k" H 10150 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 4500 50  0001 C CNN
F 3 "~" H 10000 4500 50  0001 C CNN
	1    10000 4500
	1    0    0    -1  
$EndComp
Text GLabel 10150 4250 0    50   Input ~ 0
MCU_POWER
Wire Wire Line
	10150 4350 10000 4350
Wire Wire Line
	10000 4350 9200 4350
Connection ~ 10000 4350
NoConn ~ 9200 4150
NoConn ~ 9200 4250
$Comp
L Switch:SW_SPST SW2
U 1 1 601A1A9D
P 8150 5650
F 0 "SW2" H 8150 5885 50  0000 C CNN
F 1 "SW_SPST" H 8150 5794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W7.62mm_P2.54mm_LowProfile" H 8150 5650 50  0001 C CNN
F 3 "~" H 8150 5650 50  0001 C CNN
	1    8150 5650
	1    0    0    -1  
$EndComp
Connection ~ 8350 5650
$Comp
L Device:R R8
U 1 1 601C2E2F
P 5350 2600
F 0 "R8" H 5450 2650 50  0000 L CNN
F 1 "68" H 5450 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5280 2600 50  0001 C CNN
F 3 "~" H 5350 2600 50  0001 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2750 5350 3100
$Comp
L power:+3.3V #PWR0113
U 1 1 601C51BB
P 4700 6550
F 0 "#PWR0113" H 4700 6400 50  0001 C CNN
F 1 "+3.3V" H 4715 6723 50  0000 C CNN
F 2 "" H 4700 6550 50  0001 C CNN
F 3 "" H 4700 6550 50  0001 C CNN
	1    4700 6550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 601CA5CE
P 6100 6500
F 0 "#PWR0114" H 6100 6250 50  0001 C CNN
F 1 "GND" V 6105 6372 50  0000 R CNN
F 2 "" H 6100 6500 50  0001 C CNN
F 3 "" H 6100 6500 50  0001 C CNN
	1    6100 6500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 601DCBA6
P 2050 1400
F 0 "J2" H 2250 1650 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2250 1550 50  0000 C CNN
F 2 "ConnectorsEvo:B02B-PASK" H 2050 1400 50  0001 C CNN
F 3 "~" H 2050 1400 50  0001 C CNN
	1    2050 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 601DD392
P 2250 1400
F 0 "#PWR0101" H 2250 1250 50  0001 C CNN
F 1 "+BATT" V 2250 1650 50  0000 C CNN
F 2 "" H 2250 1400 50  0001 C CNN
F 3 "" H 2250 1400 50  0001 C CNN
	1    2250 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 601DE79F
P 2250 1500
F 0 "#PWR0102" H 2250 1250 50  0001 C CNN
F 1 "GND" V 2250 1250 50  0000 C CNN
F 2 "" H 2250 1500 50  0001 C CNN
F 3 "" H 2250 1500 50  0001 C CNN
	1    2250 1500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 601F16EB
P 10150 4250
F 0 "TP1" V 10150 4450 50  0000 L CNN
F 1 "TestPoint" V 10150 4650 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 4250 50  0001 C CNN
F 3 "~" H 10350 4250 50  0001 C CNN
	1    10150 4250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 601F1B61
P 10150 4350
F 0 "TP2" V 10150 4550 50  0000 L CNN
F 1 "TestPoint" V 10150 4750 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 4350 50  0001 C CNN
F 3 "~" H 10350 4350 50  0001 C CNN
	1    10150 4350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 601F45F0
P 10150 5300
F 0 "TP3" V 10150 5500 50  0000 L CNN
F 1 "TestPoint" V 10150 5700 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 5300 50  0001 C CNN
F 3 "~" H 10350 5300 50  0001 C CNN
	1    10150 5300
	0    1    1    0   
$EndComp
Text Label 9800 5700 0    50   ~ 0
RESET
$Comp
L power:GND #PWR0117
U 1 1 601642CF
P 9800 5800
F 0 "#PWR0117" H 9800 5550 50  0001 C CNN
F 1 "GND" V 9800 5600 50  0000 C CNN
F 2 "" H 9800 5800 50  0001 C CNN
F 3 "" H 9800 5800 50  0001 C CNN
	1    9800 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 5800 9800 5800
Wire Wire Line
	10150 5700 9800 5700
$Comp
L Connector:TestPoint TP4
U 1 1 601FBECD
P 10150 5400
F 0 "TP4" V 10150 5600 50  0000 L CNN
F 1 "TestPoint" V 10150 5800 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 5400 50  0001 C CNN
F 3 "~" H 10350 5400 50  0001 C CNN
	1    10150 5400
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 601FC0A1
P 10150 5500
F 0 "TP5" V 10150 5700 50  0000 L CNN
F 1 "TestPoint" V 10150 5900 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 5500 50  0001 C CNN
F 3 "~" H 10350 5500 50  0001 C CNN
	1    10150 5500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 601FC23C
P 10150 5600
F 0 "TP6" V 10150 5800 50  0000 L CNN
F 1 "TestPoint" V 10150 6000 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 5600 50  0001 C CNN
F 3 "~" H 10350 5600 50  0001 C CNN
	1    10150 5600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 601FC3C6
P 10150 5700
F 0 "TP7" V 10150 5900 50  0000 L CNN
F 1 "TestPoint" V 10150 6100 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 5700 50  0001 C CNN
F 3 "~" H 10350 5700 50  0001 C CNN
	1    10150 5700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 601FC518
P 10150 5800
F 0 "TP8" V 10150 6000 50  0000 L CNN
F 1 "TestPoint" V 10150 6200 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 10350 5800 50  0001 C CNN
F 3 "~" H 10350 5800 50  0001 C CNN
	1    10150 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2750 10100 2750
Wire Wire Line
	10000 2450 10100 2450
Wire Wire Line
	10400 2600 10400 2750
Connection ~ 10400 2600
$Comp
L power:GND #PWR0107
U 1 1 60122D93
P 10400 2600
F 0 "#PWR0107" H 10400 2350 50  0001 C CNN
F 1 "GND" V 10405 2472 50  0000 R CNN
F 2 "" H 10400 2600 50  0001 C CNN
F 3 "" H 10400 2600 50  0001 C CNN
	1    10400 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 2450 10400 2600
$Comp
L Device:C C5
U 1 1 60121939
P 10250 2750
F 0 "C5" V 10500 2750 50  0000 C CNN
F 1 "18pF" V 10400 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10288 2600 50  0001 C CNN
F 3 "~" H 10250 2750 50  0001 C CNN
	1    10250 2750
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 60120E2F
P 10250 2450
F 0 "C4" V 9998 2450 50  0000 C CNN
F 1 "18pF" V 10089 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10288 2300 50  0001 C CNN
F 3 "~" H 10250 2450 50  0001 C CNN
	1    10250 2450
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6011255E
P 10000 2600
F 0 "Y1" V 10000 2450 50  0000 C CNN
F 1 "10MHz" V 10000 2850 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 10000 2600 50  0001 C CNN
F 3 "~" H 10000 2600 50  0001 C CNN
	1    10000 2600
	0    -1   -1   0   
$EndComp
Connection ~ 10000 2750
Wire Wire Line
	9850 2750 10000 2750
Connection ~ 10000 2450
Wire Wire Line
	9850 2450 10000 2450
Wire Wire Line
	9850 2550 9850 2450
Wire Wire Line
	9200 2550 9850 2550
Wire Wire Line
	9200 2650 9850 2650
Wire Wire Line
	9850 2650 9850 2750
$EndSCHEMATC
