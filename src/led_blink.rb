#!/usr/bin/env ruby

# require the wiringpi module for ruby
require 'wiringpi'

# create a new wiringpi object
io = WiringPi::GPIO.new

# wiringpi has its own pinout
# https://projects.drogon.net/raspberry-pi/wiringpi/pins/
MY_PIN = 2

# set pin to output
io.mode(MY_PIN,OUTPUT)

# print instructions to user
print "GPIO LED Blink Example - Ruby\n"
print "LED should be blinking.  Press Ctrl-C to stop.\n"

begin
  # loop forever
  while true

    # turn on LED
    io.write(MY_PIN,HIGH)

    # sleep for 1 second
    sleep(1)

    # turn off LED
    io.write(MY_PIN,LOW)

    # sleep for 1 second
    sleep(1)
  end
rescue SystemExit, Interrupt
  print "Ctrl-C pressed, exiting!\n"
  io.write(MY_PIN,LOW)
end
