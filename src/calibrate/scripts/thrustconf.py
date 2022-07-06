from itertools import count
import rospy
import RPi.GPIO as gpio
import time


def read(dt, sck):
    i=0
    Count=0
    gpio.setup(dt, gpio.OUT)
    gpio.output(dt,1)
    gpio.output(sck,0)
    gpio.setup(dt, gpio.IN)
    while gpio.input(dt) == 1:
        i=0
    for i in range(24):
        gpio.output(sck,1)
        Count=Count<<1
        gpio.output(sck,0)
        if gpio.input(dt) == 0: 
            Count=Count+1
    return count


def configure():
    dt = 27
    sck = 17
    bldc = 18
    gpio.setwarnings(False)
    gpio.setmode(gpio.BCM)
    gpio.setup(sck, gpio.OUT)
    

if __name__ == '__main__':
    try:
        configure()
    except rospy.ROSInterruptException:
        pass