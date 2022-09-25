#include "CAT.hpp"
#include <Arduino.h>
#include "VFO_BFO.hpp"

const int numChars = 15;



char CATcmd[numChars] = {'0'};    // an array to store the received CAT data
int freq10GHz, freq1GHz = 0;
int freq100MHz = 0;
int freq10MHz = 1;
int freq1MHz = 4;
int freq100kHz = 1;
int freq10kHz = 2;
int freq1kHz = 3;
int freq100Hz = 4;
int freq10Hz = 5;
int freq1Hz = 6;
int RIT, XIT, MEM1, MEM2, RX, TX, VFO, SCAN, SIMPLEX, CTCSS, TONE1, TONE2 = 0;
int8_t MODE = 2;


namespace {
void Command_GETFreqA()
{
  Serial.print("FA");
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

void Command_SETFreqA()
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
  Command_GETFreqA();               // now RSP with FA
  vfo( CalcFreq());
}

void Command_IF(void)
{
  Serial.print("IF");
  Serial.print(freq10GHz);        // P1
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
  Serial.print("00000");          // P2 Always five 0s
  Serial.print("+0000");          // P3 RIT/XIT freq +/-9990
  Serial.print(RIT);              // P4
  Serial.print(XIT);              // P5
  Serial.print("0");              // P6 Always 0
  Serial.print(MEM1);             // P7
  Serial.print(MEM2);
  Serial.print(RX);               // P8
  Serial.print(MODE);             // P9
  Serial.print(VFO);              // P10  FR/FT 0=VFO
  Serial.print(SCAN);             // P11
  Serial.print(SIMPLEX);          // P12
  Serial.print(CTCSS);            // P13
  Serial.print(TONE1);            // P14
  Serial.print(TONE2);
  Serial.print("0");              // P15 Always 0
  Serial.print(";");
}

void Command_ID(void)
{
  Serial.print("ID020;");
}

void Command_PS(void)
{
  Serial.print("PS1;");
}

void Command_AI(void)
{
  Serial.print("AI0;");
}

void Command_MD(void)
{
  Serial.print("MD");
  Serial.print(MODE);
  Serial.print(";");
}

void Command_MD1(void)
{
  MODE = 1;
  Command_MD();
}


void Command_MD2(void)
{
  MODE = 2;
  Command_MD();
}






void analyseCATcmd( void )
{
  if ((CATcmd[0] == 'I') && (CATcmd[1] == 'F') && (CATcmd[2] == ';'))
    Command_IF();
  // must be freq get command
  else if ((CATcmd[0] == 'F') && (CATcmd[1] == 'A') && (CATcmd[2] == ';'))
    Command_GETFreqA();
  // must be freq set command
  else if ((CATcmd[0] == 'F') && (CATcmd[1] == 'A') && (CATcmd[13] == ';'))
    Command_SETFreqA();

  else if ((CATcmd[0] == 'I') && (CATcmd[1] == 'D') && (CATcmd[2] == ';'))
    Command_ID();                    // return ID Kenwood TS-480 [ID020;]

  else if ((CATcmd[0] == 'P') && (CATcmd[1] == 'S') && (CATcmd[2] == ';'))
    Command_PS();
  else if ((CATcmd[0] == 'A') && (CATcmd[1] == 'I') && (CATcmd[2] == ';'))
    Command_AI();

  else if ((CATcmd[0] == 'A') && (CATcmd[1] == 'I') && (CATcmd[2] == '0'))
    Command_AI();

  else if ((CATcmd[0] == 'M') && (CATcmd[1] == 'D') && (CATcmd[2] == ';'))
    Command_MD();
  else if ((CATcmd[0] == 'M') && (CATcmd[1] == 'D') && (CATcmd[2] == '1') && (CATcmd[3] == ';'))
    Command_MD1();
  else if ((CATcmd[0] == 'M') && (CATcmd[1] == 'D') && (CATcmd[2] == '2') && (CATcmd[3] == ';'))
    Command_MD2();
  /*
          else if ((CATcmd[0] == 'R') && (CATcmd[1] == 'X') && (CATcmd[2] == ';'))
          Command_RX();

          else if ((CATcmd[0] == 'T') && (CATcmd[1] == 'X') && (CATcmd[2] == ';'))
          Command_TX();

          else if ((CATcmd[0] == 'T') && (CATcmd[1] == 'X') && (CATcmd[2] == '1'))
          Command_TX1();

          else if ((CATcmd[0] == 'R') && (CATcmd[1] == 'S') && (CATcmd[2] == ';'))
          Command_RS();
          else if ((CATcmd[0] == 'F') && (CATcmd[1] == 'I') && (CATcmd[13] == ';'))
          Command_FI();
          else if ((CATcmd[0] == 'F') && (CATcmd[1] == 'E') && (CATcmd[13] == ';'))
          Command_FE();
  */

  Serial.flush();       // Get ready for next command
  //delay(50);            // Needed to eliminate WSJT-X connection errors

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

      if (index >= numChars)
        index = numChars - 1;   // leave space for the \0 array termination
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
