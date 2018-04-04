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
