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




  TS5823_frch++;
  if (TS5823_frch > 32) {
    TS5823_frch = 1;
  }
}

