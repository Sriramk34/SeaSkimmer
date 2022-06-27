#!/usr/bin/env python3

import serial
import time
import rospy
from std_msgs.msg import String

def readAndSend():
    ser = serial.Serial(            
    port='/dev/ttyACM0',
    baudrate = 9600,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
    timeout=1 )
    pub = rospy.Publisher("GPS_Raw", String, queue_size=10)
    rospy.init_node('GPS_Reader')
    rate = rospy.Rate(1)
    while not rospy.is_shutdown()and ser.is_open:
        try:
            data = str(ser.readline())
            pub.publish(data)
        except:
            rospy.loginfo("Error Occured")
            ser.close()
            ser.open()
        rate.sleep()
    try:
        rospy.loginfo("Closed Serial")
        ser.close()
    except:
        rospy.loginfo("Serial Failed to begin")

if __name__ == '__main__':
    try:
        readAndSend()
    except rospy.ROSInterruptException:
        pass
