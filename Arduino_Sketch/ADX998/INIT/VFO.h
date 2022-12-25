#pragma once

namespace VFO {
void init(void);
void save( void );
namespace SET {
void crystal( unsigned int );
void pll( unsigned int );
void clk2( unsigned long );
void correction( volatile long );
}
void eeprom_erase(void);
void crystal_setup(long);

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

  long correction;

} __attribute__ ((__packed__));



}
#define VFO_EEPROM_SIZE sizeof(::VFO::eeprom_data)
#define VFO_EEPROM_ADDRESS 0
