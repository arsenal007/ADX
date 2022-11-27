#include "leds.h"
#include "detector.h"
#include "CAT.h"
#include "VFO.h"
#include "avr/wdt.h"


#define VERSION 1

void setup() {
  // put your setup code here, to run once:
  {
    MCUSR = 0;
    wdt_disable();
  }
  Serial.begin(57600);
  Serial.print("ADX988 INIT ver. ");
  Serial.print(VERSION);
  Serial.print("\n");
  ::DETECTOR::init();
  ::LEDS::init();
  ::VFO::init();
  wdt_enable(WDTO_1S);
}

void loop() {
  wdt_reset();
  CAT_recive_cmd();
  if (::DETECTOR::FREQ::valid()) {
    ::LEDS::tx();
    Serial.print("FREQUENCY: ");
    unsigned long detected_audio_frequency = ::DETECTOR::FREQ::get();
    Serial.print(detected_audio_frequency );
    Serial.print("\n");

  } else {
    ::LEDS::tx_over();
  }


}
