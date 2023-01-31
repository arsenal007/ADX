// leds library

#include <Arduino.h>
#include <inttypes.h>
#include "detector.h"


static unsigned long codefreq = 0;


#define C0SR *(unsigned char*)0x50
// C0D bit, Analog comparator disable bit, reset to 0-enable, 1-disable
#define C0D   7

#define C0BG  6   //
#define C0O   5
#define C0I   4

// C0IE bit, Analog comparator interrupt enable bit:
// When setting C0IE to logic 1, and global interrupt is enabled: AC0 interrupt is enabled.
// When setting C0IE to logic 0, AC0 interrupt is disabled.
#define C0IE  3

// C0IC bit, Analog comparator input capture enable bit:
// C0IC=1, Timer/Counter 1 input capture source is from output of analog comparator.
// C0IC=0, Timer/Counter 1 input capture source is from external pin ICP1.
#define C0IC  2
#define C0IS1 1
#define C0IS0 0

#define C0XR *(unsigned char*)0x51
#define C0OE   6
#define C0HYSE 5
#define C0PS0  4
#define COWKE  3
#define C0FEN  2
#define C0FS1  1
#define C0FS0  0

#define ADCSRB *(unsigned char*)0x7B
#define CME01 7
#define CME00 6

namespace DETECTOR {

void init( void ) {
  cli();
  TCCR1A = 0x00;
  TCCR1B = 0x01; // Timer1 Timer 16 MHz
  TCCR1B = 0x81; // Timer1 Input Capture Noise Canceller
  // reset ACME bit
  // The pins AIN0 and AIN1 of the analog comparator module are externally connected to the IO pins PD6 and PD7.
  // ADCSRB &= ~(1 << ACME);
  // ACSR |= (1 << ACIC); // Analog Comparator Capture Input
  Serial.print("ADCSRB: 0x");
  Serial.print(ADCSRB, HEX);
  Serial.print(", C0SR: 0x");
  Serial.print(C0SR, HEX);
  Serial.print(", C0XR: 0x");
  Serial.print(C0XR, HEX);
  Serial.print("\n");
  ADCSRB &= ~((1 << CME01) | (1 << CME00)); // external port ACXN is used as AC0 negative input
  C0SR &= ~(1 << C0BG);
  C0SR &= ~((1 << C0IS1) | (1 << C0IS0)); // Triggered by rising edge or falling edge of AC0
  C0SR &= ~(1 << C0D); // Analog Comparator Capture Input
  C0XR |= (1 << C0HYSE); // Enable filter delay
  C0XR &= ~(1 << C0PS0);




  pinMode(7, INPUT); // PD7 = AN1 = HiZ
  pinMode(6, INPUT); // PD6 = AN0 = HiZ
  //  When this bit is written logic one, the digital input buffer on the AIN1/0 pin is disabled.
  //  The corresponding PIN register bit will always read as zero when this bit is set.
  //  When an analog signal is applied to the AIN1/0 pin and the digital input from this pin is not needed,
  //  this bit should be written logic one to reduce power consumption in the digital input buffer.
  // DIDR1 |= (1 << AIN1D) | (1 << AIN0D);
  sei();

  // digitalWrite (7, 1);
}
namespace FREQ {

bool ac_out(void) {
  unsigned char r = (C0SR & (1 << C0O));
  return ( r != 0);
}
// #define AC_OUT (ACSR & (1 << ACO))

bool valid(void) {
  int FSK = 10;
  unsigned int d4, d5;
  while (FSK > 0) {
    TCNT1 = 0;
    while (ac_out()) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    while (!ac_out()) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    TCNT1 = 0;
    while (ac_out()) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    d4 = ICR1;
    while (!ac_out()) {
      if (TCNT1 > 65000) {
        break;
      }
    }
    while (ac_out()) {
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
