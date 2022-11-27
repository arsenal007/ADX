// leds library

#include <Arduino.h>
#include <inttypes.h>
#include <EEPROM.h>
#include "VFO.h"
#include "si5351.h"




namespace {
unsigned long freq = 7000000;
Si5351 si5351{};
VFO::eeprom_data init_data_struct{};

const uint8_t addresses[] = {0x60, 0x6F};

void update(void) {
  EEPROM.put(VFO_EEPROM_ADDRESS, ::init_data_struct);
  si5351.reset();
  // End I2C comms
  Wire.end();
  delay(2000);
}
}
namespace VFO {
namespace SET {
// Set up crystal frequency in kHz
void crystal_freq(unsigned int value) {
  ::init_data_struct.crystal = value;
  ::update();
}

void clk2( unsigned long f ) {
  freq = f;
  ::si5351.set_freq(freq , SI5351_CLK2);
}

void correction( unsigned long f) {
  unsigned long c = freq  / 1000000000ULL;
  ::init_data_struct.correction = (freq  - f) * c ;
  ::update();
}

void pll( unsigned int v) {
  ::init_data_struct.pll = v;
  ::update();
}

}

void eeprom_erase(void) {
  ::init_data_struct.address = 0xFF;
  ::init_data_struct.crystal = 25000;
  ::init_data_struct.pll = 800;
  ::init_data_struct.correction = 0;
  ::update();
}



void init(void) {
  // read saved data from eeprom
  EEPROM.get(VFO_EEPROM_ADDRESS, ::init_data_struct);

  // check if current address is present
  bool present = false;
  for (uint8_t i = 0; i < sizeof(addresses); i++) {
    if (::init_data_struct.address == addresses[i]) {
      present = true;
      break;
    }
  }

  if (!present)
  { // scan i2c bus
    Serial.print("SI5351 i2c address: ");
    for (uint8_t i = 0; i < sizeof(addresses); i++) {
      Wire.beginTransmission(addresses[i]);
      byte error = Wire.endTransmission();
      if (error == 0)  {
        present = true;
        ::init_data_struct.address = addresses[i];
        Serial.print(::init_data_struct.address, HEX);
        break;
      }
    }
    Serial.print("\n");
  }


  Serial.print("SI5351 Crystal Frequency: ");
  Serial.print(::init_data_struct.crystal);
  Serial.print("kHz \n");

  Serial.print("SI5351 correction: ");
  Serial.print(::init_data_struct.correction );
  Serial.print("Hz \n");

  Serial.print("SI5351 PLL Frequency: ");
  Serial.print(::init_data_struct.pll);
  Serial.print("Mhz \n");



  uint32_t xo_freq = ::init_data_struct.crystal * 1000u;  // kHz convert to Hz
  si5351.init(::init_data_struct.address, SI5351_CRYSTAL_LOAD_8PF, xo_freq, ::init_data_struct.correction);
  // si5351.set_correction(::init.correction, SI5351_PLL_INPUT_XO);
  uint64_t pll = ::init_data_struct.pll * 100000000u;
  si5351.set_pll(pll, SI5351_PLLA);
  si5351.set_pll(pll, SI5351_PLLB);
  si5351.drive_strength(SI5351_CLK0, SI5351_DRIVE_8MA);// SET For Max Power
  si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_2MA); // Set for reduced power for RX/
  si5351.drive_strength(SI5351_CLK2, SI5351_DRIVE_2MA);
}
}
