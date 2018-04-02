
int i = 0;
void setup() {
  Serial.begin(57600);

}

void loop() {
  Serial.print(433000000);
  Serial.print(';');
  Serial.print(1001); //A0
  Serial.print(';');
  Serial.print(i, DEC); //A1
  Serial.print(';');
  Serial.print("\r\n");
  delay(2000);
  i++;
}
