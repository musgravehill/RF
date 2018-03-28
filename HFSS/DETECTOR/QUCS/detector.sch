<Qucs Schematic 0.0.19>
<Properties>
  <View=-64,-194,1903,910,1.1,70,240>
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
  <SUBST SubstTC1 1 220 -80 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0" 1 "2.43902e-08" 1 "0" 1>
  <.SP SPTC1 1 370 -110 0 64 0 0 "lin" 1 "5.6 GHz" 1 "5.9 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 800 -160 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <Eqn Eqn2 1 610 -160 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "dBS21=dB(S[2,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <L L1 2 240 340 -26 10 0 0 "0.7 nH" 1 "" 0>
  <Pac P1 1 50 410 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "5.6 GHz" 0 "26.85" 0>
  <GND * 1 50 490 0 0 0 0>
  <SPfile diode 1 490 200 -26 -41 0 0 "D:/RF/HFSS/DETECTOR/S2P/SERIES.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 490 230 0 0 0 0>
  <GND * 1 630 490 0 0 0 0>
  <Pac P2 1 590 400 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "5.6 GHz" 0 "26.85" 0>
  <SPfile X1 1 790 80 -26 -41 0 0 "D:/RF/HFSS/DETECTOR/S2P/ONEPORT.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <R R1 1 340 340 -26 15 0 0 "1.4 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 480 340 -26 17 0 0 "0.8 pF" 1 "" 0 "neutral" 0>
  <SPfile scheme 1 80 250 -26 -59 0 0 "D:/RF/HFSS/DETECTOR/S2P/no_22r_no_pad/sma-noR-noPad.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 80 280 0 0 0 0>
  <GND * 1 510 340 0 0 0 0>
</Components>
<Wires>
  <270 340 310 340 "" 0 0 0 "">
  <50 440 50 490 "" 0 0 0 "">
  <370 340 450 340 "" 0 0 0 "">
  <630 430 630 490 "" 0 0 0 "">
  <590 430 630 430 "" 0 0 0 "">
  <110 250 110 340 "" 0 0 0 "">
  <110 340 210 340 "" 0 0 0 "">
  <50 250 50 380 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 775 850 440 440 3 #c0c0c0 1 00 1 0 1 1 1 0 4 35.0613 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff007f 4 3 0 0 0>
  </Smith>
  <Tab 112 690 447 241 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 51 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 0 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
	<"dBS21" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 800 260 14 #ff007f 0 "diodeSerias.s2p & strips.s2p были измерены \nв 2х-портовой конфигурации, поэтому \nих нужно моделировать, используя 2 порта. ">
</Paintings>
