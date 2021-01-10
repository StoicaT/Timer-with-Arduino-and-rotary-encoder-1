EESchema Schematic File Version 4
LIBS:Timer Arduino and rotary encoder-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Timer with Arduiuno and rotary encoder"
Date "19 Ian 2019"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 5C4076DB
P 4050 3350
F 0 "A1" H 4050 3550 50  0000 C CNN
F 1 "Arduino_Nano" H 4100 3450 50  0000 C CNN
F 2 "Module:Arduino_Nano_WithMountingHoles" H 4200 2400 50  0001 L CNN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 4050 2350 50  0001 C CNN
	1    4050 3350
	-1   0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 5C40779A
P 5700 3550
F 0 "DS1" H 5800 3500 50  0000 C CNN
F 1 "WC1602A" H 5800 3350 50  0000 C CNN
F 2 "Display:WC1602A" H 5700 2650 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 6400 3550 50  0001 C CNN
	1    5700 3550
	1    0    0    1   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5C40782B
P 2200 3200
F 0 "SW1" H 2100 3350 50  0000 C CNN
F 1 "Rotary_Encoder" H 2200 3450 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2050 3360 50  0001 C CNN
F 3 "~" H 2200 3460 50  0001 C CNN
	1    2200 3200
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5C407E4C
P 7050 1950
F 0 "Q2" H 7241 1996 50  0000 L CNN
F 1 "BC547" H 7241 1905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7250 1875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7050 1950 50  0001 L CNN
	1    7050 1950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 5C407F5D
P 6650 1150
F 0 "D2" H 6800 1200 50  0000 C CNN
F 1 "1N4001" H 6650 1275 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6650 975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6650 1150 50  0001 C CNN
	1    6650 1150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5C408BB6
P 6400 1150
F 0 "D1" V 6391 1366 50  0000 C CNN
F 1 "LED Red" V 6250 1350 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6400 1150 50  0001 C CNN
F 3 "~" H 6400 1150 50  0001 C CNN
	1    6400 1150
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 5C4092E2
P 3750 6050
F 0 "SW2" H 3750 6335 50  0000 C CNN
F 1 "Memory" H 3750 6244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 3750 6050 50  0001 C CNN
F 3 "" H 3750 6050 50  0001 C CNN
	1    3750 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5C42F5F8
P 1400 4350
F 0 "BZ1" H 1553 4379 50  0000 L CNN
F 1 "Buzzer 5V" H 1553 4288 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 1375 4450 50  0001 C CNN
F 3 "~" V 1375 4450 50  0001 C CNN
	1    1400 4350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5C433B9F
P 1400 5250
F 0 "Q1" H 1591 5296 50  0000 L CNN
F 1 "BC547" H 1591 5205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1600 5175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 1400 5250 50  0001 L CNN
	1    1400 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 3250 4550 3250
Wire Wire Line
	5300 3150 4550 3150
Wire Wire Line
	5300 3050 4550 3050
Wire Wire Line
	5300 2950 4550 2950
Wire Wire Line
	5300 4150 4800 4150
Wire Wire Line
	4800 4150 4800 3850
Wire Wire Line
	4800 3850 4550 3850
Wire Wire Line
	4550 3950 5300 3950
$Comp
L power:GNDD #PWR06
U 1 1 5C437CCF
P 5200 4050
F 0 "#PWR06" H 5200 3800 50  0001 C CNN
F 1 "GNDD" V 5204 3940 50  0000 R CNN
F 2 "" H 5200 4050 50  0001 C CNN
F 3 "" H 5200 4050 50  0001 C CNN
	1    5200 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4050 5300 4050
Wire Wire Line
	1300 4450 1300 5050
$Comp
L Device:R_Small R1
U 1 1 5C432A3F
P 1850 5250
F 0 "R1" V 1650 5200 50  0000 L CNN
F 1 "15K" V 1750 5200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1850 5250 50  0001 C CNN
F 3 "~" H 1850 5250 50  0001 C CNN
	1    1850 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 5250 1750 5250
Wire Wire Line
	4650 5250 4650 3750
Wire Wire Line
	4650 3750 4550 3750
