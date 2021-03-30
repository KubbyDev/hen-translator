EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Hen translator"
Date "2021-03-10"
Rev "V1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Speaker LS1
U 1 1 601143C0
P 5850 2050
F 0 "LS1" H 6020 2046 50  0000 L CNN
F 1 "Speaker" H 6020 1955 50  0000 L CNN
F 2 "Board:SPKR_CMS-151135-078S-67" H 5850 1850 50  0001 C CNN
F 3 "~" H 5840 2000 50  0001 C CNN
	1    5850 2050
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
Text Label 5400 4300 3    50   ~ 0
SCK
Text Label 5900 4300 3    50   ~ 0
MISO
Text Label 5600 4300 3    50   ~ 0
CS
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
P 10350 1600
F 0 "D1" H 10350 1400 50  0000 C CNN
F 1 "RED" H 10350 1500 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10350 1600 50  0001 C CNN
F 3 "~" H 10350 1600 50  0001 C CNN
	1    10350 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6012AE91
P 10350 1900
F 0 "R2" V 10557 1900 50  0000 C CNN
F 1 "120" V 10466 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10280 1900 50  0001 C CNN
F 3 "~" H 10350 1900 50  0001 C CNN
	1    10350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6012AFF5
P 10350 2050
F 0 "#PWR0116" H 10350 1800 50  0001 C CNN
F 1 "GND" V 10350 1950 50  0000 R CNN
F 2 "" H 10350 2050 50  0001 C CNN
F 3 "" H 10350 2050 50  0001 C CNN
	1    10350 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6011F8B1
P 5500 1700
F 0 "C6" V 5250 1650 50  0000 C CNN
F 1 "1000uF" V 5350 1650 50  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" H 5538 1550 50  0001 C CNN
F 3 "~" H 5500 1700 50  0001 C CNN
	1    5500 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6012024F
P 5350 1700
F 0 "#PWR01" H 5350 1450 50  0001 C CNN
F 1 "GND" V 5355 1572 50  0000 R CNN
F 2 "" H 5350 1700 50  0001 C CNN
F 3 "" H 5350 1700 50  0001 C CNN
	1    5350 1700
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 60124F8A
P 5550 2600
F 0 "Q1" H 5754 2554 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 5754 2645 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 2700 50  0001 C CNN
F 3 "~" H 5550 2600 50  0001 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 601296B8
P 5200 2600
F 0 "R3" V 5000 2550 50  0000 L CNN
F 1 "1k" V 5100 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 2600 50  0001 C CNN
F 3 "~" H 5200 2600 50  0001 C CNN
	1    5200 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2600 4700 2600
Text Label 4700 2600 0    50   ~ 0
SPEAKER
$Comp
L power:GND #PWR03
U 1 1 6012AA28
P 5650 2800
F 0 "#PWR03" H 5650 2550 50  0001 C CNN
F 1 "GND" H 5655 2627 50  0000 C CNN
F 2 "" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0001 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2150 5650 2400
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
	6950 3850 4000 3850
Wire Notes Line
	4000 3850 4000 7750
Wire Notes Line
	4000 7750 6950 7750
Wire Notes Line
	3950 7750 3950 3850
Wire Notes Line
	3950 3850 500  3850
Wire Notes Line
	500  3850 500  7750
Wire Notes Line
	500  7750 3950 7750
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
Text Notes 4050 3950 0    50   ~ 0
SD CARD
Text Notes 550  3950 0    50   ~ 0
MICROPHONE\n
Text Notes 4250 600  0    50   ~ 0
SPEAKER\n
Text Notes 7050 600  0    50   ~ 0
MICROCONTROLLER
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
NoConn ~ 9200 3350
NoConn ~ 9200 3250
NoConn ~ 9200 3050
NoConn ~ 9200 2950
Wire Wire Line
	9800 5600 10150 5600
