void TS5823_init() {
  pinMode(TS5823_pin_1, OUTPUT);
  pinMode(TS5823_pin_2, OUTPUT);
  pinMode(TS5823_pin_3, OUTPUT);
  pinMode(TS5823_pin_4, OUTPUT);
  pinMode(TS5823_pin_5, OUTPUT);
}

void TS5823_set_FR1() { //A
  digitalWrite(TS5823_pin_4, LOW); //ON switch
  digitalWrite(TS5823_pin_5, LOW); //ON switch
}
void TS5823_set_FR2() { //B
  digitalWrite(TS5823_pin_4, HIGH); //OFF switch
  digitalWrite(TS5823_pin_5, LOW); //ON switch
}
void TS5823_set_FR3() { //E
  digitalWrite(TS5823_pin_4, LOW); //ON switch
  digitalWrite(TS5823_pin_5, HIGH); //OFF switch
}
void TS5823_set_FR4() { //F
  digitalWrite(TS5823_pin_4, HIGH); //OFF switch
  digitalWrite(TS5823_pin_5, HIGH); //OFF switch
}

void TS5823_set_CH1() {
  digitalWrite(TS5823_pin_1, LOW); //ON switch
  digitalWrite(TS5823_pin_2, LOW); //ON switch
  digitalWrite(TS5823_pin_3, LOW); //ON switch
}
void TS5823_set_CH2() {
  digitalWrite(TS5823_pin_1, HIGH); //OFF switch
  digitalWrite(TS5823_pin_2, LOW); //ON switch
  digitalWrite(TS5823_pin_3, LOW); //ON switch
}
void TS5823_set_CH3() {
  digitalWrite(TS5823_pin_1, LOW); //ON switch
  digitalWrite(TS5823_pin_2, HIGH); //OFF switch
  digitalWrite(TS5823_pin_3, LOW); //ON switch
}
void TS5823_set_CH4() {
  digitalWrite(TS5823_pin_1, HIGH); //OFF switch
  digitalWrite(TS5823_pin_2, HIGH); //OFF switch
  digitalWrite(TS5823_pin_3, LOW); //ON switch
}
void TS5823_set_CH5() {
  digitalWrite(TS5823_pin_1, LOW); //ON switch
  digitalWrite(TS5823_pin_2, LOW); //ON switch
  digitalWrite(TS5823_pin_3, HIGH); //OFF switch
}
void TS5823_set_CH6() {
  digitalWrite(TS5823_pin_1, HIGH); //OFF switch
  digitalWrite(TS5823_pin_2, LOW); //ON switch
  digitalWrite(TS5823_pin_3, HIGH); //OFF switch
}
void TS5823_set_CH7() {
  digitalWrite(TS5823_pin_1, LOW); //ON switch
  digitalWrite(TS5823_pin_2, HIGH); //OFF switch
  digitalWrite(TS5823_pin_3, HIGH); //OFF switch
}
void TS5823_set_CH8() {
  digitalWrite(TS5823_pin_1, HIGH); //OFF switch
  digitalWrite(TS5823_pin_2, HIGH); //OFF switch
  digitalWrite(TS5823_pin_3, HIGH); //OFF switch
}

void TS5823_setNextFreq() {
  if (TS5823_frch == 1) {
    TS5823_set_FR1();
    TS5823_set_CH1();
    TS5823_frequency_MHz = 5865;
  }
  if (TS5823_frch == 2) {
    TS5823_set_FR1();
    TS5823_set_CH2();
    TS5823_frequency_MHz = 5845;
  }
  if (TS5823_frch == 3) {
    TS5823_set_FR1();
    TS5823_set_CH3();
    TS5823_frequency_MHz = 5825;
  }
  if (TS5823_frch == 4) {
    TS5823_set_FR1();
    TS5823_set_CH4();
    TS5823_frequency_MHz = 5805;
  }
  if (TS5823_frch == 5) {
    TS5823_set_FR1();
    TS5823_set_CH5();
    TS5823_frequency_MHz = 5785;
  }
  if (TS5823_frch == 6) {
    TS5823_set_FR1();
    TS5823_set_CH6();
    TS5823_frequency_MHz = 5765;
  }
  if (TS5823_frch == 7) {
    TS5823_set_FR1();
    TS5823_set_CH7();
    TS5823_frequency_MHz = 5745;
  }
  if (TS5823_frch == 8) {
    TS5823_set_FR1();
    TS5823_set_CH8();
    TS5823_frequency_MHz = 5725;
  }
  //FR2
  if (TS5823_frch == 9) {
    TS5823_set_FR2();
    TS5823_set_CH1();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 10) {
    TS5823_set_FR2();
    TS5823_set_CH2();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 11) {
    TS5823_set_FR2();
    TS5823_set_CH3();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 12) {
    TS5823_set_FR2();
    TS5823_set_CH4();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 13) {
    TS5823_set_FR2();
    TS5823_set_CH5();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 14) {
    TS5823_set_FR2();
    TS5823_set_CH6();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 15) {
    TS5823_set_FR2();
    TS5823_set_CH7();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 16) {
    TS5823_set_FR2();
    TS5823_set_CH8();
    TS5823_frequency_MHz = 5;
  }
  //FR3
  if (TS5823_frch == 17) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 18) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 19) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 20) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 21) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 22) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 23) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 24) {
    TS5823_set_FR3();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  //FR4
  if (TS5823_frch == 25) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 26) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 27) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 28) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 29) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 30) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 31) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }
  if (TS5823_frch == 32) {
    TS5823_set_FR4();
    TS5823_set_CH();
    TS5823_frequency_MHz = 5;
  }




  TS5823_frch++;
  if (TS5823_frch > 32) {
    TS5823_frch = 1;
  }
}

