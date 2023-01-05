#include "leds.h"
#include "detector.h"
#include "CAT.h"
#include "VFO.h"
#include "avr/wdt.h"


#define VERSION 2

// 162010

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
  Serial.println(F("RT; // Reset EEPROM setting to default values and reboot"));
  Serial.println(F("UCXXXXX; // Set Si5351A Crystal frequncy in kHz (Example: UC27000; for 27000kHz)"));
  Serial.println(F("UPXXX; // Set Si5351A PLL frequncy in MHz (Example: UP900; for 900Mhz)"));
  Serial.println(F("UK; // Save Correction and reboot"));
  Serial.println(F("   Up:    q   w   e   f   g   h   j"));
  Serial.println(F(" Down:    a   s   d   v   b   n   m"));
  
  Serial.println(F("   Hz:  0.01 0.1  1   10  100 1K  10k"));
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
