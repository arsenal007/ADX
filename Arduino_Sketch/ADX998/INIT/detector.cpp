// leds library

#include <Arduino.h>
#include <inttypes.h>
#include "detector.h"


static unsigned long codefreq = 0;

namespace {
bool  almost_same(unsigned long f) {
  int diff = f - ::codefreq;
  if (diff < 0) diff = -diff;
  if (diff < 160 ) return true;
  return false;
}
}

namespace DETECTOR {

void init( void ) {
  cli();
  TCCR1A = 0x00;
  TCCR1B = 0x01; // Timer1 Timer 16 MHz
  TCCR1B = 0x81; // Timer1 Input Capture Noise Canceller
  // reset ACME bit
  // The pins AIN0 and AIN1 of the analog comparator module are externally connected to the IO pins PD6 and PD7.
  ADCSRB &= ~(1 << ACME); 
  ACSR |= (1 << ACIC); // Analog Comparator Capture Input
  pinMode(7, INPUT); // PD7 = AN1 = HiZ
  pinMode(6, INPUT); // PD6 = AN0 = HiZ
  //  When this bit is written logic one, the digital input buffer on the AIN1/0 pin is disabled.
  //  The corresponding PIN register bit will always read as zero when this bit is set.
  //  When an analog signal is applied to the AIN1/0 pin and the digital input from this pin is not needed,
  //  this bit should be written logic one to reduce power consumption in the digital input buffer.
  DIDR1 |= (1 << AIN1D) | (1 << AIN0D);
  sei();

  // digitalWrite (7, 1);
}
namespace FREQ {

bool valid(void) {
  int FSK = 10;
  unsigned int d4, d5;
  while (FSK > 0) {
    TCNT1 = 0;
    while (ACSR & (1 << ACO)) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    while ((ACSR & (1 << ACO)) == 0) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    TCNT1 = 0;
    while (ACSR & (1 << ACO)) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    d4 = ICR1;
    while ((ACSR & (1 << ACO)) == 0) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    while (ACSR & (1 << ACO)) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    d5 = ICR1;
    if (TCNT1 < 65000) {
      unsigned long f = (F_CPU * 100) / (d5 - d4);
      if (f < 350000)  {
        ::codefreq = f;
        return (true);
      } else {
        ::codefreq = 0;
      }
    }
    else {
      FSK--;
    }
  }
  return (false);
}

unsigned long get(void) {
  return (::codefreq);
}

}

}
