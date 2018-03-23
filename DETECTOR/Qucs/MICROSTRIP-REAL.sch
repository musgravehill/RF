<Qucs Schematic 0.0.19>
<Properties>
  <View=-63,-144,1458,985,0.683014,0,0>
  <Grid=10,10,1>
  <DataSet=MICROSTRIP-REAL.dat>
  <DataDisplay=MICROSTRIP-REAL.dpl>
  <OpenDisplay=1>
  <Script=MICROSTRIP-REAL.m>
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
  <Pac P1 1 1060 -50 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 1240 -50 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 1060 -20 0 0 0 0>
  <GND * 1 1240 -20 0 0 0 0>
  <MLIN MSTC1 1 1150 -100 -26 15 0 0 "SubstTC1" 1 "1.55 mm" 1 "10 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <SUBST SubstTC1 1 10 -70 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "2e-08" 1 "0" 1>
  <Eqn EqnTC1 1 820 -70 -23 12 0 0 "A=twoport(S,'S','A')" 1 "ZL=real(sqrt(A[1,2]/A[2,1]))" 1 "yes" 0>
  <.SP SPTC1 1 120 -110 0 67 0 0 "lin" 1 "5 GHz" 1 "6 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <1060 -100 1120 -100 "" 0 0 0 "">
  <1060 -100 1060 -80 "" 0 0 0 "">
  <1180 -100 1240 -100 "" 0 0 0 "">
  <1240 -100 1240 -80 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 802 301 534 268 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "">
	<"ZL" #0000ff 3 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
