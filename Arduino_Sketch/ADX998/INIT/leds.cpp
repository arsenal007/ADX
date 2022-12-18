// leds library

#include <Arduino.h>
#include <inttypes.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include "leds.h"

#define LED_RED 17
#define LED_WHITE 16

#define BLINK 1
#define ON 2
#define OFF 3

static volatile byte count;
static byte reload = 156 / 4;   // 156
static uint8_t state = BLINK;
static uint8_t pin = LED_RED;
static uint8_t output = HIGH;

ISR(TIMER2_COMPA_vect)
{
  count++;
  if ( 50 <= count ) {
    switch (state) {
      case (BLINK):
        {
          digitalWrite(pin, output);
          output = !output;
          break;
        }
    }
    count = 0;
  }
  OCR2A = reload;
}

namespace {
void set_state( uint8_t new_pin, uint8_t new_state ) {
  switch (new_state) {
    case (ON): {
        digitalWrite(new_pin, HIGH);
        break;
      }
  }
  state = new_state;
  pin = new_pin;
}
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


void tx( void ) {
  set_state(LED_RED, ON);
}

void tx_over( void ) {
  set_state(LED_RED, BLINK);
}
}
