void TIMEMACHINE_loop() {
  uint32_t  TIMEMACHINE_currMillis = millis();
  if ((TIMEMACHINE_currMillis - TIMEMACHINE_prev_5ms) > 5L) {
    TIMEMACHINE_5ms();
    TIMEMACHINE_prev_5ms = TIMEMACHINE_currMillis;
  }
  if ((TIMEMACHINE_currMillis - TIMEMACHINE_prev_311ms) > 311L) {
    TIMEMACHINE_311ms();
    TIMEMACHINE_prev_311ms = TIMEMACHINE_currMillis;
  }
  if ((TIMEMACHINE_currMillis - TIMEMACHINE_prev_101ms) > 101L) {
    TIMEMACHINE_101ms();
    TIMEMACHINE_prev_101ms = TIMEMACHINE_currMillis;
  }
}

void TIMEMACHINE_5ms() {  
}

void TIMEMACHINE_311ms() {
  BUTTON_check();  
}

void TIMEMACHINE_101ms() {
  if (isSweep) {
    if (sweep_tmp) {
      TS5823_setNextFreq();      
      sweep_tmp = false;
    } else {
      Serial.print(TS5823_frequency_MHz, DEC); //MHz
      Serial.print(';');

      int ADC_in = 0;
      //ADC_in = analogRead(A6);
      Serial.print(0, DEC);//0-1023
      Serial.print(';');

      ADC_in = 0;
      for (byte i = 0; i < 10; i++) {
        ADC_in += analogRead(A7);
      }
      ADC_in = ADC_in / 10.0;
      Serial.print(ADC_in, DEC);//0-1023
      Serial.print(';');

      Serial.print("\r\n");
      sweep_tmp = true;
    }





  }
}


