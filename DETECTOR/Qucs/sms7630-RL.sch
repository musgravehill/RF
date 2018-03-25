<Qucs Schematic 0.0.19>
<Properties>
  <View=-278,-584,1458,1303,1.10001,85,760>
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
  <GND * 1 -60 480 0 0 0 0>
  <Pac P1 1 -60 420 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <SUBST FR4 1 -40 -520 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "2e-08" 1 "0" 1>
  <.DC DC1 0 140 -530 0 69 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SP SPTC1 1 320 -540 0 69 0 0 "lin" 1 "5.6 GHz" 1 "6 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.AC AC1 0 490 -530 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "100" 1 "no" 0>
  <Diode SMS7630datasheet1 0 1000 -380 -26 -91 0 2 "5e-6 A" 1 "1.05" 1 "1.4e-13F" 1 "0.4" 0 "0.34 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "20 Ohm" 0 "1e-11s" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1e-4mA" 0 "26.85" 0 "2" 0 "0.69" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "27" 0 "1.0" 0 "Schottky" 0>
  <MLIN G 1 110 290 15 -26 0 1 "FR4" 1 "Gw" 1 "Gl" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MVIA MS6 1 130 360 20 0 0 0 "FR4" 1 "0.8 mm" 1 "26.85" 0>
  <MTEE MS7 1 110 160 -26 -110 0 0 "FR4" 1 "Sw" 1 "SSw" 1 "Gw" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN SMA50R2 2 -60 270 -94 -26 0 3 "FR4" 1 "1.55 mm" 1 "L" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn OptValues1 1 230 810 -28 15 0 0 "Sw=1.55e-3" 1 "Sl=13.3e-3" 1 "Gw=1.55e-3" 1 "Gl=17.5e-3" 1 "SSw=1.55e-3" 1 "SSl=0.1e-3" 1 "yes" 0>
  <Eqn Eqn3 0 540 1230 -28 15 0 0 "SWR_vs_L=PlotVs(SWR,L)" 1 "yes" 0>
  <SPfile X8 0 800 -90 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/SERIES.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X7 1 400 160 -26 -41 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 0 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <Pac P2 0 890 -10 -74 -26 1 1 "2" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <Eqn Eqn2 1 150 -290 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <MRSTUB MS3 0 670 -80 -93 -18 0 3 "FR4" 1 "0.3 mm" 0 "7mm" 1 "90" 1>
  <Eqn Eqn1 1 -40 -290 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <MLIN SMA50R1 1 220 160 -26 -91 0 2 "FR4" 1 "SSw" 1 "SSl" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <.SW SW1 0 -80 790 0 69 0 0 "SPTC1" 1 "lin" 1 "W" 1 "0.2e-3" 1 "4e-3" 1 "50" 0>
  <.SW SW2 0 60 790 0 69 0 0 "SPTC1" 1 "lin" 1 "L" 1 "1e-3" 1 "200e-3" 1 "100" 0>
  <R R1 1 320 160 -26 15 0 0 "22 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 430 290 -26 17 0 0 "100 pF" 1 "" 0 "neutral" 0>
  <GND * 1 490 350 0 0 0 0>
  <R R2 1 430 220 -26 15 0 0 "100kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <-60 160 -20 160 "" 0 0 0 "">
  <-60 160 -60 240 "" 0 0 0 "">
  <-60 450 -60 480 "" 0 0 0 "">
  <110 320 110 360 "" 0 0 0 "">
  <40 160 80 160 "" 0 0 0 "">
  <110 190 110 260 "" 0 0 0 "">
  <-60 300 -60 390 "" 0 0 0 "">
  <400 190 400 220 "" 0 0 0 "">
  <140 160 190 160 "" 0 0 0 "">
  <250 160 290 160 "" 0 0 0 "">
  <350 160 370 160 "" 0 0 0 "">
  <400 290 400 350 "" 0 0 0 "">
  <460 290 490 290 "" 0 0 0 "">
  <460 220 490 220 "" 0 0 0 "">
  <490 220 490 290 "" 0 0 0 "">
  <490 290 490 350 "" 0 0 0 "">
  <400 220 400 290 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab -97 754 414 225 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1000 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 1 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
	<"dBS21" #0000ff 0 3 1 0 0>
  </Tab>
  <Smith 389 1148 608 608 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff0000 4 3 0 0 0>
  </Smith>
</Diagrams>
<Paintings>
</Paintings>
