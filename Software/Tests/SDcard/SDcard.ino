#include <SD.h>

#define SD_CS 10
#define LED_PIN 8

File root;
String res = "";

void setup() {

  led_signal_once(2);

  if (!SD.begin(SD_CS)) 
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
    delay(500);
    digitalWrite(LED_PIN, LOW);
    delay(500);
  }
}

void led_signal(int nb) {
  while(true) {
    led_signal_once(nb);
    delay(2000);
  }
}

void loop() {
}
