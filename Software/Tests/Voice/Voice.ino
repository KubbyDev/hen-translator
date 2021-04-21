#include <SPI.h>
#include <SD.h>
#include <TMRpcm.h> 

#define SDCS_PIN 10
#define LED_PIN A0
#define SDPOWER_PIN 5
#define SPEAKER_PIN 9

// Audio files must follow these rules:
// WAV format
// 8-bit sample size
// 8-32khz sample rate
// mono


// Doesn't work for the moment, IDK why :(



void setup(){

  pinMode(LED_PIN, OUTPUT);
  pinMode(SDPOWER_PIN, OUTPUT);
  digitalWrite(SDPOWER_PIN, HIGH);

  TMRpcm tmrpcm;
  tmrpcm.speakerPin = SPEAKER_PIN;
  tmrpcm.setVolume(4);
  tmrpcm.quality(1);
  
  led_signal_once(2);
  
  if (!SD.begin(SDCS_PIN))
    led_signal(1);  

  led_signal_once(2);
  tmrpcm.play("test.wav");
  led_signal(3);  
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

void loop() {
}
