#!/usr/bin/env python
import serial
import time
import rospy
from std_msgs.msg import Int32MultiArray as dtype
import configparser

def checksum(arr, headersum=0x60):
    cs = 0xFFFF - headersum
    for i in range(14):
        cs -= arr[i] & 0x00FF
        cs -= arr[i] >> 8
    if cs == arr[14]:
        return True

def controller_input(killSwitchChannel):
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
                if not checksum(buff):
                    continue
                if buff[killSwitchChannel] < 1500:
                    continue
                pubarr = dtype()
                pubarr.data = buff
                pub.publish(pubarr)
            else:
                continue
        else:
            continue
            

if __name__ == '__main__':
    config = configparser.ConfigParser()
    config.read("botconf.ini")
    ks_ch = int(config['CONTROL']['kill_sw_channel']) -1
    try:
        controller_input(ks_ch)
    except rospy.ROSInterruptException:
        pass
