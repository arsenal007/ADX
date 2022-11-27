#pragma once

namespace VFO {
void init(void);
namespace SET {
void crystal_freq( unsigned int );
void pll( unsigned int );
void clk2( unsigned long );
void correction( unsigned long );
}
void eeprom_erase(void);

// Si5351 init data
struct eeprom_data {
  // i2c address
  unsigned char address;
  // crystal frequency
  // in kHz needs to be multiplied by 1000
  // to convert in Hz
  unsigned int crystal;

  // pll frequency in Mhz,
  // from 900Mhz to 600Mhz
  //  necessary for buggy si5351 from China
  unsigned int pll;

  // correction frequency
  long correction;

} __attribute__ ((__packed__));



}
#define VFO_EEPROM_SIZE sizeof(::VFO::eeprom_data)
#define VFO_EEPROM_ADDRESS 0