$Comp
L Device:R R6
U 1 1 60166A5A
P 5650 6850
F 0 "R6" V 5450 6800 50  0000 L CNN
F 1 "1k" V 5550 6800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5580 6850 50  0001 C CNN
F 3 "~" H 5650 6850 50  0001 C CNN
	1    5650 6850
	0    -1   1    0   
$EndComp
Wire Wire Line
	6200 6850 5800 6850
Text Label 6200 6850 2    50   ~ 0
SD_POWER
Wire Wire Line
	9200 4150 9650 4150
Text Label 9650 4150 2    50   ~ 0
SD_POWER
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
Wire Wire Line
	10150 4350 10000 4350
Wire Wire Line
	10000 4350 9200 4350
Connection ~ 10000 4350
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
L Connector:Conn_01x02_Male J2
U 1 1 601DCBA6
P 2200 1300
F 0 "J2" H 2400 1550 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2400 1450 50  0000 C CNN
F 2 "ConnectorsEvo:S02B-PASK" H 2200 1300 50  0001 C CNN
F 3 "~" H 2200 1300 50  0001 C CNN
	1    2200 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 601DD392
P 2400 1300
F 0 "#PWR0101" H 2400 1150 50  0001 C CNN
F 1 "+BATT" V 2400 1550 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 601DE79F
P 2400 1400
F 0 "#PWR0102" H 2400 1150 50  0001 C CNN
F 1 "GND" V 2400 1150 50  0000 C CNN
F 2 "" H 2400 1400 50  0001 C CNN
F 3 "" H 2400 1400 50  0001 C CNN
	1    2400 1400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 601F16EB
P 10150 4250
F 0 "TP1" V 10150 4450 50  0000 L CNN
F 1 "TestPoint" V 10150 4650 50  0000 L CNN
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 4250 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 4350 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 5300 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 5400 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 5500 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 5600 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 5700 50  0001 C CNN
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
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 5800 50  0001 C CNN
F 3 "~" H 10350 5800 50  0001 C CNN
	1    10150 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60205205
P 3100 2800
F 0 "#PWR012" H 3100 2550 50  0001 C CNN
F 1 "GND" V 3100 2600 50  0000 C CNN
F 2 "" H 3100 2800 50  0001 C CNN
F 3 "" H 3100 2800 50  0001 C CNN
	1    3100 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR010
U 1 1 602057F1
P 1050 2600
F 0 "#PWR010" H 1050 2450 50  0001 C CNN
F 1 "+BATT" V 1050 2850 50  0000 C CNN
F 2 "" H 1050 2600 50  0001 C CNN
F 3 "" H 1050 2600 50  0001 C CNN
	1    1050 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 60208C6F
P 1200 2750
F 0 "C2" H 1400 2800 50  0000 L CNN
F 1 "10uF" H 1350 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1238 2600 50  0001 C CNN
F 3 "~" H 1200 2750 50  0001 C CNN
	1    1200 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6020993C
P 1200 2900
F 0 "#PWR011" H 1200 2650 50  0001 C CNN
F 1 "GND" H 1205 2727 50  0000 C CNN
F 2 "" H 1200 2900 50  0001 C CNN
F 3 "" H 1200 2900 50  0001 C CNN
	1    1200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2600 1200 2600
Connection ~ 1200 2600
$Comp
L pspice:INDUCTOR L1
U 1 1 6020EEB9
P 1450 2250
F 0 "L1" H 1600 2400 50  0000 C CNN
F 1 "4.7uH" H 1350 2400 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 1450 2250 50  0001 C CNN
F 3 "~" H 1450 2250 50  0001 C CNN
	1    1450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60214C03
P 3500 2400
F 0 "C3" H 3250 2450 50  0000 L CNN
F 1 "10uF" H 3200 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 2250 50  0001 C CNN
F 3 "~" H 3500 2400 50  0001 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60214C09
P 3500 2550
F 0 "#PWR013" H 3500 2300 50  0001 C CNN
F 1 "GND" H 3650 2450 50  0000 C CNN
F 2 "" H 3500 2550 50  0001 C CNN
F 3 "" H 3500 2550 50  0001 C CNN
	1    3500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 60216211
