// leds library

#ifndef DETECTOR_H
#define DETECTOR_H

namespace DETECTOR {
void init(void);
namespace FREQ {
bool valid();
unsigned long get();
}
}

#endif
