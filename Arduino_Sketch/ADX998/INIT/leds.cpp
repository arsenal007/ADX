// leds library

#include <Arduino.h>
#include <inttypes.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include "leds.h"

#define LED_RED 17
#define LED_WHITE 16

#define BLINK_RED 0
#define ON_WHITE 1

static volatile byte count;
static byte reload = 156 / 4;   // 156
static uint8_t state = BLINK_RED;
static uint8_t red_output = HIGH;

ISR(TIMER2_COMPA_vect)
{
  count++;
  if ( 50 <= count ) {
    switch (state) {
      case (BLINK_RED):
        {
          digitalWrite(LED_RED, red_output);
          red_output = !red_output;
          break;
        }
    }
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


void set_state( uint8_t ) {
  digitalWrite(LED_WHITE, HIGH);
  digitalWrite(LED_RED, LOW);
  // reload = 156/4;
  flashed = false;
}

void tx_over( void ) {
  digitalWrite(LED_WHITE, LOW);
  digitalWrite(LED_RED, ::output);
  flashed = true;
  reload = 156 / 4;
}
}
