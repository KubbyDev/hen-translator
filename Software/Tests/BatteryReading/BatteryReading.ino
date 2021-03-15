#define BATT_PIN A7
#define AVCC 5
#define ADC_PRECISION 10

void setup() {
  pinMode(BATT_PIN, INPUT);
  Serial.begin(115200);
  while (!Serial);
}

void loop() {
  float voltage = analogRead(BATT_PIN) * (AVCC / (float)(1 << ADC_PRECISION));
  Serial.println(voltage);
  delay(20);
}

// This test can be run with the board powered with an external 5V
// It will send out the voltage read or pin A7 (pin 22) (can be plotter with serial plotter)
