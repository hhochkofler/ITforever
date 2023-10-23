#!/usr/bin/python

# Import required libraries
import sys
import time
import RPi.GPIO as GPIO

# Use BCM GPIO references
# instead of physical pin numbers
GPIO.setmode(GPIO.BCM)

# Define GPIO signals to use
# Physical pins 37,36,33,32
# GPIO26,GPIO16,GPIO13,GPIO12
StepPins = [26,16,13,12]

# Set all pins as output
for pin in StepPins:
# print "Setup pins"
  GPIO.setup(pin,GPIO.OUT)
  GPIO.output(pin, False)
