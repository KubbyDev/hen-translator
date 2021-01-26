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
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 601056A9
P 2350 5650
F 0 "U?" H 3100 4250 50  0000 C CNN
F 1 "ATmega328P-AU" H 3100 4150 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2350 5650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2350 5650 50  0001 C CNN
	1    2350 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 60109D62
P 2050 1350
F 0 "BT?" V 2350 1350 50  0000 L CNN
F 1 "Battery_Cell" V 2250 1200 50  0000 L CNN
F 2 "" V 2050 1410 50  0001 C CNN
F 3 "~" V 2050 1410 50  0001 C CNN
	1    2050 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 6010B26D
P 1600 1350
F 0 "#PWR?" H 1600 1200 50  0001 C CNN
F 1 "+BATT" H 1615 1523 50  0000 C CNN
F 2 "" H 1600 1350 50  0001 C CNN
F 3 "" H 1600 1350 50  0001 C CNN
	1    1600 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6010B7CF
P 3200 1350
F 0 "#PWR?" H 3200 1100 50  0001 C CNN
F 1 "GND" H 3205 1177 50  0000 C CNN
F 2 "" H 3200 1350 50  0001 C CNN
F 3 "" H 3200 1350 50  0001 C CNN
	1    3200 1350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Micro_SD_Card J?
U 1 1 6010CE8A
P 9650 2400
F 0 "J?" H 9600 3117 50  0000 C CNN
F 1 "Micro_SD_Card" H 9600 3026 50  0000 C CNN
F 2 "" H 10800 2700 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 9650 2400 50  0001 C CNN
	1    9650 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 6011255E
P 3400 5100
F 0 "Y?" V 3400 4950 50  0000 C CNN
F 1 "10MHz" V 3400 5350 50  0000 C CNN
F 2 "" H 3400 5100 50  0001 C CNN
F 3 "~" H 3400 5100 50  0001 C CNN
	1    3400 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:Speaker LS?
U 1 1 601143C0
P 5700 2500
F 0 "LS?" H 5870 2496 50  0000 L CNN
F 1 "Speaker" H 5870 2405 50  0000 L CNN
F 2 "" H 5700 2300 50  0001 C CNN
F 3 "~" H 5690 2450 50  0001 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:Microphone MK?
U 1 1 60114E5B
P 8650 5150
F 0 "MK?" H 8780 5196 50  0000 L CNN
F 1 "Microphone" H 8780 5105 50  0000 L CNN
F 2 "" V 8650 5250 50  0001 C CNN
F 3 "~" V 8650 5250 50  0001 C CNN
	1    8650 5150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TPS613221ADBV U?
U 1 1 60105AB3
P 2450 2300
F 0 "U?" H 2450 2667 50  0000 C CNN
F 1 "TPS613221ADBV" H 2450 2576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2450 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61322.pdf" H 2450 2150 50  0001 C CNN
	1    2450 2300
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 60106C11
P 1800 2200
F 0 "L?" H 1800 2415 50  0000 C CNN
F 1 "4.7uH" H 1800 2324 50  0000 C CNN
F 2 "" H 1800 2200 50  0001 C CNN
F 3 "~" H 1800 2200 50  0001 C CNN
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60107613
P 3000 2350
F 0 "C?" H 3115 2396 50  0000 L CNN
F 1 "22uF" H 3115 2305 50  0000 L CNN
F 2 "" H 3038 2200 50  0001 C CNN
F 3 "~" H 3000 2350 50  0001 C CNN
	1    3000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2200 3000 2200
$Comp
L power:GND #PWR?
U 1 1 601081F0
P 2450 2600
F 0 "#PWR?" H 2450 2350 50  0001 C CNN
F 1 "GND" H 2455 2427 50  0000 C CNN
F 2 "" H 2450 2600 50  0001 C CNN
F 3 "" H 2450 2600 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 6010A06B
P 1550 2200
F 0 "#PWR?" H 1550 2050 50  0001 C CNN
F 1 "+BATT" V 1550 2450 50  0000 C CNN
F 2 "" H 1550 2200 50  0001 C CNN
F 3 "" H 1550 2200 50  0001 C CNN
	1    1550 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2200 3300 2200
Connection ~ 3000 2200
$Comp
L power:+3.3V #PWR?
U 1 1 6010AFAD
P 3300 2200
F 0 "#PWR?" H 3300 2050 50  0001 C CNN
F 1 "+3.3V" V 3300 2350 50  0000 L CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6010B535
P 3000 2500
F 0 "#PWR?" H 3000 2250 50  0001 C CNN
F 1 "GND" H 3005 2327 50  0000 C CNN
F 2 "" H 3000 2500 50  0001 C CNN
F 3 "" H 3000 2500 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6010BA8F
P 2200 4000
F 0 "C?" V 1948 4000 50  0000 C CNN
F 1 "100nF" V 2039 4000 50  0000 C CNN
F 2 "" H 2238 3850 50  0001 C CNN
F 3 "~" H 2200 4000 50  0001 C CNN
	1    2200 4000
	0    1    1    0   
