EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 6311933B
P 5000 4900
F 0 "A?" V 4954 5941 50  0000 L CNN
F 1 "Arduino_UNO_R3" V 5045 5941 50  0000 L CNN
F 2 "Module:Arduino_UNO_R3" H 5150 3850 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4800 5950 50  0001 C CNN
	1    5000 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6311B819
P 4800 4100
F 0 "R?" H 4870 4146 50  0000 L CNN
F 1 "R" H 4870 4055 50  0000 L CNN
F 2 "" V 4730 4100 50  0001 C CNN
F 3 "~" H 4800 4100 50  0001 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6311B84E
P 4600 4100
F 0 "R?" H 4670 4146 50  0000 L CNN
F 1 "R" H 4670 4055 50  0000 L CNN
F 2 "" V 4530 4100 50  0001 C CNN
F 3 "~" H 4600 4100 50  0001 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6311B882
P 4500 3450
F 0 "R?" H 4570 3496 50  0000 L CNN
F 1 "R" H 4570 3405 50  0000 L CNN
F 2 "" V 4430 3450 50  0001 C CNN
F 3 "~" H 4500 3450 50  0001 C CNN
	1    4500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6311B8A3
P 4300 4150
F 0 "R?" H 4370 4196 50  0000 L CNN
F 1 "R" H 4370 4105 50  0000 L CNN
F 2 "" V 4230 4150 50  0001 C CNN
F 3 "~" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6311B908
P 4700 3450
F 0 "R?" H 4770 3496 50  0000 L CNN
F 1 "R" H 4770 3405 50  0000 L CNN
F 2 "" V 4630 3450 50  0001 C CNN
F 3 "~" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4300 4300 4400
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 6311C1E2
P 4000 6600
F 0 "J?" H 4027 6626 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4027 6535 50  0000 L CNN
F 2 "" H 4000 6600 50  0001 C CNN
F 3 "~" H 4000 6600 50  0001 C CNN
	1    4000 6600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 6311C427
P 4250 1900
F 0 "J?" H 4277 1876 50  0000 L CNN
F 1 "Conn_01x16_Female" H 4277 1785 50  0000 L CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "~" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 6311C4D1
P 2850 2200
F 0 "J?" H 2877 2176 50  0000 L CNN
F 1 "Conn_01x16_Female" H 2877 2085 50  0000 L CNN
F 2 "" H 2850 2200 50  0001 C CNN
F 3 "~" H 2850 2200 50  0001 C CNN
	1    2850 2200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 631207B7
P 950 6700
F 0 "SW?" V 996 6652 50  0000 R CNN
F 1 "SW_Push" V 905 6652 50  0000 R CNN
F 2 "" H 950 6900 50  0001 C CNN
F 3 "" H 950 6900 50  0001 C CNN
	1    950  6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63120906
P 950 7050
F 0 "R?" H 1020 7096 50  0000 L CNN
F 1 "10k" H 1020 7005 50  0000 L CNN
F 2 "" V 880 7050 50  0001 C CNN
F 3 "~" H 950 7050 50  0001 C CNN
	1    950  7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 631209D9
P 950 7200
F 0 "#PWR?" H 950 6950 50  0001 C CNN
F 1 "GND" H 955 7027 50  0000 C CNN
F 2 "" H 950 7200 50  0001 C CNN
F 3 "" H 950 7200 50  0001 C CNN
	1    950  7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63120AA4
P 950 6500
F 0 "#PWR?" H 950 6350 50  0001 C CNN
F 1 "+5V" H 965 6673 50  0000 C CNN
F 2 "" H 950 6500 50  0001 C CNN
F 3 "" H 950 6500 50  0001 C CNN
	1    950  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6900 950  6900
Text GLabel 1400 6900 2    50   Input ~ 0
D7
Connection ~ 950  6900
$Comp
L Switch:SW_Push SW?
U 1 1 631210B1
P 1850 6700
F 0 "SW?" V 1896 6652 50  0000 R CNN
F 1 "SW_Push" V 1805 6652 50  0000 R CNN
F 2 "" H 1850 6900 50  0001 C CNN
F 3 "" H 1850 6900 50  0001 C CNN
	1    1850 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 631210B8
P 1850 7050
F 0 "R?" H 1920 7096 50  0000 L CNN
F 1 "10k" H 1920 7005 50  0000 L CNN
F 2 "" V 1780 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 631210BF
P 1850 7200
F 0 "#PWR?" H 1850 6950 50  0001 C CNN
F 1 "GND" H 1855 7027 50  0000 C CNN
F 2 "" H 1850 7200 50  0001 C CNN
F 3 "" H 1850 7200 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 631210C5
P 1850 6500
F 0 "#PWR?" H 1850 6350 50  0001 C CNN
F 1 "+5V" H 1865 6673 50  0000 C CNN
F 2 "" H 1850 6500 50  0001 C CNN
F 3 "" H 1850 6500 50  0001 C CNN
	1    1850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6900 1850 6900
