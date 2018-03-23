<Qucs Schematic 0.0.19>
<Properties>
  <View=-174,-514,1458,1407,0.826447,41,480>
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
  <MLIN MSTC1 1 60 190 15 -26 0 1 "FR4" 1 "1.55 mm" 1 "32.7mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MVIA MS1 1 80 270 20 0 0 0 "FR4" 1 "0.8 mm" 1 "26.85" 0>
  <.DC DC1 1 -10 -240 0 69 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SUBST FR4 1 30 -450 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "2e-08" 1 "0" 1>
  <.SP SPTC1 1 260 -230 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.AC AC1 1 520 -230 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "10" 1 "no" 0>
  <Eqn Eqn2 1 170 -40 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <R R3 1 200 160 -26 15 0 0 "22 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn3 0 350 -30 -28 15 0 0 "SWR_vs_L=PlotVs(SWR,L)" 1 "yes" 0>
  <.SW SW1 0 0 690 0 68 0 0 "SPTC1" 1 "lin" 1 "L" 1 "0.033" 1 "0.0342" 1 "50" 0>
  <Eqn Eqn1 1 10 -40 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "dBS21=dB(S[2,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <Diode SMS7630datasheet1 0 860 -80 -26 -91 0 2 "5e-6 A" 1 "1.05" 1 "1.4e-13F" 1 "0.4" 0 "0.34 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "20 Ohm" 0 "1e-11s" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1e-4mA" 0 "26.85" 0 "2" 0 "0.69" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "27" 0 "1.0" 0 "Schottky" 0>
  <GND * 1 270 190 0 0 0 0>
  <SPfile X5 0 570 10 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 1 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <MLIN MS5 1 360 160 -26 -91 0 2 "FR4" 1 "0.56 mm" 1 "0.56 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <SPfile X4 1 270 160 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/SERIES.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <MLIN MS4 1 580 190 15 -26 0 1 "FR4" 1 "0.3 mm" 1 "22 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <C C1 1 690 320 17 -26 0 1 "1 pF" 1 "" 0 "neutral" 0>
  <GND * 1 630 350 0 0 0 0>
  <R R4 1 560 320 15 -26 0 1 "100kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 870 330 0 0 0 0>
  <Pac P2 1 870 280 -74 -26 1 1 "2" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <GND * 1 -40 260 0 0 0 0>
  <Pac P1 1 -40 200 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <MLIN WIRESMA50R 2 10 160 -26 -91 0 2 "FR4" 1 "1.55 mm" 1 "80mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN WIRESMA50R1 1 120 160 -26 -91 0 2 "FR4" 1 "1.55 mm" 1 "0.1mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MRSTUB MS3 1 420 240 14 -18 0 1 "FR4" 1 "0.3 mm" 0 "4.4 mm" 1 "90" 1>
</Components>
<Wires>
  <60 220 60 270 "" 0 0 0 "">
  <60 160 90 160 "" 0 0 0 "">
  <230 160 240 160 "" 0 0 0 "">
  <430 160 580 160 "" 0 0 0 "">
  <430 160 430 240 "" 0 0 0 "">
  <300 160 330 160 "" 0 0 0 "">
  <390 160 430 160 "" 0 0 0 "">
  <630 350 690 350 "" 0 0 0 "">
  <560 350 630 350 "" 0 0 0 "">
  <560 290 580 290 "" 0 0 0 "">
  <580 290 690 290 "" 0 0 0 "">
  <580 220 580 290 "" 0 0 0 "">
  <580 160 870 160 "" 0 0 0 "">
  <870 160 870 250 "" 0 0 0 "">
  <870 310 870 330 "" 0 0 0 "">
  <-40 160 -20 160 "" 0 0 0 "">
  <-40 160 -40 170 "" 0 0 0 "">
  <-40 230 -40 260 "" 0 0 0 "">
  <40 160 60 160 "" 0 0 0 "">
  <150 160 170 160 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -12 1350 1150 422 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"SWR_vs_L" #0000ff 1 3 0 0 0>
  </Rect>
  <Tab -107 669 498 260 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 500 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 1 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
	<"dBS21" #0000ff 0 3 1 0 0>
  </Tab>
  <Smith 519 775 405 405 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff0000 4 3 0 0 0>
  </Smith>
</Diagrams>
<Paintings>
</Paintings>
