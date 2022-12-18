#include "CAT.h"
#include <Arduino.h>
#include "VFO.h"


#define BUFFER_SIZE 20
char CATcmd[BUFFER_SIZE] = {'0'};    // an array to store the received CAT data

int8_t freq10GHz = 0;
int8_t freq1GHz, freq100MHz, freq10MHz = 0;
int8_t freq1MHz = 4;
int8_t freq100kHz = 1;
int8_t freq10kHz = 2;
int8_t freq1kHz = 3;
int8_t freq100Hz = 4;
int8_t freq10Hz = 5;
int8_t freq1Hz = 6;



namespace {
void Command_GETFreq(char n)
{
  Serial.print("V");
  Serial.print(n);
  Serial.print(freq10GHz);
  Serial.print(freq1GHz);
  Serial.print(freq100MHz);
  Serial.print(freq10MHz);
  Serial.print(freq1MHz);
  Serial.print(freq100kHz);
  Serial.print(freq10kHz);
  Serial.print(freq1kHz);
  Serial.print(freq100Hz);
  Serial.print(freq10Hz);
  Serial.print(freq1Hz);
  Serial.print(";");
}

long CalcFreq( void )
{
  return (
           (10000000000L * freq10GHz) +
           (1000000000L * freq1GHz) +
           (100000000L * freq100MHz) +
           (10000000L * freq10MHz) +
           (1000000L * freq1MHz) +
           (100000L * freq100kHz) +
           (10000L * freq10kHz) +
           (1000L * freq1kHz) +
           (100L * freq100Hz) +
           (10L * freq10Hz) +
           freq1Hz);
}


void Command2Freq( void )
{
  freq10GHz = CATcmd[2] - 48;       // convert ASCII char to int equivalent. int 0 = ASCII 48;
  freq1GHz = CATcmd[3] - 48;
  freq100MHz = CATcmd[4] - 48;
  freq10MHz = CATcmd[5] - 48;
  freq1MHz = CATcmd[6] - 48;
  freq100kHz = CATcmd[7] - 48;
  freq10kHz = CATcmd[8] - 48;
  freq1kHz = CATcmd[9] - 48;
  freq100Hz = CATcmd[10] - 48;
  freq10Hz = CATcmd[11] - 48;
  freq1Hz = CATcmd[12] - 48;
}

void Command_VO( void )
{
  Command2Freq();  // text -> vars
  Command_GETFreq('A');               // now RSP with FA
  VFO::SET::clk2( CalcFreq() );
}

void Command_VM( void )
{
  Command2Freq();  // text -> vars
  Command_GETFreq('A');               // now RSP with VA
  VFO::SET::correction( CalcFreq() );
}


void Command_VC( void )
{
  freq10MHz = CATcmd[2] - 48;
  freq1MHz = CATcmd[3] - 48;
  freq100kHz = CATcmd[4] - 48;
  freq10kHz = CATcmd[5] - 48;
  freq1kHz = CATcmd[6] - 48;
  Serial.print("VA");
  Serial.print(freq10MHz);
  Serial.print(freq1MHz);
  Serial.print(freq100kHz);
  Serial.print(freq10kHz);
  Serial.print(freq1kHz);
  Serial.print(";");
  VFO::SET::crystal_freq( (10000u * freq10MHz) +
                          (1000u * freq1MHz) +
                          (100u * freq100kHz) +
                          (10u * freq10kHz) +
                          freq1kHz );
}


void Command_VP( void )
{
  freq100MHz = CATcmd[2] - 48;
  freq10MHz = CATcmd[3] - 48;
  freq1MHz = CATcmd[4] - 48;

  Serial.print("VA");
  Serial.print(freq100MHz);
  Serial.print(freq10MHz);
  Serial.print(freq1MHz);
  Serial.print(";");
  VFO::SET::pll( (100u * freq100MHz) +
                 (10u * freq10MHz) +
                 freq1MHz );
}

void Command_RST(void) {
  delay(2000);
}

void analyseCATcmd( void )
{
  if ((CATcmd[0] == 'V') && (CATcmd[1] == 'E') && (CATcmd[2] == ';'))
    ::VFO::eeprom_erase();
  // SET Crystal freq in kHz  VC27000;
  else if ((CATcmd[0] == 'V') && (CATcmd[1] == 'C') && (CATcmd[7] == ';'))
    Command_VC();
  // must be freq set command
  else if ((CATcmd[0] == 'V') && (CATcmd[1] == 'O') && (CATcmd[13] == ';'))
    Command_VO();
  else if ((CATcmd[0] == 'V') && (CATcmd[1] == 'M') && (CATcmd[13] == ';'))
    Command_VM();
  else if ((CATcmd[0] == 'V') && (CATcmd[1] == 'P') && (CATcmd[5] == ';'))
    Command_VP();
  else if ((CATcmd[0] == 'R') && (CATcmd[1] == 'S') && (CATcmd[2] == 'T') && (CATcmd[3] == ';'))
    Command_RST();
  /*  else if ((CATcmd[0] == 'A') && (CATcmd[1] == 'I') && (CATcmd[2] == ';'))
    Command_AI();
    else if ((CATcmd[0] == 'A') && (CATcmd[1] == 'I') && (CATcmd[2] == '0'))
    Command_AI();
    // request Mode: LSB-1, USB-2, CW-3
    else if ((CATcmd[0] == 'M') && (CATcmd[1] == 'D') && (CATcmd[2] == ';'))
    Command_MD();
    // setup Mode: LSB-1, USB-2, CW-3
    else if ((CATcmd[0] == 'M') && (CATcmd[1] == 'D')  && (CATcmd[3] == ';'))
    Command_MD( CATcmd[2] - 48 );
    // set recieve: answer always [RX0;] for TS-480
    else if ((CATcmd[0] == 'R') && (CATcmd[1] == 'X') && (CATcmd[2] == ';'))
    Command_RX();
    // transmit TXP1; P1 number does not metter
    else if ((CATcmd[0] == 'T') && (CATcmd[1] == 'X') && (CATcmd[3] == ';'))
    Command_TX();

    else if ((CATcmd[0] == 'F') && (CATcmd[1] == 'P') && (CATcmd[13] == ';'))
    Command_FP();
    else if ((CATcmd[0] == 'F') && (CATcmd[1] == 'M') && (CATcmd[13] == ';'))
    Command_FM();*/

  /*
              else if ((CATcmd[0] == 'T') && (CATcmd[1] == 'X') && (CATcmd[2] == '1'))
              Command_TX1();

              else if ((CATcmd[0] == 'R') && (CATcmd[1] == 'S') && (CATcmd[2] == ';'))
              Command_RS();


  */

  Serial.flush();       // Get ready for next command
  // delay(50);            // Needed to eliminate WSJT-X connection errors

}
} // end anonymous namespace


void CAT_recive_cmd(void)
{
  int index = 0;
  char endMarker = ';';
  char data;                    // CAT commands are ASCII characters

  while ( (Serial.available() > 0) )
  {
    data = Serial.read();

    if (data != endMarker)
    {
      CATcmd[index] = data;
      index++;

      if (index >= BUFFER_SIZE)
        index = BUFFER_SIZE - 1;   // leave space for the \0 array termination
    }
    else
    {
      CATcmd[index] = ';';      // Indicate end of command
      CATcmd[index + 1] = '\0'; // terminate the array
      index = 0;                // reset for next CAT command
      analyseCATcmd( );
    }
  }
}