$Comp
L power:GNDD #PWR01
U 1 1 5C4331A0
P 1300 5550
F 0 "#PWR01" H 1300 5300 50  0001 C CNN
F 1 "GNDD" V 1304 5440 50  0000 R CNN
F 2 "" H 1300 5550 50  0001 C CNN
F 3 "" H 1300 5550 50  0001 C CNN
	1    1300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5450 1300 5550
Wire Wire Line
	3850 2250 3850 2350
$Comp
L Device:R_POT RV1
U 1 1 5C44AB54
P 6350 4150
F 0 "RV1" H 6250 4150 50  0000 R CNN
F 1 "5K" H 6250 4050 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-10-V10_Vertical" H 6350 4150 50  0001 C CNN
F 3 "~" H 6350 4150 50  0001 C CNN
	1    6350 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 4150 6200 4150
Wire Wire Line
	5700 4350 6350 4350
Wire Wire Line
	6350 4350 6350 4300
$Comp
L power:GNDD #PWR07
U 1 1 5C44B913
P 5700 2600
F 0 "#PWR07" H 5700 2350 50  0001 C CNN
F 1 "GNDD" V 5704 2490 50  0000 R CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 2600 5700 2750
Wire Wire Line
	6650 4350 6350 4350
Connection ~ 3850 2250
Connection ~ 6350 4350
$Comp
L power:GNDD #PWR03
U 1 1 5C4540CA
P 2550 3200
F 0 "#PWR03" H 2550 2950 50  0001 C CNN
F 1 "GNDD" V 2650 3150 50  0000 R CNN
F 2 "" H 2550 3200 50  0001 C CNN
F 3 "" H 2550 3200 50  0001 C CNN
	1    2550 3200
	0    -1   1    0   
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 5C454676
P 1900 3850
F 0 "#PWR02" H 1900 3600 50  0001 C CNN
F 1 "GNDD" H 2200 3800 50  0000 R CNN
F 2 "" H 1900 3850 50  0001 C CNN
F 3 "" H 1900 3850 50  0001 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3300 2800 3300
$Comp
L Device:C_Small C1
U 1 1 5C46051F
P 1700 3650
F 0 "C1" H 1600 3450 50  0000 L CNN
F 1 "470nF" H 1600 3350 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 1700 3650 50  0001 C CNN
F 3 "~" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C4605B7
P 2800 3750
F 0 "C3" H 2892 3796 50  0000 L CNN
F 1 "100nF" H 2892 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 2800 3750 50  0001 C CNN
F 3 "~" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C46066F
P 2550 3750
F 0 "C2" H 2300 3850 50  0000 L CNN
F 1 "100nF" H 2200 3750 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 2550 3750 50  0001 C CNN
F 3 "~" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3300 2800 3650
Connection ~ 2800 3300
Wire Wire Line
	2800 3850 2550 3850
Connection ~ 1900 3850
Wire Wire Line
	1700 3750 1700 3850
Wire Wire Line
	1700 3850 1900 3850
Wire Wire Line
	3550 3350 2900 3350
Wire Wire Line
	2900 3350 2900 3300
Wire Wire Line
	2900 3300 2800 3300
Wire Wire Line
	3550 3450 3200 3450
Wire Wire Line
	2550 3450 2550 3650
Connection ~ 2550 3850
Wire Wire Line
	1900 3850 2550 3850
Wire Wire Line
	1900 3100 1700 3100
Wire Wire Line
	3300 4050 3300 3550
Wire Wire Line
	3300 3550 3550 3550
Wire Wire Line
	3300 4050 1550 4050
Wire Wire Line
	1550 4050 1550 3100
Wire Wire Line
	3550 3650 3450 3650
Wire Wire Line
	3450 6050 3550 6050
$Comp
L power:GNDD #PWR05
U 1 1 5C480056
P 4150 5950
F 0 "#PWR05" H 4150 5700 50  0001 C CNN
F 1 "GNDD" V 4154 5840 50  0000 R CNN
F 2 "" H 4150 5950 50  0001 C CNN
F 3 "" H 4150 5950 50  0001 C CNN
	1    4150 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 5950 4150 5950
Wire Wire Line
	4550 3650 4800 3650
Wire Wire Line
	4800 3650 4800 1950
Wire Wire Line
	4800 1950 6300 1950
