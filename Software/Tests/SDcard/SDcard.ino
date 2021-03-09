#include <SPI.h>
#include <SD.h>

#define SD_CS 10

File root;

void setup() {

  Serial.begin(115200);
  while (!Serial);

  Serial.println("Initializing SD card...");

  if (!SD.begin(SD_CS)) {
    Serial.println("Initialization failed!");
    while (1);
  }
  Serial.println("Initialization done.");

  root = SD.open("/");
  printDirectory(root, 0);

  Serial.println("Done!");
}

void printDirectory(File dir, int numTabs) {

  File entry;
  while (entry = dir.openNextFile()) {

    for (uint8_t i = 0; i < numTabs; i++)
      Serial.print("  ");
    
    Serial.print(entry.name());
    if (entry.isDirectory()) {
      Serial.println("/");
      printDirectory(entry, numTabs + 1);
    } else {
      // files have sizes, directories do not
      Serial.print("    ");
      Serial.println(entry.size(), DEC);
    }
    entry.close();
  }
}

void loop() {
}
