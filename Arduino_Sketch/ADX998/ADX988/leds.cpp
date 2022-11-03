// leds library

#include <Arduino.h>
#include <inttypes.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include "leds.h"

#define LED_RED 16
#define LED_GREEN 17

volatile byte count;
byte reload = 156/2;     // 156

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
  pinMode(LED_GREEN, OUTPUT);
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
  digitalWrite(LED_GREEN, HIGH);
  digitalWrite(LED_RED, LOW);
  flashed = false;
}

void measure_over( void ) {
  digitalWrite(LED_GREEN, LOW);
  digitalWrite(LED_RED, ::output);
  flashed = true;
}
}
