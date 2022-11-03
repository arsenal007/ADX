#include "VFO_BFO.hpp"
#include <Arduino.h>
#include "si5351.h"
#include "Wire.h"
#include <EEPROM.h>

static unsigned long freq;

static Si5351 si5351{0x6F};  // 0x6F ist SI5351 i2c address

void vfo_set_cal_frequency( unsigned long f ) {
  freq = f;
  si5351.set_freq(freq * 100ULL, SI5351_CLK2);
  si5351.output_enable(SI5351_CLK0, 0u);    // disable VFO output
  si5351.output_enable(SI5351_CLK1, 0u);    // disable BFO output
  si5351.output_enable(SI5351_CLK2, 1u);    // enable calibration output

}

void vfo_set_cal_factor( int32_t cal_factor) {
  //int32_t cal_factor = (f - freq) * 100;
  EEPROM.put(10, cal_factor);
  Serial.println("calibration factor: ");
  Serial.println(cal_factor);
  Serial.println(";");
  si5351.reset();
    // End I2C comms
  Wire.end();
  delay(2000);
}

void vfo_set_recieve_bfo_frequency( unsigned long f ) {

}

void vfo( unsigned long f ) {
  freq = f;
  si5351.set_freq(freq * 100ULL, SI5351_CLK2);
}



void vfo_init( void) {
  int32_t cal_factor{};
  EEPROM.get(10, cal_factor);
  Serial.println("calibration factor: ");
  Serial.println(cal_factor);
  Serial.println(";");
  si5351.init(SI5351_CRYSTAL_LOAD_8PF, 27000000, cal_factor);
  // si5351.set_correction(cal_factor, SI5351_PLL_INPUT_XO);
  si5351.set_pll(SI5351_PLL_FIXED, SI5351_PLLA);
  si5351.drive_strength(SI5351_CLK0, SI5351_DRIVE_8MA);// SET For Max Power
  si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_2MA); // Set for reduced power for RX/
  si5351.drive_strength(SI5351_CLK2, SI5351_DRIVE_2MA);
}