$EndComp
Text Notes 5350 2250 0    50   ~ 0
TODO: Bien découpler\n
$Comp
L Switch:SW_Push SW?
U 1 1 6011A318
P 2700 1350
F 0 "SW?" H 2700 1635 50  0000 C CNN
F 1 "SW_Push" H 2700 1544 50  0000 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "~" H 2700 1550 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1350 2500 1350
Wire Wire Line
	2900 1350 3200 1350
Wire Wire Line
	1600 1350 1850 1350
Wire Wire Line
	2950 5050 3050 5050
Wire Wire Line
	3050 5050 3050 4950
Wire Wire Line
	3050 4950 3400 4950
Wire Wire Line
	2950 5150 3050 5150
Wire Wire Line
	3050 5150 3050 5250
Wire Wire Line
	3050 5250 3400 5250
$Comp
L Device:C C?
U 1 1 60120E2F
P 3650 4950
F 0 "C?" V 3398 4950 50  0000 C CNN
F 1 "22pF" V 3489 4950 50  0000 C CNN
F 2 "" H 3688 4800 50  0001 C CNN
F 3 "~" H 3650 4950 50  0001 C CNN
	1    3650 4950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60121939
P 3650 5250
F 0 "C?" V 3900 5250 50  0000 C CNN
F 1 "22pF" V 3800 5250 50  0000 C CNN
F 2 "" H 3688 5100 50  0001 C CNN
F 3 "~" H 3650 5250 50  0001 C CNN
	1    3650 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5250 3500 5250
Connection ~ 3400 5250
Wire Wire Line
	3400 4950 3500 4950
Connection ~ 3400 4950
Wire Wire Line
	3800 4950 3800 5100
$Comp
L power:GND #PWR?
U 1 1 60122D93
P 3800 5100
F 0 "#PWR?" H 3800 4850 50  0001 C CNN
F 1 "GND" V 3805 4972 50  0000 R CNN
F 2 "" H 3800 5100 50  0001 C CNN
F 3 "" H 3800 5100 50  0001 C CNN
	1    3800 5100
	0    -1   -1   0   
$EndComp
Connection ~ 3800 5100
Wire Wire Line
	3800 5100 3800 5250
Wire Wire Line
	2350 4150 2350 4000
Wire Wire Line
	2350 4000 2350 3700
Connection ~ 2350 4000
$Comp
L power:+3.3V #PWR?
U 1 1 60124F6F
P 2350 3700
F 0 "#PWR?" H 2350 3550 50  0001 C CNN
F 1 "+3.3V" H 2365 3873 50  0000 C CNN
F 2 "" H 2350 3700 50  0001 C CNN
F 3 "" H 2350 3700 50  0001 C CNN
	1    2350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6012558A
P 2050 4000
F 0 "#PWR?" H 2050 3750 50  0001 C CNN
F 1 "GND" V 2055 3872 50  0000 R CNN
F 2 "" H 2050 4000 50  0001 C CNN
F 3 "" H 2050 4000 50  0001 C CNN
	1    2050 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6012581A
P 2350 7150
F 0 "#PWR?" H 2350 6900 50  0001 C CNN
F 1 "GND" H 2355 6977 50  0000 C CNN
F 2 "" H 2350 7150 50  0001 C CNN
F 3 "" H 2350 7150 50  0001 C CNN
	1    2350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6012A93E
P 1750 4450
F 0 "#PWR?" H 1750 4300 50  0001 C CNN
F 1 "+3.3V" V 1765 4578 50  0000 L CNN
F 2 "" H 1750 4450 50  0001 C CNN
F 3 "" H 1750 4450 50  0001 C CNN
	1    1750 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 4150 2450 4150
Connection ~ 2350 4150
$Comp
L Device:R R?
U 1 1 6012BB84
P 3100 5950
F 0 "R?" V 2893 5950 50  0000 C CNN
F 1 "10k" V 2984 5950 50  0000 C CNN
F 2 "" V 3030 5950 50  0001 C CNN
F 3 "~" H 3100 5950 50  0001 C CNN
	1    3100 5950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6012C387
P 3250 5950
F 0 "#PWR?" H 3250 5800 50  0001 C CNN
F 1 "+3.3V" V 3265 6078 50  0000 L CNN
F 2 "" H 3250 5950 50  0001 C CNN
F 3 "" H 3250 5950 50  0001 C CNN
	1    3250 5950
	0    1    1    0   
$EndComp
$EndSCHEMATC
