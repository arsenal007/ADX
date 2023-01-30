#include "CAT.h"
#include <Arduino.h>
#include "VFO.h"


#define BUFFER_SIZE 20
char CATcmd[BUFFER_SIZE] = {'0'};    // an array to store the received CAT data



enum M : uint8_t {
  F10GHz = 0,
  F1GHz = 1,
  F100MHz = 2,
  F10MHz = 3,
  F1MHz = 4,
  F100kHz = 5,
  F10kHz = 6,
  F1kHz = 7,
  F100Hz = 8,
  F10Hz = 9,
  F1Hz = 10,
  FSIZE
};

unsigned char freq[ FSIZE ] = {0};




namespace {
void Command_GETFreq(char n)
{
  Serial.print("U");
  Serial.print(n);
  Serial.print(freq[F10GHz]);
  Serial.print(freq[F1GHz]);
  Serial.print(freq[F100MHz]);
  Serial.print(freq[F10MHz]);
  Serial.print(freq[F1MHz]);
  Serial.print(freq[F100kHz]);
  Serial.print(freq[F10kHz]);
  Serial.print(freq[F1kHz]);
  Serial.print(freq[F100Hz]);
  Serial.print(freq[F10Hz]);
  Serial.print(freq[F1Hz]);
  Serial.print(";");
}

unsigned long CalcFreq_UL( void )
{

  return (
           (1000000000UL * freq[F1GHz]) +
           (100000000UL * freq[F100MHz]) +
           (10000000UL * freq[F10MHz]) +
           (1000000UL * freq[F1MHz]) +
           (100000UL * freq[F100kHz]) +
           (10000UL * freq[F10kHz]) +
           (1000UL * freq[F1kHz]) +
           (100UL * freq[F100Hz]) +
           (10UL * freq[F10Hz]) +
           freq[F1Hz]
         );
}


unsigned long long CalcFreq_ULL( void )
{
  return (
           (10000000000ULL * freq[F10GHz]) +
           (1000000000ULL * freq[F1GHz]) +
           (100000000ULL * freq[F100MHz]) +
           (10000000ULL * freq[F10MHz]) +
           (1000000ULL * freq[F1MHz]) +
           (100000ULL * freq[F100kHz]) +
           (10000ULL * freq[F10kHz]) +
           (1000ULL * freq[F1kHz]) +
           (100ULL * freq[F100Hz]) +
           (10ULL * freq[F10Hz]) +
           freq[F1Hz]
         );
}


void Command2Freq( void )
{
  freq[F10GHz] = CATcmd[2] - 48;       // convert ASCII char to int equivalent. int 0 = ASCII 48;
  freq[F1GHz] = CATcmd[3] - 48;
  freq[F100MHz] = CATcmd[4] - 48;
  freq[F10MHz] = CATcmd[5] - 48;
  freq[F1MHz] = CATcmd[6] - 48;
  freq[F100kHz] = CATcmd[7] - 48;
  freq[F10kHz] = CATcmd[8] - 48;
  freq[F1kHz] = CATcmd[9] - 48;
  freq[F100Hz] = CATcmd[10] - 48;
  freq[F10Hz] = CATcmd[11] - 48;
  freq[F1Hz] = CATcmd[12] - 48;
}

void Command_UO( void )
{
  Command2Freq();  // text -> vars
  Command_GETFreq('O');               // now RSP with FA
  VFO::SET::clk2( CalcFreq_UL() );
}

void Command_UC( void )
{
  freq[F10MHz] = CATcmd[2] - 48;
  freq[F1MHz] = CATcmd[3] - 48;
  freq[F100kHz] = CATcmd[4] - 48;
  freq[F10kHz] = CATcmd[5] - 48;
  freq[F1kHz] = CATcmd[6] - 48;
  Serial.print("UC");
  Serial.print(freq[F10MHz]);
  Serial.print(freq[F1MHz]);
  Serial.print(freq[F100kHz]);
  Serial.print(freq[F10kHz]);
  Serial.print(freq[F1kHz]);
  Serial.print(";");
  VFO::SET::crystal(
    (10000u * freq[F10MHz]) +
    (1000u * freq[F1MHz]) +
    100u * freq[F100kHz] +
    10u * freq[F10kHz] +
    freq[F1kHz]
  );
}


void Command_UK( void )
{
  VFO::save();
}

void Command_UP( void )
{
  freq[F100MHz] = CATcmd[2] - 48;
  freq[F10MHz] = CATcmd[3] - 48;
  freq[F1MHz] = CATcmd[4] - 48;

  Serial.print("UP");
  Serial.print(freq[F100MHz]);
  Serial.print(freq[F10MHz]);
  Serial.print(freq[F1MHz]);
  Serial.print(";");
  VFO::SET::pll( (100u * freq[F100MHz]) +
                 (10u * freq[F10MHz]) +
                 freq[F1MHz] );
}

void Command_R(void) {
  delay(4000);
}

void analyseCATcmd( void )
{
  if ((CATcmd[0] == 'R') && (CATcmd[1] == 'T') && (CATcmd[2] == ';'))
    ::VFO::eeprom_erase();
  // SET Crystal freq in kHz  VC27000;
  else if ((CATcmd[0] == 'U') && (CATcmd[1] == 'C') && (CATcmd[7] == ';'))
    Command_UC();
  // save correction
  else if ((CATcmd[0] == 'U') && (CATcmd[1] == 'K') && (CATcmd[2] == ';'))
    Command_UK();
  // must be freq set command
  else if ((CATcmd[0] == 'U') && (CATcmd[1] == 'O') && (CATcmd[13] == ';'))
    Command_UO();
  else if ((CATcmd[0] == 'U') && (CATcmd[1] == 'P') && (CATcmd[5] == ';'))
    Command_UP();
  else if ((CATcmd[0] == 'R') && (CATcmd[1] == ';'))
    Command_R();
  /*// request Mode: LSB-1, USB-2, CW-3
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

void crystal_setup(char c) {
  switch (c)
  {
    case 'q': ::VFO::SET::correction(-1); break;
    case 'w': ::VFO::SET::correction(-10); break;
    case 'e': ::VFO::SET::correction(-100); break;
    case 'f': ::VFO::SET::correction(-1000); break;
    case 'g': ::VFO::SET::correction(-10000); break;
    case 'h': ::VFO::SET::correction(-100000); break;
    case 'j': ::VFO::SET::correction(-1000000); break;
    case 'a': ::VFO::SET::correction(1); break;
    case 's': ::VFO::SET::correction(10); break;
    case 'd': ::VFO::SET::correction(100); break;
    case 'v': ::VFO::SET::correction(1000); break;
    case 'b': ::VFO::SET::correction(10000); break;
    case 'n': ::VFO::SET::correction(100000); break;
    case 'm': ::VFO::SET::correction(1000000); break;
    default:
      ;
  }
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

    ::crystal_setup(data);

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
