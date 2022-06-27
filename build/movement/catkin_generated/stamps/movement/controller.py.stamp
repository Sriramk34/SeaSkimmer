#!/usr/bin/env python

import serial
import time
import rospy
from std_msgs.msg import Int32MultiArray as dtype

def controller_input():
    ser = serial.Serial('/dev/ttyAMA0', 115200, timeout=1)
    pub = rospy.Publisher("Input", dtype, queue_size=10)
    rospy.init_node("ibus", anonymous=False)
    while not rospy.is_shutdown() and ser.is_open:
        inc_byte = int.from_bytes(ser.read(), "little")
        rospy.loginfo(inc_byte)
        if inc_byte == 32:
            inc_byte = int.from_bytes(ser.read(), "little")
            if inc_byte == 64:
                buff = []
                for i in range(15):
                    buff.append(int.from_bytes(ser.read(2), "little"))
                pubarr = dtype()
                pubarr.data = buff
                pub.publish(pubarr)
            else:
                continue
        else:
            continue
            

if __name__ == '__main__':
    try:
        controller_input()
    except rospy.ROSInterruptException:
        pass
