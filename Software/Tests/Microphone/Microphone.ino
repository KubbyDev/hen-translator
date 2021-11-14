#define MIC_PIN A3
#define TEST_AVCC 5
#define AVCC 3.3
#define ADC_PRECISION 10
#define LED_PIN A0
#define LED_THRESHOLD 2.4

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(MIC_PIN, INPUT);
  Serial.begin(115200);
  while (!Serial);
}

void loop() {
  
  float _voltage = analogRead(MIC_PIN) * (TEST_AVCC / (float)(1 << ADC_PRECISION));
  // Adjustment of the reading because in the real setup AVCC will be 3.3V
  float voltage = _voltage * (AVCC / TEST_AVCC);
  voltage = AVCC - voltage; // Inverts the voltage because the amplifier inverts it

  Serial.println(voltage);

  static unsigned long lastSpike = 0;
  if(voltage > LED_THRESHOLD) {
    digitalWrite(LED_PIN, HIGH);
    lastSpike = millis();
  }
  if(millis() > lastSpike + 500)
    digitalWrite(LED_PIN, LOW);
}
