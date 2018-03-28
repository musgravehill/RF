<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-144,1903,910,1.1,267,300>
  <Grid=10,10,1>
  <DataSet=detector.dat>
  <DataDisplay=detector.dpl>
  <OpenDisplay=1>
  <Script=detector.m>
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
  <Eqn Eqn1 1 570 610 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <GND * 1 80 350 0 0 0 0>
  <Pac P1 1 80 320 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "5.6 GHz" 0 "26.85" 0>
  <GND * 1 170 250 0 0 0 0>
  <SUBST SubstTC1 1 220 -80 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0" 1 "2.43902e-08" 1 "0" 1>
  <.SP SPTC1 1 370 -110 0 64 0 0 "lin" 1 "5.6 GHz" 1 "5.9 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P2 1 670 300 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "5.6 GHz" 0 "26.85" 0>
  <GND * 1 670 380 0 0 0 0>
  <Eqn Eqn2 1 380 610 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "dBS21=dB(S[2,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <MLIN MS1 2 80 230 15 -26 0 1 "SubstTC1" 1 "1.55 mm" 1 "100 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <SPfile scheme 1 170 160 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/HFSS/DETECTOR/S2P/no_22r_no_pad/sma-noR-noPad.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X1 1 430 240 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/HFSS/DETECTOR/S2P/ONEPORT.s1p" 1 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <SPfile scheme1 1 540 240 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/HFSS/DETECTOR/S2P/SERIES.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 430 270 0 0 0 0>
  <R R1 1 310 240 -26 15 0 0 "22 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <670 330 670 380 "" 0 0 0 "">
  <170 190 170 250 "" 0 0 0 "">
  <80 160 80 200 "" 0 0 0 "">
  <80 160 140 160 "" 0 0 0 "">
  <200 160 200 240 "" 0 0 0 "">
  <200 240 280 240 "" 0 0 0 "">
  <80 260 80 290 "" 0 0 0 "">
  <340 240 400 240 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 142 570 447 241 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 51 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 0 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
	<"dBS21" #0000ff 0 3 0 0 0>
  </Tab>
  <Smith 775 850 440 440 3 #c0c0c0 1 00 1 0 1 1 1 0 4 35.0613 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff007f 4 3 0 0 0>
  </Smith>
</Diagrams>
<Paintings>
  <Text 800 260 14 #ff007f 0 "diodeSerias.s2p & strips.s2p были измерены \nв 2х-портовой конфигурации, поэтому \nих нужно моделировать, используя 2 порта. ">
</Paintings>
