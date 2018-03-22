<Qucs Schematic 0.0.19>
<Properties>
  <View=-52,121,1733,2095,0.683016,0,240>
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
  <VProbe Pr1 1 1000 730 28 -31 0 0>
  <GND * 1 1010 770 0 0 0 0>
  <C C1 1 800 820 17 -26 0 1 "100 pF" 1 "" 0 "neutral" 0>
  <GND * 1 860 850 0 0 0 0>
  <R R1 1 910 820 15 -26 0 1 "100kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 110 850 0 0 0 0>
  <Pac P1 1 110 760 -74 -26 1 1 "1" 1 "50 Ohm" 1 "-5dBm" 0 "5.7GHz" 1 "26.85" 0>
  <.DC DC1 1 520 250 0 69 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.AC AC1 1 260 250 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "10" 1 "no" 0>
  <SUBST FR4 1 90 290 -30 24 0 0 "4.2" 1 "0.8 mm" 1 "35 um" 1 "0" 1 "2.43902e-08" 1 "0" 1>
  <Eqn Eqn3 1 100 490 -38 16 0 0 "SWR=rtoswr(S[1,1])" 1 "yes" 0>
  <Eqn Eqn2 1 280 480 -28 15 0 0 "dBS11=dB(S[1,1])" 1 "ZofS11=rtoz(S[1,1])" 1 "yes" 0>
  <SPfile X1 0 1170 490 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/SERIES.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <.SP SP1 1 810 250 0 69 0 0 "lin" 1 "5.6 GHz" 1 "5.8 GHz" 1 "10" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.Opt Opt1 1 70 150 0 41 0 0 "Sim=SP1" 0 "DE=3|9999|2|20|0.85|1|3|1e-6|10|100" 0 "Var=MS2L|yes|2.343654E-002|0.001|0.03|LIN_DOUBLE" 0 "Var=MS3L|yes|2.000507E-002|0.001|0.03|LIN_DOUBLE" 0 "Var=MS2W|yes|3.147437E-003|0.0001|0.03|LIN_DOUBLE" 0 "Var=MS3W|yes|1.171931E-002|0.0001|0.03|LIN_DOUBLE" 0 "Var=MS1L|yes|4.475933E-003|0.001|0.03|LIN_DOUBLE" 0 "Var=MS1W|yes|8.767929E-003|0.0001|0.03|LIN_DOUBLE" 0 "Goal=SWR|MIN|10" 0>
  <Eqn Eqn4 1 450 490 -38 16 0 0 "outV=Pr1.v" 1 "yes" 0>
  <MTEE MSS1 0 1160 370 -26 -110 0 0 "FR4" 1 "2.47 mm" 1 "2.47 mm" 1 "2.47 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <Diode SMS7630datasheet1 0 950 500 -26 -91 0 2 "5e-6 A" 1 "1.05" 1 "1.4e-13F" 1 "0.4" 0 "0.34 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "20 Ohm" 0 "1e-11s" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1e-4mA" 0 "26.85" 0 "2" 0 "0.69" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "27" 0 "1.0" 0 "Schottky" 0>
  <SPfile X2 0 1170 620 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 1 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <MLIN MS3 1 310 790 15 -26 0 1 "FR4" 1 "MS3W" 1 "MS3L" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS2 1 450 700 -26 15 0 0 "FR4" 1 "MS2W" 1 "MS2L" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <SPfile X3 1 700 700 -26 -59 0 0 "C:/usr/seo-soft/!!HW-PROJECTS/RF/DETECTOR/Qucs/S2P/ONEPORT.s1p" 1 "rectangular" 0 "linear" 0 "open" 0 "1" 0>
  <GND * 1 310 850 0 0 0 0>
</Components>
<Wires>
  <1010 750 1010 770 "" 0 0 0 "">
  <990 750 990 770 "" 0 0 0 "">
  <800 770 800 790 "" 0 0 0 "">
  <800 770 910 770 "" 0 0 0 "">
  <910 770 990 770 "" 0 0 0 "">
  <910 770 910 790 "" 0 0 0 "">
  <800 850 860 850 "" 0 0 0 "">
  <860 850 910 850 "" 0 0 0 "">
  <110 790 110 850 "" 0 0 0 "">
  <480 700 670 700 "" 0 0 0 "">
  <700 730 700 770 "" 0 0 0 "">
  <700 770 800 770 "" 0 0 0 "">
  <310 820 310 850 "" 0 0 0 "">
  <110 700 110 730 "" 0 0 0 "">
  <110 700 310 700 "" 0 0 0 "">
  <310 700 420 700 "" 0 0 0 "">
  <310 700 310 760 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Smith 20 1498 585 585 3 #0055ff 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 "" "" "">
	<"S[1,1]" #ff0000 3 3 0 0 0>
  </Smith>
  <Rect 740 1445 672 495 3 #c0c0c0 1 00 1 5.6e+09 2e+07 5.8e+09 1 8.8778e-06 5e-07 1.35e-05 1 -1 0.2 1 315 0 225 "" "" "">
	<"outV" #0000ff 3 3 0 0 0>
  </Rect>
  <Tab 413 1760 527 220 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 101 315 0 225 "" "" "">
	<"ZofS11" #0000ff 0 3 0 0 0>
	<"dBS11" #0000ff 0 3 1 0 0>
	<"SWR" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 80 1830 12 #000000 0 "1)Находите на сайте производителя файл s2p на конкретный усилитель,  \n2) Импортируете s2p в симулятор AWRDE или ADS или на худой конец в RFSim99 \n3) Выводите в симуляторе диаграмму Смита на несогласованный усилитель \nили графики частотной зависимости Z11=R11+jX11, Z22=R22+jX22 в интересующем диапазоне частот, \nпо ним определяете вид цепей согласования на входе и выходе. \n4) Рисуете в симуляторе схему с усилителем в виде блока с S-параметрами и с цепями согласования \n5) Выводите диаграмму Смита или частотные зависимости S11, S22 для схемы с цепями согласования \n6)Вручную или автоматически оптимизируете цепи согласования\n по критерию минимума S11 и S22 \n\nS21 есть коэффициент передачи напряжения падающей волны, \nпоэтому коэффициент передачи мощности G=|S21|^2">
</Paintings>
