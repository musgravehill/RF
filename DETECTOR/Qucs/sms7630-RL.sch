<Qucs Schematic 0.0.19>
<Properties>
  <View=-278,-584,1458,1509,0.909097,117,1015>
  <Grid=10,10,1>
  <DataSet=sms7630-RL.dat>
  <DataDisplay=sms7630-RL.dpl>
  <OpenDisplay=1>
  <Script=sms7630-RL.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Название>
  <FrameText1=Чертил:>
  <FrameText2=Дата:>
  <FrameText3=Версия:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <MLIN SMA50R 1 10 160 -26 -91 0 2 "FR4" 1 "Sw" 1 "Sl" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS4 0 740 190 15 -26 0 1 "FR4" 1 "0.3 mm" 1 "22 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <GND * 1 790 350 0 0 0 0>
  <R R4 1 720 320 15 -26 0 1 "100kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 850 320 17 -26 0 1 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 450 210 0 0 0 0>
  <SPfile X6 1 450 160 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/SERIES.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <MRSTUB MS3 1 610 240 14 -18 0 1 "FR4" 1 "0.3 mm" 0 "7mm" 1 "90" 1>
  <GND * 1 -60 480 0 0 0 0>
  <Pac P1 1 -60 420 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <Pac P2 1 1140 240 -74 -26 1 1 "2" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <GND * 1 1140 300 0 0 0 0>
  <VProbe Pr1 1 1060 320 -16 28 0 3>
  <C C3 1 940 320 17 -26 0 1 "100 pF" 1 "" 0 "neutral" 0>
  <SUBST FR4 1 -40 -520 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "2e-08" 1 "0" 1>
  <.DC DC1 0 140 -530 0 69 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SP SPTC1 1 320 -540 0 69 0 0 "lin" 1 "5600 MHz" 1 "5800 MHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.AC AC1 1 490 -530 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "100" 1 "no" 0>
  <Diode SMS7630datasheet1 0 1000 -380 -26 -91 0 2 "5e-6 A" 1 "1.05" 1 "1.4e-13F" 1 "0.4" 0 "0.34 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "20 Ohm" 0 "1e-11s" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1e-4mA" 0 "26.85" 0 "2" 0 "0.69" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "27" 0 "1.0" 0 "Schottky" 0>
  <SPfile X7 0 1000 -330 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <Eqn Eqn2 1 120 -290 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <Eqn Eqn1 1 -40 -290 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "dBS21=dB(S[2,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <MLIN G 1 110 290 15 -26 0 1 "FR4" 1 "Gw" 1 "Gl" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MVIA MS6 1 130 360 20 0 0 0 "FR4" 1 "0.8 mm" 1 "26.85" 0>
  <.Opt Opt1 0 550 -190 0 42 0 0 "Sim=SPTC1" 0 "DE=3|1000|2|20|0.44|1|3|1e-8|10|100" 0 "Var=Ow|yes|2.388919E-003|0.0003|0.003|LIN_DOUBLE" 0 "Var=Ol|yes|2.724785E-002|0.003|0.04|LIN_DOUBLE" 0 "Var=Gw|yes|5.751866E-004|0.0003|0.003|LIN_DOUBLE" 0 "Var=Gl|yes|1.737841E-002|0.003|0.04|LIN_DOUBLE" 0 "Var=Sl|yes|7.434812E-003|0.003|0.04|LIN_DOUBLE" 0 "Var=Sw|yes|1.082723E-003|0.0003|0.003|LIN_DOUBLE" 0 "Var=SSl|yes|1.503887E-002|0.003|0.04|LIN_DOUBLE" 0 "Var=SSw|yes|1.055113E-003|0.0003|0.003|LIN_DOUBLE" 0 "Goal=SWR|LE|4" 0>
  <MLIN SMA50R1 1 290 160 -26 -91 0 2 "FR4" 1 "SSw" 1 "SSl" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS7 1 110 160 -26 -110 0 0 "FR4" 1 "Sw" 1 "SSw" 1 "Gw" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN SMA50R2 2 -60 270 -94 -26 0 3 "FR4" 1 "1.55 mm" 1 "120mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn OptValues1 1 230 810 -28 15 0 0 "Sw=2e-3" 1 "Sl=20e-3" 1 "Gw=0.8e-3" 1 "Gl=32e-3" 1 "SSw=0.56e-3" 1 "SSl=15.3e-3" 1 "yes" 0>
  <.SW SW1 0 -60 790 0 69 0 0 "SPTC1" 1 "lin" 1 "W" 1 "0.2e-3" 1 "4e-3" 1 "50" 0>
  <Eqn Eqn3 0 540 1230 -28 15 0 0 "SWR_vs_L=PlotVs(SWR,L)" 1 "yes" 0>
  <.SW SW2 0 60 790 0 69 0 0 "SPTC1" 1 "lin" 1 "L" 1 "20e-3" 1 "14e-3" 1 "1000" 0>
</Components>
<Wires>
  <790 350 850 350 "" 0 0 0 "">
  <720 350 790 350 "" 0 0 0 "">
  <720 290 740 290 "" 0 0 0 "">
  <740 290 850 290 "" 0 0 0 "">
  <740 220 740 290 "" 0 0 0 "">
  <850 350 940 350 "" 0 0 0 "">
  <850 290 940 290 "" 0 0 0 "">
  <450 190 450 210 "" 0 0 0 "">
  <620 160 620 240 "" 0 0 0 "">
  <620 160 740 160 "" 0 0 0 "">
  <-60 160 -20 160 "" 0 0 0 "">
  <-60 160 -60 240 "" 0 0 0 "">
  <-60 450 -60 480 "" 0 0 0 "">
  <1140 270 1140 300 "" 0 0 0 "">
  <1040 330 1040 350 "" 0 0 0 "">
  <1040 290 1040 310 "" 0 0 0 "">
  <940 350 1040 350 "" 0 0 0 "">
  <940 290 1040 290 "" 0 0 0 "">
  <740 160 1140 160 "" 0 0 0 "">
  <1140 160 1140 210 "" 0 0 0 "">
  <110 320 110 360 "" 0 0 0 "">
  <320 160 420 160 "" 0 0 0 "">
  <40 160 80 160 "" 0 0 0 "">
  <110 190 110 260 "" 0 0 0 "">
  <140 160 260 160 "" 0 0 0 "">
  <-60 300 -60 390 "" 0 0 0 "">
  <480 160 620 160 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab -97 754 414 225 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 10000 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 1 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
	<"dBS21" #0000ff 0 3 1 0 0>
  </Tab>
  <Smith 389 1148 608 608 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff0000 4 3 0 0 0>
  </Smith>
  <Rect -100 1433 456 409 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"SWR_vs_L" #0000ff 3 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
