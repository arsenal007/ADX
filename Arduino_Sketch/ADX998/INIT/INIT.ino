#include "leds.h"
#include "detector.h"


#define VERSION 1

void setup() {
  // put your setup code here, to run once:
  Serial.begin(57600);
  Serial.print("ADX988 INIT ver. ");
  Serial.print(VERSION);
  Serial.print("\n");
  DETECTOR::init();
  LEDS::init();
}

void loop() {
  if (DETECTOR::FREQ::valid()) {
    LEDS::measure();
    Serial.print("FREQUENCY: ");
    unsigned long detected_audio_frequency = DETECTOR::FREQ::get();
    Serial.print(detected_audio_frequency );
    Serial.print("\n");
    LEDS::measure_over();
  }


}