$Comp
L Device:R_Small R3
U 1 1 5C48A533
P 6400 1950
F 0 "R3" V 6200 1900 50  0000 L CNN
F 1 "15K" V 6300 1900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6400 1950 50  0001 C CNN
F 3 "~" H 6400 1950 50  0001 C CNN
	1    6400 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 1950 6850 1950
Wire Wire Line
	1950 5250 4650 5250
$Comp
L power:GNDD #PWR010
U 1 1 5C48CDFA
P 7150 2250
F 0 "#PWR010" H 7150 2000 50  0001 C CNN
F 1 "GNDD" H 7250 2100 50  0000 R CNN
F 2 "" H 7150 2250 50  0001 C CNN
F 3 "" H 7150 2250 50  0001 C CNN
	1    7150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2250 7150 2150
$Comp
L Relay:DIPxx-1Cxx-51x K1
U 1 1 5C48F29E
P 7350 1300
F 0 "K1" H 7450 1950 50  0000 L CNN
F 1 "Rel 12V" H 7350 1850 50  0000 L CNN
F 2 "Relay_THT:Rel 12V" H 7800 1250 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1600 7150 1650
Wire Wire Line
	6650 1000 7150 1000
Wire Wire Line
	6650 1650 7150 1650
Wire Wire Line
	6650 1300 6650 1650
Connection ~ 7150 1650
Wire Wire Line
	7150 1650 7150 1750
Wire Wire Line
	8100 2200 7550 2200
Wire Wire Line
	7550 2200 7550 1600
Wire Wire Line
	7650 1000 8100 1000
$Comp
L Device:R_Small R2
U 1 1 5C4AA68A
P 6400 1500
F 0 "R2" H 6600 1450 50  0000 L CNN
F 1 "1K/0,5W" H 6450 1550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6400 1500 50  0001 C CNN
F 3 "~" H 6400 1500 50  0001 C CNN
	1    6400 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 1600 6400 1650
Wire Wire Line
	6400 1650 6650 1650
Connection ~ 6650 1650
Wire Wire Line
	6400 1300 6400 1400
Wire Wire Line
	6400 1000 6650 1000
Connection ~ 6650 1000
$Comp
L Connector:Barrel_Jack_Switch_MountingPin J2
U 1 1 5C4B71AF
P 9000 3400
F 0 "J2" H 9000 3650 50  0000 R CNN
F 1 "+12V" H 8750 3500 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 9050 3360 50  0001 C CNN
F 3 "~" H 9050 3360 50  0001 C CNN
	1    9000 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 2350 4150 1000
Wire Wire Line
	4150 1000 6400 1000
Connection ~ 6400 1000
Wire Wire Line
	6400 1000 6400 800 
Wire Wire Line
	6400 800  8700 800 
Wire Wire Line
	8700 800  8700 2400
Wire Wire Line
	8700 3400 8700 3500
Wire Wire Line
	8700 3500 8700 3800
Connection ~ 8700 3500
$Comp
L power:GNDD #PWR011
U 1 1 5C4C75A3
P 8700 3800
F 0 "#PWR011" H 8700 3550 50  0001 C CNN
F 1 "GNDD" H 8800 3650 50  0000 R CNN
F 2 "" H 8700 3800 50  0001 C CNN
F 3 "" H 8700 3800 50  0001 C CNN
	1    8700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 5C4CA9F9
P 6200 3750
F 0 "#PWR08" H 6200 3500 50  0001 C CNN
F 1 "GNDD" H 6300 3600 50  0000 R CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
	1    6200 3750
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5C4CFB39
P 6500 3850
F 0 "R4" V 6300 3800 50  0000 L CNN
F 1 "220" V 6400 3750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6500 3850 50  0001 C CNN
F 3 "~" H 6500 3850 50  0001 C CNN
	1    6500 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3850 6650 3850
Wire Wire Line
	2500 3200 2550 3200
Wire Wire Line
	3200 3100 3200 3450
Wire Wire Line
	2500 3100 3200 3100
Wire Wire Line
	3200 3450 2550 3450
Connection ~ 3200 3450
Text Notes 3900 5900 0    50   ~ 0
ON
Text Notes 3900 6300 0    50   ~ 0
OFF
Wire Wire Line
	1700 3550 1700 3100
