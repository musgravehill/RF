<Qucs Schematic 0.0.19>
<Properties>
  <View=-64,-194,1903,910,1.1,70,180>
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
  <Pac P1 1 80 490 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "5.6 GHz" 0 "26.85" 0>
  <GND * 1 80 520 0 0 0 0>
  <Pac P2 1 590 520 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "5.6 GHz" 0 "26.85" 0>
  <GND * 1 590 550 0 0 0 0>
  <GND * 1 150 170 0 0 0 0>
  <SPfile ggg 1 400 180 -26 -41 0 0 "D:/RF/HFSS/DETECTOR/S2P/SERIES.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 400 250 0 0 0 0>
  <SPfile scheme1 1 150 140 -26 -59 0 0 "D:/RF/HFSS/DETECTOR/S2P/2port-sma.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <R R1 1 270 180 -26 15 0 0 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <SPfile diode 1 480 360 -26 -41 0 0 "D:/RF/HFSS/DETECTOR/S2P/ONEPORT.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <GND * 1 480 390 0 0 0 0>
  <SPfile SMAMS 1 190 330 -26 -41 0 0 "D:/RF/HFSS/DETECTOR/S2P/SMA-MS/longSmaToPCBgap0mm.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <R R2 1 300 360 -26 15 0 0 "56 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <400 210 400 250 "" 0 0 0 "">
  <300 180 370 180 "" 0 0 0 "">
  <180 140 180 180 "" 0 0 0 "">
  <180 180 240 180 "" 0 0 0 "">
  <430 180 600 180 "" 0 0 0 "">
  <330 360 450 360 "" 0 0 0 "">
  <190 360 270 360 "" 0 0 0 "">
  <80 330 80 460 "" 0 0 0 "">
  <80 330 160 330 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 112 690 447 241 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 51 315 0 225 "" "" "">
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
  <Text 630 150 14 #ff007f 0 "diodeSerias.s2p & strips.s2p были измерены \nв 2х-портовой конфигурации 2 порта по 50 Ом, \nпоэтому друг с другом они согласованы?">
</Paintings>