Text GLabel 2300 6900 2    50   Input ~ 0
D6
Connection ~ 1850 6900
Text GLabel 4900 4400 1    50   Input ~ 0
D7
Text GLabel 5000 4400 1    50   Input ~ 0
D6
Wire Wire Line
	4700 3600 4700 4400
Wire Wire Line
	4500 3600 4500 4400
Wire Wire Line
	4600 4250 4600 4400
Wire Wire Line
	4800 4250 4800 4400
$Comp
L power:GND #PWR?
U 1 1 63121D7D
P 4200 6500
F 0 "#PWR?" H 4200 6250 50  0001 C CNN
F 1 "GND" V 4205 6372 50  0000 R CNN
F 2 "" H 4200 6500 50  0001 C CNN
F 3 "" H 4200 6500 50  0001 C CNN
	1    4200 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63121E38
P 4200 6700
F 0 "#PWR?" H 4200 6550 50  0001 C CNN
F 1 "+5V" V 4215 6828 50  0000 L CNN
F 2 "" H 4200 6700 50  0001 C CNN
F 3 "" H 4200 6700 50  0001 C CNN
	1    4200 6700
	0    1    1    0   
$EndComp
Text GLabel 4200 6600 2    50   Input ~ 0
A0
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 63121F70
P 4000 7000
F 0 "J?" H 4027 7026 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4027 6935 50  0000 L CNN
F 2 "" H 4000 7000 50  0001 C CNN
F 3 "~" H 4000 7000 50  0001 C CNN
	1    4000 7000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63121F77
P 4200 6900
F 0 "#PWR?" H 4200 6650 50  0001 C CNN
F 1 "GND" V 4205 6772 50  0000 R CNN
F 2 "" H 4200 6900 50  0001 C CNN
F 3 "" H 4200 6900 50  0001 C CNN
	1    4200 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63121F7D
P 4200 7100
F 0 "#PWR?" H 4200 6950 50  0001 C CNN
F 1 "+5V" V 4215 7228 50  0000 L CNN
F 2 "" H 4200 7100 50  0001 C CNN
F 3 "" H 4200 7100 50  0001 C CNN
	1    4200 7100
	0    1    1    0   
$EndComp
Text GLabel 4200 7000 2    50   Input ~ 0
A0
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 63121FF2
P 4000 7350
F 0 "J?" H 4027 7376 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4027 7285 50  0000 L CNN
F 2 "" H 4000 7350 50  0001 C CNN
F 3 "~" H 4000 7350 50  0001 C CNN
	1    4000 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63121FF9
P 4200 7250
F 0 "#PWR?" H 4200 7000 50  0001 C CNN
F 1 "GND" V 4205 7122 50  0000 R CNN
F 2 "" H 4200 7250 50  0001 C CNN
F 3 "" H 4200 7250 50  0001 C CNN
	1    4200 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63121FFF
P 4200 7450
F 0 "#PWR?" H 4200 7300 50  0001 C CNN
F 1 "+5V" V 4215 7578 50  0000 L CNN
F 2 "" H 4200 7450 50  0001 C CNN
F 3 "" H 4200 7450 50  0001 C CNN
	1    4200 7450
	0    1    1    0   
$EndComp
Text GLabel 4200 7350 2    50   Input ~ 0
A0
Text GLabel 5000 5400 3    50   Input ~ 0
A0
$Comp
L Device:LED D?
U 1 1 6312243C
P 6650 3400
F 0 "D?" H 6642 3145 50  0000 C CNN
F 1 "rd." H 6642 3236 50  0000 C CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "~" H 6650 3400 50  0001 C CNN
	1    6650 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 631229C3
P 6350 3400
F 0 "R?" V 6143 3400 50  0000 C CNN
F 1 "470R" V 6234 3400 50  0000 C CNN
F 2 "" V 6280 3400 50  0001 C CNN
F 3 "~" H 6350 3400 50  0001 C CNN
	1    6350 3400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 63122D60
P 6650 3800
F 0 "D?" H 6642 3545 50  0000 C CNN
F 1 "ru." H 6642 3636 50  0000 C CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "~" H 6650 3800 50  0001 C CNN
	1    6650 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63122D67
P 6350 3800
F 0 "R?" V 6143 3800 50  0000 C CNN
F 1 "470R" V 6234 3800 50  0000 C CNN
F 2 "" V 6280 3800 50  0001 C CNN
F 3 "~" H 6350 3800 50  0001 C CNN
	1    6350 3800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 63122DC0
P 6650 4200
F 0 "D?" H 6642 3945 50  0000 C CNN
F 1 "ze." H 6642 4036 50  0000 C CNN
F 2 "" H 6650 4200 50  0001 C CNN
F 3 "~" H 6650 4200 50  0001 C CNN
	1    6650 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 63122DC7
P 6350 4200
F 0 "R?" V 6143 4200 50  0000 C CNN
F 1 "470R" V 6234 4200 50  0000 C CNN
F 2 "" V 6280 4200 50  0001 C CNN
F 3 "~" H 6350 4200 50  0001 C CNN
	1    6350 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63122EEE
