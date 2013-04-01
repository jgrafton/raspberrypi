#!/bin/sh

# GPIO numbers should be from this list
# 0, 1, 4, 7, 8, 9, 10, 11, 14, 15, 17, 18, 21, 22, 23, 24, 25

# Note that the GPIO numbers that you program here refer to the pins
# of the BCM2835 and *not* the numbers on the pin header. 
# So, if you want to activate GPIO7 on the header you should be 
# using GPIO4 in this script. Likewise if you want to activate GPIO0
# on the header you should be using GPIO17 here.

on_exit()
{
  echo "0" > /sys/class/gpio/gpio${MY_PIN}/value
  echo "${MY_PIN}" > /sys/class/gpio/unexport
  echo "Ctrl-C pressed, exiting!"
  exit 0
}

MY_PIN="21"

trap 'on_exit' 2

echo "GPIO LED Blink Example - Bash"
echo "LED should be blinking.  Press Ctrl-C to stop."

# Set up GPIO and set to output
echo ${MY_PIN} > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio${MY_PIN}/direction

# loop forever
while [ 1 ]; do

  # turn on LED
  echo "1" > /sys/class/gpio/gpio${MY_PIN}/value

  # sleep 1 second
  sleep 1

  # turn off LED
  echo "0" > /sys/class/gpio/gpio${MY_PIN}/value

  # sleep 1 second
  sleep 1

done

