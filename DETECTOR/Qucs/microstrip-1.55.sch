<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-24,864,621,1,0,0>
  <Grid=10,10,1>
  <DataSet=microstrip-1.55.dat>
  <DataDisplay=microstrip-1.55.dpl>
  <OpenDisplay=1>
  <Script=microstrip-1.55.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 390 200 0 0 0 0>
  <SUBST SubstTC1 1 740 100 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "1.25e-08" 1 "0" 1>
  <Eqn EqnTC1 1 360 270 -23 12 0 0 "A=twoport(S,'S','A')" 1 "ZL=real(sqrt(A[1,2]/A[2,1]))" 1 "yes" 0>
  <Pac P2 1 390 150 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P1 1 130 150 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 130 190 0 0 0 0>
  <.SP SPTC1 1 120 270 0 63 0 0 "log" 1 "1 GHz" 1 "6GHz" 1 "51" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <MLIN MSTC1 1 280 80 15 -26 0 1 "SubstTC1" 1 "1.55655 mm" 1 "7.8 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS1 1 490 -10 -26 15 0 0 "SubstTC1" 1 "1.55 mm" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
</Components>
<Wires>
  <390 180 390 200 "" 0 0 0 "">
  <390 110 390 120 "" 0 0 0 "">
  <280 110 390 110 "" 0 0 0 "">
  <130 110 130 120 "" 0 0 0 "">
  <130 180 130 190 "" 0 0 0 "">
  <130 110 280 110 "" 0 0 0 "">
  <280 50 460 50 "" 0 0 0 "">
  <460 -10 460 50 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 380 580 300 200 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 51 315 0 225 "" "" "">
	<"ZL" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
