#include <TMRpcm.h> 

#define MIC_PIN A3
#define AVCC 3.3
#define ADC_PRECISION 10
#define LED_PIN A0
#define SDCS_PIN 10
#define SDPOWER_PIN 5
#define SPEAKER_PIN 9

#define THRESHOLD 2.15

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(MIC_PIN, INPUT);
  pinMode(SDPOWER_PIN, OUTPUT);
  pinMode(SPEAKER_PIN, OUTPUT);
  pinMode(SDCS_PIN, OUTPUT);
  digitalWrite(LED_PIN, LOW);
  digitalWrite(SDPOWER_PIN, LOW);
  digitalWrite(SPEAKER_PIN, LOW);
  digitalWrite(SDCS_PIN, HIGH);
  delay(1000);
  led_signal_once(2);
}

void loop() {
  
  float voltage = analogRead(MIC_PIN) * (AVCC / (float)(1 << ADC_PRECISION));
  voltage = AVCC - voltage; // Inverts the voltage because the amplifier inverts it
  
  if(voltage <= THRESHOLD)
    return;

  digitalWrite(SDPOWER_PIN, HIGH);
  digitalWrite(LED_PIN, HIGH);

  TMRpcm tmrpcm;
  tmrpcm.speakerPin = SPEAKER_PIN;
  tmrpcm.setVolume(4);
  tmrpcm.quality(1);

  if (!SD.begin(SDCS_PIN))
    led_signal(1);  

  digitalWrite(LED_PIN, LOW);

  static int counter = 0;
  char path[] = "0.wav";
  path[0] = (counter%10) + '0';
  counter++;
  
  tmrpcm.play(path);
  while(tmrpcm.isPlaying());

  digitalWrite(SPEAKER_PIN, LOW);
  digitalWrite(SDPOWER_PIN, LOW);

  delay(100);
}

void led_signal_once(int nb) {
  for(int i = 0; i < nb; i++) {
    digitalWrite(LED_PIN, HIGH);
    delay(200);
    digitalWrite(LED_PIN, LOW);
    delay(400);
  }
  delay(1000);
}

void led_signal(int nb) {
  while(true)
    led_signal_once(nb);
}
