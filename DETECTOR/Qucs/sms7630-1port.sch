<Qucs Schematic 0.0.19>
<Properties>
  <View=-214,-404,1195,808,0.683014,0,60>
  <Grid=10,10,1>
  <DataSet=sms7630-1port.dat>
  <DataDisplay=sms7630-1port.dpl>
  <OpenDisplay=1>
  <Script=sms7630-1port.m>
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
  <GND * 1 -100 -20 0 0 0 0>
  <.DC DC1 1 450 -150 0 67 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 790 -350 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <.SP SP1 1 450 -30 0 69 0 0 "lin" 1 "1 GHz" 1 "6 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SPfile X1 1 -60 -210 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/ANTENNA/DETECTOR/Qucs/S2P/ONEPORT.s1p" 1 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <SUBST FR1 1 610 -340 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "0.022e-6" 1 "1.4e-6" 1>
  <Pac P1 1 -100 -130 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0dBm" 0 "6GHz" 1 "26.85" 0>
  <GND * 1 -60 -120 0 0 0 0>
</Components>
<Wires>
  <-100 -100 -100 -20 "" 0 0 0 "">
  <-100 -210 -100 -160 "" 0 0 0 "">
  <-100 -210 -90 -210 "" 0 0 0 "">
  <-60 -180 -60 -120 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 570 748 585 585 3 #0055ff 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[2,2]" #ff0000 1 3 0 0 0>
	<"S[1,1]" #aa007f 2 3 0 0 0>
  </Smith>
  <Tab -192 588 548 518 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 50 315 0 225 "" "" "">
	<"S[2,2]" #0000ff 0 3 1 0 0>
	<"ZofS22" #0000ff 0 3 0 0 0>
	<"ZofS11" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