P 3600 2250
F 0 "#PWR014" H 3600 2100 50  0001 C CNN
F 1 "+3.3V" V 3600 2400 50  0000 L CNN
F 2 "" H 3600 2250 50  0001 C CNN
F 3 "" H 3600 2250 50  0001 C CNN
	1    3600 2250
	0    1    1    0   
$EndComp
$Comp
L Symbols:TLV61225DCKR U2
U 1 1 60233EC8
P 2400 2550
F 0 "U2" H 2400 3336 60  0000 C CNN
F 1 "TLV61225DCKR" H 2400 3230 60  0000 C CNN
F 2 "Board:SOT65P210X110-6N" H 2400 1850 60  0001 C CNN
F 3 "" H 2400 2550 60  0000 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2600 1700 2600
Wire Wire Line
	1700 2600 1700 2800
Connection ~ 1700 2600
Wire Wire Line
	1200 2600 1200 2250
Wire Wire Line
	3100 2450 3100 2250
Wire Wire Line
	3100 2250 3500 2250
Connection ~ 3100 2250
Connection ~ 3500 2250
Wire Wire Line
	3500 2250 3600 2250
Connection ~ 8600 1650
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
L Connector:TestPoint TP9
U 1 1 60201C0D
P 10150 3650
F 0 "TP9" V 10150 3850 50  0000 L CNN
F 1 "TestPoint" V 10150 4050 50  0000 L CNN
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 3650 50  0001 C CNN
F 3 "~" H 10350 3650 50  0001 C CNN
	1    10150 3650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 60201C13
P 10150 3750
F 0 "TP10" V 10150 3950 50  0000 L CNN
F 1 "TestPoint" V 10150 4150 50  0000 L CNN
F 2 "Board:TestPoint_THTPad_D1.0mm_Drill0.7mm" H 10350 3750 50  0001 C CNN
F 3 "~" H 10350 3750 50  0001 C CNN
	1    10150 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3650 10150 3650
Wire Wire Line
	9200 3750 10150 3750
Text Notes 10050 3650 0    50   ~ 0
RX
Text Notes 10050 3750 0    50   ~ 0
TX\n
$Comp
L power:GND #PWR0104
U 1 1 60220953
P 5200 7050
F 0 "#PWR0104" H 5200 6800 50  0001 C CNN
F 1 "GND" H 5250 6850 50  0000 R CNN
F 2 "" H 5200 7050 50  0001 C CNN
F 3 "" H 5200 7050 50  0001 C CNN
	1    5200 7050
	-1   0    0    -1  
$EndComp
Text Label 5500 4300 3    50   ~ 0
MOSI
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 60166A54
P 5300 6850
F 0 "Q2" V 5550 6800 50  0000 L CNN
F 1 "Q_NMOS_GSD" V 5650 6600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5500 6950 50  0001 C CNN
F 3 "~" H 5300 6850 50  0001 C CNN
	1    5300 6850
	-1   0    0    -1  
$EndComp
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
Text GLabel 10150 4250 0    50   Input ~ 0
MCU_POWER
$Comp
L Symbols:5025700893 J1
U 1 1 6023787B
P 5600 5750
F 0 "J1" H 5600 6225 50  0000 C CNN
F 1 "5025700893" H 5400 5150 50  0001 L BNN
F 2 "Board:MOLEX_5025700893" H 5250 5050 50  0001 L BNN
F 3 "" H 5600 5750 50  0001 L BNN
F 4 "Molex" H 5600 5750 50  0001 L BNN "MANUFACTURER"
	1    5600 5750
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 6022DD16
P 5900 6350
F 0 "#PWR0105" H 5900 6200 50  0001 C CNN
F 1 "+3.3V" V 5900 6600 50  0000 C CNN
F 2 "" H 5900 6350 50  0001 C CNN
F 3 "" H 5900 6350 50  0001 C CNN
	1    5900 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60216719
