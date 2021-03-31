#define MIC_PIN A3
#define TEST_AVCC 5
#define AVCC 3.3
#define ADC_PRECISION 10

void setup() {
  pinMode(MIC_PIN, INPUT);
  Serial.begin(115200);
  while (!Serial);
}

void loop() {
  float _voltage = analogRead(MIC_PIN) * (TEST_AVCC / (float)(1 << ADC_PRECISION));
  // Adjustment of the reading because in the real setup AVCC will be 3.3V
  float voltage = voltage * (AVCC / TEST_AVCC);
  Serial.println(voltage);
}
