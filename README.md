# Timer-with-rotary-encoder 
This countdown timer allows timings in the 1-9999 seconds range.
It is built around an Arduino Nano and timer programming is done with a rotary encoder.
The display of the duration of the delay and the remaining time is made with LCD display type 1602.

Programming:  Set number seconds (rotary encoder) - push - secondsX10 - push - 100Xseconds - push - 1000Xseconds
Now the time is set.
The next push will trigger the delay.

During the time delay the load will be powered through the Rel relay.
If the MEM button is pressed, no further programming is required, the previous value is retained.