P 6200 6350
F 0 "#PWR0103" H 6200 6100 50  0001 C CNN
F 1 "GND" V 6200 6200 50  0000 R CNN
F 2 "" H 6200 6350 50  0001 C CNN
F 3 "" H 6200 6350 50  0001 C CNN
	1    6200 6350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 60216713
P 6050 6350
F 0 "C9" V 5900 6450 50  0000 C CNN
F 1 "100nF" V 5900 6250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6088 6200 50  0001 C CNN
F 3 "~" H 6050 6350 50  0001 C CNN
	1    6050 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 6350 5200 6650
$Comp
L Device:C C10
U 1 1 60491239
P 7850 1950
F 0 "C10" V 7598 1950 50  0000 C CNN
F 1 "100nF" V 7689 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7888 1800 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6049123F
P 7700 1950
F 0 "#PWR015" H 7700 1700 50  0001 C CNN
F 1 "GND" V 7705 1822 50  0000 R CNN
F 2 "" H 7700 1950 50  0001 C CNN
F 3 "" H 7700 1950 50  0001 C CNN
	1    7700 1950
	0    1    1    0   
$EndComp
NoConn ~ 9200 2550
NoConn ~ 9200 2650
Wire Wire Line
	5650 1700 5650 2050
Wire Wire Line
	5650 1700 5650 1350
Connection ~ 5650 1700
$Comp
L power:+BATT #PWR02
U 1 1 604DE421
P 5650 1350
F 0 "#PWR02" H 5650 1200 50  0001 C CNN
F 1 "+BATT" H 5665 1523 50  0000 C CNN
F 2 "" H 5650 1350 50  0001 C CNN
F 3 "" H 5650 1350 50  0001 C CNN
	1    5650 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60522BCE
P 2150 5600
F 0 "#PWR017" H 2150 5350 50  0001 C CNN
F 1 "GND" H 2150 5450 50  0000 C CNN
F 2 "" H 2150 5600 50  0001 C CNN
F 3 "" H 2150 5600 50  0001 C CNN
	1    2150 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60522BD4
P 2150 5450
F 0 "C4" H 1950 5500 50  0000 C CNN
F 1 "100nF" H 1900 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2188 5300 50  0001 C CNN
F 3 "~" H 2150 5450 50  0001 C CNN
	1    2150 5450
	-1   0    0    -1  
$EndComp
Connection ~ 2150 5300
$Comp
L power:+3.3V #PWR06
U 1 1 60522BDB
P 2150 5300
F 0 "#PWR06" H 2150 5150 50  0001 C CNN
F 1 "+3.3V" H 2150 5450 50  0000 C CNN
F 2 "" H 2150 5300 50  0001 C CNN
F 3 "" H 2150 5300 50  0001 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 605252B9
P 1550 5300
F 0 "#PWR016" H 1550 5050 50  0001 C CNN
F 1 "GND" H 1400 5250 50  0000 C CNN
F 2 "" H 1550 5300 50  0001 C CNN
F 3 "" H 1550 5300 50  0001 C CNN
	1    1550 5300
	1    0    0    -1  
$EndComp
$Comp
L Symbols:ICS-40181 MK1
U 1 1 6059CB49
P 1750 4800
F 0 "MK1" V 1300 4800 50  0000 C CNN
F 1 "ICS-40181" V 1400 4800 50  0000 C CNN
F 2 "Board:MIC_ICS-40181" H 1450 5250 50  0001 L BNN
F 3 "" H 1750 4800 50  0001 L BNN
	1    1750 4800
	0    1    1    0   
