const int analogInPin = A0;
int sensorValue = 0;

uint32_t count_0 = 0L;
uint32_t count_1 = 0L;

void setup() {
  Serial.begin(9600);
}

void loop() {
  // read the analog in value:
  sensorValue = analogRead(analogInPin);

  byte out[8];
  byte adc = (sensorValue >> 3) + 128;
  for (byte i = 0; i < 8; i++) {
    out[i] = adc & (1 << (7 - i)) ? 1 : 0;
    if (out[i] == 1) {
      count_1++;
    } else {
      count_0++;
    }
  }

  //Serial.print(sensorValue, BIN);
  delay(2);
  if (millis() % 2000) {
    Serial.print(count_0);
    Serial.print(' ');
    Serial.println(count_1);
  }
}
