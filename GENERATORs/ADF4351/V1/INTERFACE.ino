
void BUTTON_init() {
  pinMode(BTN_step, INPUT_PULLUP);
  pinMode(BTN_lownoisespur, INPUT_PULLUP);
  pinMode(BTN_out_power, INPUT_PULLUP);
  pinMode(BTN_sweep, INPUT_PULLUP);
  pinMode(LED_pin, OUTPUT);
  pinMode(LD_pin, INPUT);
}

void BUTTON_check() {
  boolean button_state;
  //uint32_t  currMillis = millis();
  //BTN STEP
  button_state = digitalRead(BTN_step);
  if (!button_state) {
    //if ((currMillis - INTERFACE_action_prev_ms) > 503L) {
    //INTERFACE_action_prev_ms = currMillis;
    ADF4351_step_next();
    //}
  }
  //BTN LOW noise\spur mode
  button_state = digitalRead(BTN_lownoisespur);
  if (!button_state) {
    //if ((currMillis - INTERFACE_action_prev_ms) > 503L) {
    //INTERFACE_action_prev_ms = currMillis;
    ADF4351_lowNoiseSpurMode_next();
    //}
  }

  /*
    //BTN output rf power
    button_state = digitalRead(BTN_out_power);
    if (!button_state) {
    //if ((currMillis - INTERFACE_action_prev_ms) > 503L) {
    //INTERFACE_action_prev_ms = currMillis;
    ADF4351_out_power_next();
    //}
    }*/


  //BTN_sweep
  button_state = digitalRead(BTN_sweep);
  if (!button_state) {
    //if ((currMillis - INTERFACE_action_prev_ms) > 503L) {
    //INTERFACE_action_prev_ms = currMillis;
    ADF4351_SWEEP_isOn = ADF4351_SWEEP_isOn ? false : true;
    ADF4351_SWEEP_freq_to = 5000 * 100000; //MHz = 5GHz => by BTN sweep goto max ADF freq
    //}
  }
  button_state = digitalRead(ENCODER_button);
  if (!button_state) {
    uint32_t  currMillis = millis();
    //if ((currMillis - INTERFACE_action_prev_ms) > 503L) {
    //INTERFACE_action_prev_ms = currMillis;
    ADF4351_setConfig();
    //}
  }

}

/*FUTURE
  //show x1,x2,x4 on display and multiply freq on display only.
  void INTERFACE_freq_multiplier_next() {
  INTERFACE_freq_multiplier_current++;
  if (INTERFACE_freq_multiplier_current > 2) {  //cycle, return to 0-pos
    INTERFACE_freq_multiplier_current = 0;
  }
  }*/

void ENCODER_init() {
  pinMode(ENCODER_button, INPUT_PULLUP);
  pinMode(ENCODER_A, INPUT_PULLUP);
  pinMode(ENCODER_B, INPUT_PULLUP);
}

void ENCODER_check() {
  ENCODER_A_state = digitalRead(ENCODER_A);
  if ((!ENCODER_A_state) && (ENCODER_A_state_prev))  {
    ENCODER_B_state = digitalRead(ENCODER_B);
    if (ENCODER_B_state) {
      ADF4351_freq_inc();
    }
    else {
      ADF4351_freq_dec();
    }
  }
  ENCODER_A_state_prev = ENCODER_A_state;
}

