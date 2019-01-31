const int analogInPin = A0;
int sensorValue = 0;


uint32_t sum = 0L;
uint32_t i = 0L;

void setup() {
  Serial.begin(9600);
}

void loop() {
  // read the analog in value:
  sensorValue = analogRead(analogInPin);

  sum += sensorValue;
  i++;

  //Serial.print(sensorValue, BIN);
  delay(2);
  if ((millis() % 5000) < 2) {
    Serial.println(sum / i);
  }
}
