<Qucs Schematic 0.0.19>
<Properties>
  <View=-244,-594,1437,657,0.751315,45,120>
  <Grid=10,10,1>
  <DataSet=sms7630.dat>
  <DataDisplay=sms7630.dpl>
  <OpenDisplay=1>
  <Script=sms7630.m>
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
  <GND * 1 100 -190 0 0 0 0>
  <GND * 1 -100 -190 0 0 0 0>
  <.DC DC1 1 450 -320 0 67 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn2 1 790 -520 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <Eqn Eqn1 1 990 -520 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "ZofS22=rtoz(S[2,2])" 1 "yes" 0>
  <Pac P1 1 -100 -300 -74 -26 1 1 "1" 1 "50 Ohm" 1 "-10dBm" 0 "6GHz" 1 "26.85" 0>
  <Pac P2 1 100 -290 -74 -26 1 1 "2" 1 "50 Ohm" 1 "-10dBm" 0 "6GHz" 1 "26.85" 0>
  <SPfile X2 1 0 -390 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/ANTENNA/DETECTOR/Qucs/S2P/SERIES.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 0 -360 0 0 0 0>
  <.SP SP1 1 450 -200 0 69 0 0 "lin" 1 "1 GHz" 1 "6 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST FR1 1 640 -530 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "0.022e-6" 1 "1.4e-6" 1>
</Components>
<Wires>
  <100 -260 100 -190 "" 0 0 0 "">
  <-100 -270 -100 -190 "" 0 0 0 "">
  <30 -390 30 -320 "" 0 0 0 "">
  <30 -320 100 -320 "" 0 0 0 "">
  <-100 -390 -100 -330 "" 0 0 0 "">
  <-100 -390 -30 -390 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 570 578 585 585 3 #0055ff 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[2,2]" #ff0000 1 3 0 0 0>
	<"S[1,1]" #aa007f 2 3 0 0 0>
  </Smith>
  <Tab -192 418 548 518 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 50 315 0 225 "" "" "">
	<"S[2,2]" #0000ff 0 3 1 0 0>
	<"ZofS22" #0000ff 0 3 0 0 0>
	<"ZofS11" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
