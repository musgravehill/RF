const int analogInPin = A0;
int sensorValue = 0;


//uint32_t sum = 0L;
//uint32_t i = 0L;
uint32_t c_0 = 0L;
uint32_t c_1 = 0L;

void setup() {
  Serial.begin(9600);
}

void loop() {
  // read the analog in value:
  sensorValue = analogRead(analogInPin);

  //sum += sensorValue;
  //i++;

  if (sensorValue > 446) {
    c_1++;
  } else {
    c_0++;
  }

  //Serial.print(sensorValue, BIN);
  delay(2);
  if ((millis() % 5000) < 2) {
    //Serial.println(sum / i);
    Serial.print(c_0);
    Serial.print(' ');
    Serial.println(c_1);
  }
}
