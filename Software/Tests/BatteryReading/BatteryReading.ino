#define BATT_PIN A7
#define AREF 3.3
#define ADC_PRECISION 10

void setup() {
  pinMode(BATT_PIN, INPUT);
  Serial.begin(115200);
  while (!Serial);
}

void loop() {
  float voltage = analogRead(BATT_PIN) * (AREF / (float)(1 << ADC_PRECISION));
  Serial.println(voltage);
  delay(20);
}
