<Qucs Schematic 0.0.19>
<Properties>
  <View=0,-60,1020,800,1.1,0,83>
  <Grid=10,10,1>
  <DataSet=coupler2.dat>
  <DataDisplay=coupler2.dpl>
  <OpenDisplay=1>
  <Script=coupler2.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Název>
  <FrameText1=Nakresleno:>
  <FrameText2=Datum:>
  <FrameText3=Verze:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R1 1 150 180 -26 -53 0 2 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vac V1 1 120 270 18 -26 0 1 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <GND * 1 120 300 0 0 0 0>
  <MCOUPLED MS3 1 370 150 -26 37 0 0 "TMM4_1" 1 "0.9 mm" 1 "7 mm" 1 "1 mm" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <GND * 1 260 120 0 0 0 0>
  <GND * 1 810 360 0 0 0 0>
  <MCOUPLED MS4 1 550 210 -26 -132 0 2 "TMM4_1" 1 "0.9 mm" 1 "7 mm" 1 "1 mm" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <GND * 1 520 300 0 0 0 0>
  <R R5 1 520 270 -90 -26 0 3 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 460 120 0 0 0 0>
  <R R4 1 430 120 -26 -53 0 2 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 580 320 0 0 0 0>
  <SUBST TMM4_1 1 80 380 -30 24 0 0 "4.50" 1 "0.5 mm" 1 "35 um" 1 "0.002" 1 "0.022e-6" 1 "1.4e-6" 1>
  <R R2 1 810 330 -90 -26 0 3 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.AC AC1 1 200 370 0 40 0 0 "lin" 1 "1 GHz" 1 "15 GHz" 1 "141" 1 "no" 0>
  <R R3 1 290 120 -26 -53 0 2 "5 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R6 1 580 290 15 -26 0 1 "5 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Eqn Eqn1 1 480 430 -27 16 0 0 "rfr=abs(Reflected.v) / abs(Forward.v) + 1" 1 "yes" 0>
  <Eqn Eqn2 1 480 500 -30 16 0 0 "vswr=(abs(Forward.v) + abs(Reflected.v))/(abs(Forward.v) - abs(Reflected.v))" 1 "yes" 0>
</Components>
<Wires>
  <120 180 120 240 "Input" 150 190 32 "">
  <320 120 340 120 "Forward" 270 30 9 "">
  <810 180 810 300 "Output" 850 280 98 "">
  <400 180 520 180 "" 0 0 0 "">
  <580 240 580 260 "Reflected" 610 220 8 "">
  <180 180 340 180 "Src_terminated" 80 50 8 "">
  <580 180 810 180 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