$EndComp
NoConn ~ 9200 3950
$Comp
L power:+3.3V #PWR07
U 1 1 605A4CE6
P 2400 5950
F 0 "#PWR07" H 2400 5800 50  0001 C CNN
F 1 "+3.3V" H 2400 6100 50  0000 C CNN
F 2 "" H 2400 5950 50  0001 C CNN
F 3 "" H 2400 5950 50  0001 C CNN
	1    2400 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 605A5059
P 2400 6550
F 0 "#PWR08" H 2400 6300 50  0001 C CNN
F 1 "GND" H 2400 6400 50  0000 C CNN
F 2 "" H 2400 6550 50  0001 C CNN
F 3 "" H 2400 6550 50  0001 C CNN
	1    2400 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 605A589A
P 2400 6100
F 0 "R8" H 2470 6146 50  0000 L CNN
F 1 "10K" H 2470 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2330 6100 50  0001 C CNN
F 3 "~" H 2400 6100 50  0001 C CNN
	1    2400 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 605A5D82
P 2400 6400
F 0 "R9" H 2470 6446 50  0000 L CNN
F 1 "10K" H 2470 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2330 6400 50  0001 C CNN
F 3 "~" H 2400 6400 50  0001 C CNN
	1    2400 6400
	1    0    0    -1  
$EndComp
Connection ~ 2400 6250
$Comp
L power:GND #PWR04
U 1 1 605AD19E
P 1550 6500
F 0 "#PWR04" H 1550 6250 50  0001 C CNN
F 1 "GND" V 1450 6450 50  0000 C CNN
F 2 "" H 1550 6500 50  0001 C CNN
F 3 "" H 1550 6500 50  0001 C CNN
	1    1550 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 6250 1950 6300
Wire Wire Line
	1950 6250 2400 6250
$Comp
L power:+3.3V #PWR05
U 1 1 605B7112
P 2150 6500
F 0 "#PWR05" H 2150 6350 50  0001 C CNN
F 1 "+3.3V" V 2050 6550 50  0000 C CNN
F 2 "" H 2150 6500 50  0001 C CNN
F 3 "" H 2150 6500 50  0001 C CNN
	1    2150 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 605C239F
P 1350 6600
F 0 "R4" H 1150 6650 50  0000 L CNN
F 1 "21K" H 1150 6550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1280 6600 50  0001 C CNN
F 3 "~" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
Text Label 1850 7350 1    50   ~ 0
MICDATA
Wire Wire Line
	1850 6900 1850 6950
$Comp
L Symbols:MCP6001UT-I_OT U3
U 1 1 6059BF2D
P 1850 6550
F 0 "U3" V 2050 6650 50  0000 L CNN
F 1 "MCP6001UT-I_OT" V 2150 6650 50  0000 L CNN
F 2 "Board:SOT95P270X145-5N" H 1450 5800 50  0001 L BNN
F 3 "" H 3000 5700 50  0001 L BNN
	1    1850 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 5300 2150 5300
$Comp
L Device:C C5
U 1 1 605BD03D
P 1750 5700
F 0 "C5" H 2000 5750 50  0000 C CNN
F 1 "4.7uF" H 1950 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1788 5550 50  0001 C CNN
F 3 "~" H 1750 5700 50  0001 C CNN
	1    1750 5700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 605BFC7A
P 1750 6050
F 0 "R10" H 1820 6096 50  0000 L CNN
F 1 "510" H 1820 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1680 6050 50  0001 C CNN
F 3 "~" H 1750 6050 50  0001 C CNN
	1    1750 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5300 1750 5550
NoConn ~ 5300 6350
NoConn ~ 5400 6350
Connection ~ 5900 6350
Wire Wire Line
	5400 4300 5400 5150
Wire Wire Line
	5500 4300 5500 4950
Wire Wire Line
	5600 4300 5600 5150
Wire Wire Line
	5900 4300 5900 5000
