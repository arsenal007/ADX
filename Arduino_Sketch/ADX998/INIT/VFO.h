// leds library

#ifndef LEDS_H
#define LEDS_H

namespace VFO {
namespace SET {
void crystal_freq(unsigned int value);
}
// Si5351 init data
struct eeprom_data {
  // crystal frequency
  // in kHz needs to be multiplied by 1000
  // to convert in Hz
  unsigned int crystal;

  // pll frequency in Mhz,
  // from 900Mhz to 600Mhz
  //  necessary for buggy si5351 from China
  unsigned int pll;

  // correction frequency
  int32_t correction;

} __attribute__ ((__packed__));

#define EEPROM_SIZE sizeof(eeprom_data)
#define EEPROM_ADDRESS 0
}




#endif
