
#define TS5823_pin_1 4
#define TS5823_pin_2 5
#define TS5823_pin_3 6
#define TS5823_pin_4 7
#define TS5823_pin_5 8 



//================================== TIMEMACHINE =================================================================
uint32_t TIMEMACHINE_prev_5ms = 0L;
uint32_t TIMEMACHINE_prev_311ms = 0L;
uint32_t TIMEMACHINE_prev_101ms = 0L;

void setup() {
  //  BUTTON_init();
  Serial.begin(57600);
  analogReference(DEFAULT); // 3.3v
}

void loop() {
  TIMEMACHINE_loop();
}





