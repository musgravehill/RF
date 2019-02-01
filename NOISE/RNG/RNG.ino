const int analogInPin = A0;
uint16_t sensorValue = 0;
uint16_t sensorValuePrev = 0;

/*
  #define average_count 128
  uint16_t average_val = 1;
  uint8_t average_i = 0;
  uint16_t average_el[average_count];
*/
uint32_t c_0 = 0L;
uint32_t c_1 = 0L;
uint8_t eol_i = 0;

void setup() {
  Serial.begin(9600);
  /*for (int i = 0; i < average_count; i++) {
    average_el[i] = 0;
    }*/
}

void loop() {
  delay(2); //TODO test delays 0..***
  sensorValuePrev = sensorValue;
  sensorValue = analogRead(analogInPin);

  //Serial.println();
  //Serial.print("curr=");
  //Serial.println(sensorValue, DEC);

  /*

    average_el[average_i] = sensorValue;
    average_i++;
    if (average_i >= average_count) {
    average_i = 0;

    uint32_t average_sum = 0L;
    for (uint8_t i = 0; i < average_count; i++) {
      average_sum += average_el[i];
    }
    average_val = 0 * average_val + 1 * average_sum / average_count;
    }

    if (sensorValue > average_val) {
    c_1++;
    } else {
    c_0++;
    }
  */

  if (sensorValuePrev > sensorValue) {
    //c_1++;
    Serial.print(1);
  } else {
    //c_0++;
    Serial.print(0);
  } 


  /*if ((millis() % 5000) < 2) {
    //Serial.print(average_val);
    //Serial.print(' ');
    Serial.print(c_0);
    Serial.print(' ');
    Serial.println(c_1);
    }*/
}
