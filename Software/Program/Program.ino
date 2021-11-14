#include <TMRpcm.h> 

#define LED_PIN A0
#define MIC_PIN A3
#define SDCS_PIN 10
#define SDPOWER_PIN 5
#define SPEAKER_PIN 9
#define BATT_PIN A7

#define AVCC 3.3
#define ADC_PRECISION 10

#define BATT_LOW 1.0
#define BATT_VERYLOW 0.9

#define THRESHOLD 2.4

void setup() {
  
  pinMode(LED_PIN, OUTPUT);
  pinMode(MIC_PIN, INPUT);
  pinMode(SDPOWER_PIN, OUTPUT);
  pinMode(SPEAKER_PIN, OUTPUT);
  pinMode(SDCS_PIN, OUTPUT);
  pinMode(BATT_PIN, INPUT);
  
  digitalWrite(LED_PIN, LOW);
  digitalWrite(SDPOWER_PIN, LOW);
  digitalWrite(SPEAKER_PIN, LOW);
  digitalWrite(SDCS_PIN, HIGH);
  
  delay(1000);
  led_signal_once(2);
}

void loop() {

  // Checks the battery voltage and alerts the user if it's too low
  float batt = analogRead(BATT_PIN) * (AVCC / (float)(1 << ADC_PRECISION));
  if(batt < BATT_VERYLOW) beep_beep();
  static unsigned long lastBlink = 0;
  if(batt < BATT_LOW && millis() - lastBlink > 2000) {
    led_signal_once(2);
    lastBlink = millis();
  }

  // Reads the voltage at the mic pin which is correlated to the sound pressure level
  float voltage = analogRead(MIC_PIN) * (AVCC / (float)(1 << ADC_PRECISION));
  voltage = AVCC - voltage; // Inverts the voltage because the amplifier inverts it

  // Continues if the voltage is above the threshold
  if(voltage <= THRESHOLD)
    return;

  // Enables the SD power mosfet to power the SD card
  digitalWrite(SDPOWER_PIN, HIGH);
  digitalWrite(LED_PIN, HIGH);

  TMRpcm tmrpcm;
  tmrpcm.speakerPin = SPEAKER_PIN;
  tmrpcm.setVolume(4);
  tmrpcm.quality(1);

  if (!SD.begin(SDCS_PIN))
    led_signal(1); // Goes in an infinite loop that makes the led blink if the SD could not be read

  digitalWrite(LED_PIN, LOW);

  static int counter = 0;
  char path[] = "0.wav";
  path[0] = (counter%10) + '0';
  counter++;
  
  tmrpcm.play(path);
  // The tmrpcm lib uses interrupts to play sounds, it doesn't block so
  // we have to wait for the sound file to be entirely played
  while(tmrpcm.isPlaying());

  // Required to prevent residual signals to cause weird noises
  digitalWrite(SPEAKER_PIN, LOW);
  // Cuts power to the SD card to save battery life
  digitalWrite(SDPOWER_PIN, LOW);

  // Prevents any residual vibration to trigger a translation
  delay(100);
}

void beep_beep() {
  while(true) {
    tone(SPEAKER_PIN, 440, 200); // 440 Hz for 200 ms
    delay(10000);
  }
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
