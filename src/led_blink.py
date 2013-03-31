#!/usr/bin/env python
## led_blink.py
# created by John Grafton

import sys
import time
import signal
import RPi.GPIO as GPIO

# define what happens when user presses Ctrl-C
def signal_hanlder(signal, frame):
  print 'Ctrl-C pressed, exiting!'
  GPIO.output(21, GPIO.LOW)
  sys.exit(0)

signal.signal(signal.SIGINT, signal_hanlder)

# this is a demo, may get an error that channel is
# already in use, disable
GPIO.setwarnings(False)

# use BCM GPIO 00..nn numbers
GPIO.setmode(GPIO.BCM)

# Setup GPIO channel 21 
GPIO.setup(21, GPIO.OUT)

# Output to pin 21 
GPIO.output(21, GPIO.HIGH)

# print instructions to user
print 'LED should be blinking.  Press Ctrl-C to stop.'

# loop forever until user presses Ctrl-C
while True:
  # sleep for 1 second
  time.sleep(1)

  # turn off LED
  GPIO.output(21, GPIO.LOW)

  # sleep for 1 second
  time.sleep(1)

  # turn on LED
  GPIO.output(21, GPIO.HIGH)


  # lather, risnse, repeat
