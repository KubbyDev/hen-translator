#include <PDM.h>



void setup() {
  
  if (!PDM.begin(1, 16000)) {
    Serial.println("Failed to start PDM!");
    while (1);
  }

  
}


void loop() {

  
}
