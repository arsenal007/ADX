#pragma once


// SET DESIRED Frequency
void vfo_set_cal_frequency( unsigned long );

// REAL frequency
void vfo_set_cal_factor( unsigned long );



void vfo_init(void);

// set VFO frequency
void vfo( unsigned long f );