P 7000 4350
F 0 "#PWR?" H 7000 4100 50  0001 C CNN
F 1 "GND" H 7005 4177 50  0000 C CNN
F 2 "" H 7000 4350 50  0001 C CNN
F 3 "" H 7000 4350 50  0001 C CNN
	1    7000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4350 7000 4200
Wire Wire Line
	7000 3400 6800 3400
Wire Wire Line
	6800 3800 7000 3800
Connection ~ 7000 3800
Wire Wire Line
	7000 3800 7000 3400
Wire Wire Line
	6800 4200 7000 4200
Connection ~ 7000 4200
Wire Wire Line
	7000 4200 7000 3800
Wire Wire Line
	6200 4200 5400 4200
Wire Wire Line
	5400 4200 5400 4400
Wire Wire Line
	6200 3800 5300 3800
Wire Wire Line
	5300 3800 5300 4400
Wire Wire Line
	6200 3400 5200 3400
Wire Wire Line
	5200 3400 5200 4400
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 63123635
P 8500 800
F 0 "J?" V 8440 612 50  0000 R CNN
F 1 "Conn_01x02_Female" V 8349 612 50  0000 R CNN
F 2 "" H 8500 800 50  0001 C CNN
F 3 "~" H 8500 800 50  0001 C CNN
	1    8500 800 
	0    -1   -1   0   
$EndComp
$Comp
L Relay:AZ850-x K?
U 1 1 6312624A
P 9000 1600
F 0 "K?" H 9630 1646 50  0000 L CNN
F 1 "AZ850-x" H 9630 1555 50  0000 L CNN
F 2 "Relay_THT:Relay_DPDT_FRT5" H 9550 1650 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" H 8800 1600 50  0001 C CNN
	1    9000 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 1000 8500 1150
Wire Wire Line
	8500 1150 8000 1150
Wire Wire Line
	8000 1150 8000 2100
Wire Wire Line
	8000 2100 8500 2100
Wire Wire Line
	8500 2100 8500 1900
Wire Wire Line
	8600 1000 8600 1300
$Comp
L Device:D D?
U 1 1 6312737D
P 9900 1600
F 0 "D?" V 9854 1679 50  0000 L CNN
F 1 "D" V 9945 1679 50  0000 L CNN
F 2 "" H 9900 1600 50  0001 C CNN
F 3 "~" H 9900 1600 50  0001 C CNN
	1    9900 1600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 63127735
P 10700 1600
F 0 "D?" V 10738 1483 50  0000 R CNN
F 1 "LED" V 10647 1483 50  0000 R CNN
F 2 "" H 10700 1600 50  0001 C CNN
F 3 "~" H 10700 1600 50  0001 C CNN
	1    10700 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 63127818
P 10300 1950
F 0 "R?" V 10093 1950 50  0000 C CNN
F 1 "R" V 10184 1950 50  0000 C CNN
F 2 "" V 10230 1950 50  0001 C CNN
F 3 "~" H 10300 1950 50  0001 C CNN
	1    10300 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 631278BB
P 8950 2350
F 0 "R?" V 8743 2350 50  0000 C CNN
F 1 "R" V 8834 2350 50  0000 C CNN
F 2 "" V 8880 2350 50  0001 C CNN
F 3 "~" H 8950 2350 50  0001 C CNN
	1    8950 2350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC107 Q?
U 1 1 63127BEE
P 9300 2350
F 0 "Q?" H 9490 2304 50  0000 L CNN
F 1 "BC107" H 9490 2395 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-18-3" H 9500 2275 50  0001 L CIN
F 3 "http://www.b-kainka.de/Daten/Transistor/BC108.pdf" H 9300 2350 50  0001 L CNN
	1    9300 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63128671
P 9400 2550
F 0 "#PWR?" H 9400 2300 50  0001 C CNN
F 1 "GND" H 9405 2377 50  0000 C CNN
F 2 "" H 9400 2550 50  0001 C CNN
F 3 "" H 9400 2550 50  0001 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 631286D9
P 10700 800
F 0 "#PWR?" H 10700 650 50  0001 C CNN
F 1 "+5V" H 10715 973 50  0000 C CNN
F 2 "" H 10700 800 50  0001 C CNN
F 3 "" H 10700 800 50  0001 C CNN
	1    10700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1900 9400 1950
Wire Wire Line
	9400 1300 9400 1200
Wire Wire Line
	9400 1200 9900 1200
Wire Wire Line
	10700 1200 10700 800 
Wire Wire Line
	10700 1450 10700 1200
Connection ~ 10700 1200
Wire Wire Line
	9900 1450 9900 1200
Connection ~ 9900 1200
Wire Wire Line
	9900 1200 10700 1200
Wire Wire Line
	9900 1750 9900 1950
Wire Wire Line
	9900 1950 9400 1950
Connection ~ 9400 1950
Wire Wire Line
	9400 1950 9400 2150
Wire Wire Line
	10700 1750 10700 1950
Wire Wire Line
	10700 1950 10450 1950
Wire Wire Line
	10150 1950 9900 1950
Connection ~ 9900 1950
$EndSCHEMATC
