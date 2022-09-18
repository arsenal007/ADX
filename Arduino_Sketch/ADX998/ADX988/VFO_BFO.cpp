#include "VFO_BFO.hpp"
#include <Arduino.h>
#include <si5351.h>
#include <EEPROM.h>


static unsigned long freq;

static Si5351 si5351;

void vfo_set_cal_frequency( unsigned long f ) {
  freq = f;
}

void vfo_set_cal_factor( unsigned long f) {
  int cal_factor = (freq - f) * 100;
  EEPROM.put(10, cal_factor);
  Serial.println("reboot");
  delay(2000);
}

void vfo_set_recieve_bfo_frequency( unsigned long f ) {
  
}

void vfo( unsigned long f ) {
  freq = f;
}



void vfo_init( void) {
  int32_t cal_factor;
  EEPROM.get(10, cal_factor);
  // si5351.init(SI5351_CRYSTAL_LOAD_8PF, 0, 0);
  // si5351.set_correction(cal_factor, SI5351_PLL_INPUT_XO);
  // si5351.set_pll(SI5351_PLL_FIXED, SI5351_PLLA);
  // si5351.drive_strength(SI5351_CLK0, SI5351_DRIVE_8MA);// SET For Max Power
  // si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_2MA); // Set for reduced power for RX/
}
