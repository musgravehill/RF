<Qucs Schematic 0.0.19>
<Properties>
  <View=-364,-584,1458,1081,1.00001,309,540>
  <Grid=10,10,1>
  <DataSet=v2.dat>
  <DataDisplay=v2.dpl>
  <OpenDisplay=1>
  <Script=v2.m>
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
  <SUBST FR4 1 -40 -520 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "2e-08" 1 "0" 1>
  <.DC DC1 0 140 -530 0 69 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SP SPTC1 1 320 -540 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.9 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.AC AC1 0 490 -530 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "100" 1 "no" 0>
  <Diode SMS7630datasheet1 0 1000 -380 -26 -91 0 2 "5e-6 A" 1 "1.05" 1 "1.4e-13F" 1 "0.4" 0 "0.34 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "20 Ohm" 0 "1e-11s" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1e-4mA" 0 "26.85" 0 "2" 0 "0.69" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "27" 0 "1.0" 0 "Schottky" 0>
  <MLIN G 1 110 290 15 -26 0 1 "FR4" 1 "Gw" 1 "Gl" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MVIA MS6 1 130 360 20 0 0 0 "FR4" 1 "0.8 mm" 1 "26.85" 0>
  <SPfile X8 0 800 -90 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/SERIES.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <MRSTUB MS3 0 670 -80 -93 -18 0 3 "FR4" 1 "0.3 mm" 0 "7mm" 1 "90" 1>
  <Eqn Eqn1 1 -40 -290 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <.SW SW1 0 -80 790 0 69 0 0 "SPTC1" 1 "lin" 1 "W" 1 "0.2e-3" 1 "4e-3" 1 "50" 0>
  <MLIN SM2 1 460 160 -26 -91 0 2 "FR4" 1 "SM2w" 1 "SM2l" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <.SW SW2 0 60 790 0 69 0 0 "SPTC1" 1 "lin" 1 "L" 1 "3e-3" 1 "33e-3" 1 "10" 0>
  <Eqn Eqn2 1 150 -290 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "SWR_band=max(SWR)" 1 "yes" 0>
  <MTEE MS9 0 710 100 -26 -110 0 0 "FR4" 1 "Sw" 1 "SSw" 1 "Gw" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN OM3 1 250 50 15 -26 0 1 "FR4" 1 "OM3w" 1 "OM3l" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN OME3 1 280 -80 -26 15 0 0 "FR4" 1 "OM3w" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MLIN SM1 1 150 160 -26 -91 0 2 "FR4" 1 "SM1w" 1 "SM1l" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN SMA50R2 2 -230 280 -94 -26 0 3 "FR4" 1 "1.55 mm" 1 "80mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN sma 2 -130 160 -26 -91 0 2 "FR4" 1 "1.55mm" 1 "8mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MCROSS MS8 1 250 160 -26 34 0 0 "FR4" 1 "SM1w" 1 "OM3w" 1 "SM2w" 1 "Gw" 1 "Hammerstad" 0 "Kirschning" 0 "showNumbers" 0>
  <.Opt Opt1 1 220 440 0 38 0 0 "Sim=SPTC1" 0 "DE=3|50|2|20|0.85|1|3|1e-6|10|100" 0 "Var=OM1w|yes|4.490032E-003|0.3e-3|6e-3|LIN_DOUBLE" 0 "Var=OM2w|yes|5.384272E-004|0.3e-3|6e-3|LIN_DOUBLE" 0 "Var=SM1w|yes|1.011431E-003|0.3e-3|6e-3|LIN_DOUBLE" 0 "Var=OM3w|yes|5.521840E-003|0.3e-3|6e-3|LIN_DOUBLE" 0 "Var=Gw|yes|1.233490E-003|0.3e-3|6e-3|LIN_DOUBLE" 0 "Var=SM2w|yes|3.237869E-003|0.3e-3|6e-3|LIN_DOUBLE" 0 "Var=OM1l|yes|2.389777E-003|0.1e-3|44e-3|LIN_DOUBLE" 0 "Var=OM2l|yes|2.490669E-002|0.1e-3|44e-3|LIN_DOUBLE" 0 "Var=SM1l|yes|3.828548E-002|0.1e-3|44e-3|LIN_DOUBLE" 0 "Var=SM2l|yes|9.224281E-003|0.1e-3|44e-3|LIN_DOUBLE" 0 "Var=Gl|yes|6.312152E-003|0.1e-3|44e-3|LIN_DOUBLE" 0 "Var=OM3l|yes|1.125434E-002|0.1e-3|44e-3|LIN_DOUBLE" 0 "Goal=SWR_band|MIN|3" 0>
  <Eqn OptValues1 1 230 800 -28 15 0 0 "OM1w=5.948616E-003" 1 "OM2w=3.575192E-003" 1 "SM1w=3.928488E-003" 1 "OM3w=4.615263E-003" 1 "Gw=1.459144E-003" 1 "SM2w=3.093790E-003" 1 "OM1l=2.459607E-002" 1 "OM2l=2.755744E-002" 1 "SM1l=6.188530E-003" 1 "SM2l=1.615404E-003" 1 "Gl=2.291773E-003" 1 "OM3l=9.354544E-003" 1 "yes" 0>
  <GND * 1 -230 440 0 0 0 0>
  <Pac P1 1 -230 380 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <SPfile X7 1 550 160 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <GND * 1 550 240 0 0 0 0>
</Components>
<Wires>
  <110 190 250 190 "" 0 0 0 "">
  <110 190 110 260 "" 0 0 0 "">
  <280 160 430 160 "" 0 0 0 "">
  <250 80 250 130 "" 0 0 0 "">
  <250 -80 250 20 "" 0 0 0 "">
  <180 160 220 160 "" 0 0 0 "">
  <-230 160 -230 250 "" 0 0 0 "">
  <-230 160 -160 160 "" 0 0 0 "">
  <-100 160 120 160 "" 0 0 0 "">
  <-230 310 -230 350 "" 0 0 0 "">
  <-230 410 -230 440 "" 0 0 0 "">
  <490 160 520 160 "" 0 0 0 "">
  <550 190 550 240 "" 0 0 0 "">
  <110 320 110 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab -97 754 414 225 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 50 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 1 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
	<"dBS21" #0000ff 0 3 1 0 0>
  </Tab>
  <Smith 422 918 535 535 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff0000 4 3 0 0 0>
  </Smith>
</Diagrams>
<Paintings>
</Paintings>
