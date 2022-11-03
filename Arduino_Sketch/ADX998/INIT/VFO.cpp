// leds library

#include <Arduino.h>
#include <inttypes.h>
#include <EEPROM.h>
#include "VFO.h"
#include "addresses.h"

static VFO::eeprom_data init_data_struct{};

namespace {
void update(void) {
  EEPROM.put(::VFO::EEPROM_ADDRESS, ::init_data_struct);
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
}

void init(void) {
  EEPROM.get(::VFO::EEPROM_ADDRESS, ::init_data_struct);
  
  Serial.print("SI5351 Crystal Frequency: ");
  Serial.print(::init_data_struct.crystal);
  Serial.print("Mhz \n");
  
  Serial.print("SI5351 correction: ");
  Serial.print(::init_data_struct.correction/100.0f);
  Serial.print("Hz \n");
  
  Serial.print("SI5351 PLL Frequency: ");
  Serial.print(::init_data_struct.pll);
  Serial.print("Mhz \n");
  
  
  uint32_t xo_freq = ::init_data_struct.crystal * 1000000UUL;
  si5351.init(SI5351_CRYSTAL_LOAD_8PF, xo_freq, ::init_data_struct.correction);
  // si5351.set_correction(::init.correction, SI5351_PLL_INPUT_XO);
  uint64_t pll = ::init_data_struct.pll * 100000000UUL;
  si5351.set_pll(pll, SI5351_PLLA);
  si5351.set_pll(pll, SI5351_PLLB);
  si5351.drive_strength(SI5351_CLK0, SI5351_DRIVE_8MA);// SET For Max Power
  si5351.drive_strength(SI5351_CLK1, SI5351_DRIVE_2MA); // Set for reduced power for RX/
  si5351.drive_strength(SI5351_CLK2, SI5351_DRIVE_2MA);
}
}

#define LED_RED 17
#define LED_WHITE 16

static volatile byte count;
static byte reload = 156 / 2;   // 156

static bool flashed = true;
static bool output = HIGH;

static void flash(void)
{
  digitalWrite(LED_RED, output);
  output = !output;

}

ISR(TIMER2_COMPA_vect)
{
  count++;
  if ( 50 <= count ) {
    if ( flashed ) flash();
    count = 0;
  }
  OCR2A = reload;
}


namespace LEDS {
void init( void ) {
  pinMode(LED_WHITE, OUTPUT);
  pinMode(LED_RED, OUTPUT);
  // digitalWrite(LED_RED, HIGH);
  cli();
  TCCR2A = 0;
  TCCR2B = 0;
  OCR2A = reload;
  TCCR2A = bit(WGM21);                         // CTC mode
  TCCR2B = bit(CS22) | bit(CS21) | bit(CS20);  // prescaler 1024
  TIMSK2 |= bit(OCIE2A);                       // enable capture interrupt
  sei();
}

void measure( void ) {
  digitalWrite(LED_WHITE, HIGH);
  digitalWrite(LED_RED, LOW);
  reload = 156 / 4;
  // flashed = false;
}

void measure_over( void ) {
  digitalWrite(LED_WHITE, LOW);
  digitalWrite(LED_RED, ::output);
  // flashed = true;
  reload = 156 / 2;
}
}
