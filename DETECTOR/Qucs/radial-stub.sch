<Qucs Schematic 0.0.19>
<Properties>
  <View=-173,-514,1458,1995,0.826447,40,440>
  <Grid=10,10,1>
  <DataSet=radial-stub.dat>
  <DataDisplay=radial-stub.dpl>
  <OpenDisplay=1>
  <Script=radial-stub.m>
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
  <GND * 1 20 260 0 0 0 0>
  <SUBST FR4 1 30 -450 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0.002" 1 "2e-08" 1 "0" 1>
  <.SP SPTC1 1 260 -230 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.AC AC1 1 520 -230 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "10" 1 "no" 0>
  <Eqn Eqn2 1 170 -40 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <Pac P1 1 20 200 -74 -26 1 1 "1" 1 "50 Ohm" 1 "0dBm" 0 "6 GHz" 0 "26.85" 0>
  <Diode SMS7630datasheet1 0 860 -80 -26 -91 0 2 "5e-6 A" 1 "1.05" 1 "1.4e-13F" 1 "0.4" 0 "0.34 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "20 Ohm" 0 "1e-11s" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1e-4mA" 0 "26.85" 0 "2" 0 "0.69" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "27" 0 "1.0" 0 "Schottky" 0>
  <SPfile X5 0 570 10 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 1 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <Eqn Eqn3 0 320 -30 -28 15 0 0 "SWR_vs_RR=PlotVs(SWR,RR)" 1 "dBS11_vs_RR=PlotVs(dBS11,RR)" 1 "yes" 0>
  <.SW SW1 0 -20 780 0 68 0 0 "SPTC1" 1 "lin" 1 "RR" 1 "0.0057" 1 "0.0059" 1 "100" 0>
  <MRSTUB MS2 1 270 160 -107 -18 0 3 "FR4" 1 "1 mm" 0 "5.9mm" 1 "90" 1>
  <MLIN MS3 0 450 130 -26 15 0 0 "FR4" 1 "1.55 mm" 1 "0.5 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn1 1 10 -40 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
</Components>
<Wires>
  <20 230 20 260 "" 0 0 0 "">
  <20 160 20 170 "" 0 0 0 "">
  <20 160 260 160 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 585 625 468 468 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff0000 4 3 0 0 0>
  </Smith>
  <Tab -47 749 498 260 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1000 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 1 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
  </Tab>
  <Rect -42 1400 1150 422 3 #c0c0c0 1 00 1 -1 0.1 1 1 -1 0.2 1 1 -1 0.2 1 315 0 225 "" "" "">
	<"SWR_vs_RR" #ff0000 3 3 0 0 0>
  </Rect>
  <Rect -42 1880 1150 422 3 #c0c0c0 1 00 1 0.002 0.0005 0.01 1 0.991126 0.05 1.25 1 -1 0.2 1 315 0 225 "" "" "">
	<"dBS11_vs_RR" #0000ff 3 3 0 0 0>
	  <Mkr 0.00576869 501 -95 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
