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
  if ((TIMEMACHINE_currMillis - TIMEMACHINE_prev_503ms) > 503L) {
    TIMEMACHINE_503ms();
    TIMEMACHINE_prev_503ms = TIMEMACHINE_currMillis;
  }
}

void TIMEMACHINE_5ms() {
  ENCODER_check();
}

void TIMEMACHINE_311ms() {
  BUTTON_check();
  OLED_display();
}

void TIMEMACHINE_503ms() {
  if (ADF4351_isSweep) {
    ADF4351_freq_inc();
    ADF4351_setConfig();
  }
}