$Comp
L power:+3.3V #PWR019
U 1 1 6060EB72
P 4500 4450
F 0 "#PWR019" H 4500 4300 50  0001 C CNN
F 1 "+3.3V" H 4500 4650 50  0000 C CNN
F 2 "" H 4500 4450 50  0001 C CNN
F 3 "" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 4900 5000
Connection ~ 5900 5000
Wire Wire Line
	5900 5000 5900 5150
$Comp
L Device:R R11
U 1 1 606148D0
P 4500 4750
F 0 "R11" V 4400 4800 50  0000 L CNN
F 1 "10K" V 4400 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 4750 50  0001 C CNN
F 3 "~" H 4500 4750 50  0001 C CNN
	1    4500 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 60615121
P 4700 4750
F 0 "R12" V 4600 4800 50  0000 L CNN
F 1 "10K" V 4600 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4630 4750 50  0001 C CNN
F 3 "~" H 4700 4750 50  0001 C CNN
	1    4700 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60615503
P 4900 4750
F 0 "R13" V 4800 4800 50  0000 L CNN
F 1 "10K" V 4800 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4830 4750 50  0001 C CNN
F 3 "~" H 4900 4750 50  0001 C CNN
	1    4900 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 60615755
P 5100 4750
F 0 "R14" V 5000 4800 50  0000 L CNN
F 1 "10K" V 5000 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5030 4750 50  0001 C CNN
F 3 "~" H 5100 4750 50  0001 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4450 4500 4500
Wire Wire Line
	4500 4500 4700 4500
Wire Wire Line
	4700 4500 4700 4600
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 4500 4600
Wire Wire Line
	4700 4500 4900 4500
Wire Wire Line
	4900 4500 4900 4600
Connection ~ 4700 4500
Wire Wire Line
	4900 4500 5100 4500
Wire Wire Line
	5100 4500 5100 4600
Connection ~ 4900 4500
Wire Wire Line
	5500 4950 5100 4950
Wire Wire Line
	5100 4950 5100 4900
Connection ~ 5500 4950
Wire Wire Line
	5500 4950 5500 5150
Wire Wire Line
	4900 5000 4900 4900
Wire Wire Line
	5700 5050 4700 5050
Wire Wire Line
	4700 5050 4700 4900
Wire Wire Line
	5700 5050 5700 5150
Wire Wire Line
	5800 5150 5800 5100
Wire Wire Line
	5800 5100 4500 5100
Wire Wire Line
	4500 5100 4500 4900
Wire Wire Line
	1750 6200 1750 6250
Text Notes 2600 5000 0    50   ~ 0
C5 is a DC blocking capacitor, \nit removes the 0.7V offset of \nthe output signal (it forms a \nhigh pass filter with R10, \nFcut = 66Hz).\n\nR4 and R10 set the gain of the\namplifier to -41 (inverting \nconfiguration).\n\nR8 and R9 add a DC offset \nto the output (of 3.3/2 V)\nto avoid clipping at GND
Wire Wire Line
	1750 5850 1750 5900
Wire Wire Line
	1750 6250 1350 6250
Wire Wire Line
	1350 6250 1350 6450
Connection ~ 1750 6250
Wire Wire Line
	1750 6250 1750 6300
Wire Wire Line
	1350 6950 1850 6950
Wire Wire Line
	1350 6750 1350 6950
Connection ~ 1850 6950
Wire Wire Line
	1850 6950 1850 7350
Wire Wire Line
	9200 3150 9300 3150
Wire Wire Line
	9300 3150 9300 2950
Wire Wire Line
	9300 2950 9650 2950
Text Label 9650 2950 2    50   ~ 0
MICDATA
NoConn ~ 8000 2150
Wire Wire Line
	10350 1450 10350 1150
Text Label 10350 1150 3    50   ~ 0
LED
NoConn ~ 9200 1950
Wire Wire Line
	9200 2850 9650 2850
Text Label 9650 2850 2    50   ~ 0
LED
NoConn ~ 9200 3850
$EndSCHEMATC