Connection ~ 1700 3100
Wire Wire Line
	1700 3100 1550 3100
NoConn ~ 4550 4050
NoConn ~ 4550 3550
NoConn ~ 4550 3450
NoConn ~ 4550 3350
NoConn ~ 4550 2750
NoConn ~ 4550 2850
NoConn ~ 3550 2750
NoConn ~ 3550 2850
NoConn ~ 3550 3150
NoConn ~ 3550 3750
NoConn ~ 3550 3850
NoConn ~ 3550 3950
NoConn ~ 3550 4050
NoConn ~ 7450 1000
NoConn ~ 3950 6150
NoConn ~ 9000 3700
NoConn ~ 3950 2350
NoConn ~ 5300 3350
NoConn ~ 5300 3450
NoConn ~ 5300 3550
NoConn ~ 5300 3650
$Comp
L power:GNDD #PWR09
U 1 1 5C4B94A8
P 6350 3950
F 0 "#PWR09" H 6350 3700 50  0001 C CNN
F 1 "GNDD" H 6350 3850 50  0001 R CNN
F 2 "" H 6350 3950 50  0001 C CNN
F 3 "" H 6350 3950 50  0001 C CNN
	1    6350 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 2400 8700 2400
Connection ~ 8700 2400
Wire Wire Line
	8700 2400 8700 3300
$Comp
L power:GNDD #PWR04
U 1 1 5C4D0DC9
P 4050 4550
F 0 "#PWR04" H 4050 4300 50  0001 C CNN
F 1 "GNDD" V 4054 4440 50  0000 R CNN
F 2 "" H 4050 4550 50  0001 C CNN
F 3 "" H 4050 4550 50  0001 C CNN
	1    4050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4350 4050 4500
Wire Wire Line
	3950 4350 3950 4500
Wire Wire Line
	3950 4500 4050 4500
Connection ~ 4050 4500
Wire Wire Line
	4050 4500 4050 4550
Wire Wire Line
	6100 3750 6200 3750
Wire Wire Line
	6350 3950 6350 4000
Wire Wire Line
	3850 2250 6650 2250
Wire Wire Line
	6650 2250 6650 3850
Connection ~ 6650 3850
Wire Wire Line
	6650 3850 6650 4350
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5C4C6068
P 9050 2400
F 0 "#FLG03" H 9050 2475 50  0001 C CNN
F 1 "PWR_FLAG" V 9050 2528 50  0000 L CNN
F 2 "" H 9050 2400 50  0001 C CNN
F 3 "~" H 9050 2400 50  0001 C CNN
	1    9050 2400
	0    1    1    0   
$EndComp
Connection ~ 6350 3950
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C508E45
P 6350 3950
F 0 "#FLG02" H 6350 4025 50  0001 C CNN
F 1 "PWR_FLAG" V 6300 3400 50  0000 C CNN
F 2 "" H 6350 3950 50  0001 C CNN
F 3 "~" H 6350 3950 50  0001 C CNN
	1    6350 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3850 6400 3850
Wire Wire Line
	6100 3850 6300 3850
Connection ~ 6300 3850
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C52CE6D
P 6300 3850
F 0 "#FLG01" H 6300 3925 50  0001 C CNN
F 1 "PWR_FLAG" H 6900 3850 50  0000 C CNN
F 2 "" H 6300 3850 50  0001 C CNN
F 3 "~" H 6300 3850 50  0001 C CNN
	1    6300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2250 3850 2250
Wire Wire Line
	1900 3300 1900 3850
Wire Wire Line
	3450 3650 3450 6050
Wire Wire Line
	1300 2250 1300 4250
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5D5EE5DC
P 8300 2000
F 0 "J1" H 8250 1600 50  0000 L CNN
F 1 "Conn_01x05" H 8100 1500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 8300 2000 50  0001 C CNN
F 3 "~" H 8300 2000 50  0001 C CNN
	1    8300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1000 8100 1800
Wire Wire Line
	8100 1800 8100 1900
Connection ~ 8100 1800
Wire Wire Line
	8100 2100 8100 2200
Connection ~ 8100 2200
NoConn ~ 8100 2000
$EndSCHEMATC
