#include <SD.h>

#define SDCS_PIN 10
#define LED_PIN A0
#define SDPOWER_PIN 5

File root;
String res = "";

void setup() {

  led_signal_once(2);
  
  pinMode(SPI_MISO_PIN, INPUT);
  pinMode(SPI_MOSI_PIN, OUTPUT);
  pinMode(SPI_SCK_PIN, OUTPUT);
  pinMode(LED_PIN, OUTPUT);

  pinMode(SDCS_PIN, OUTPUT);
  pinMode(SDPOWER_PIN, OUTPUT);
  digitalWrite(SDPOWER_PIN, HIGH);
  digitalWrite(SDCS_PIN, HIGH);

  if (!SD.begin(SDCS_PIN)) 
    led_signal(1);

  log("Starting SD card files listing");

  root = SD.open("/");
  printDirectory(root, 0);

  log("SD card files listing done");

  File dataFile = SD.open("result.txt", FILE_WRITE);
  if (!dataFile)
    led_signal(2);
  dataFile.println(res);
  dataFile.close();

  led_signal(5);
}

void printDirectory(File dir, int numTabs) {

  File entry;
  while (entry = dir.openNextFile()) {

    for (uint8_t i = 0; i < numTabs; i++)
      log("  ");
    
    log(entry.name());
    if (entry.isDirectory()) {
      log("/\n");
      printDirectory(entry, numTabs + 1);
    } else {
      // files have sizes, directories do not
      log("    ");
      log(String(entry.size()) + "\n");
    }
    entry.close();
  }
}

void log(String msg) {
  res += "[";
  res += String(millis());
  res += "] ";
  res += msg;
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
