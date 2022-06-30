#!/usr/bin/env python3

import rospy
from smbus import SMBus as sm
import time
from movement.msg import accgyro

def convert(x):
    bnum = list(bin(x))[2:]
    res = ""
    if len(bnum) == 16:
        bnum.pop(0)
        for i in bnum:
            if i == "0":
                res += "1"
            else:
                res += "0"
        return -1*int(res,2)
    else:
        return x


def read(bus, ad, error):
    arr = []
    addr = 0x3B #Starting address of the data on the MPU 605
    for i in range(7):
        t = bus.read_byte_data(ad, addr)
        addr += 1
        t = (t<<8)|bus.read_byte_data(ad, addr)
        addr += 1
        arr.append(t)
    values = [convert(x) for x in arr]
    values[0] = values[0]/16384.0 - error[0]
    values[1] = values[1]/16384.0 - error[1]
    values[2] = values[2]/16384.0 - error[2]
    values[4] = values[4]/131.0 - error[3]
    values[5] = values[5]/131.0 - error[4]
    values[6] = values[6]/131.0 - error[5]
    return values

def talker():
    rospy.loginfo("Run Calibrate before running this file")
    addr = 0x68
    i2c = sm(1)
    i2c.write_byte_data(addr, 0x6B, 0x00)
    calibrated = False
    try:
        f = open("Correction.txt", "r")
        calibrated = True
        fs = f.read()                           #fs - File String
        values = [float(x) for x in fs.split()]
        f.close()
    except:
        rospy.loginfo("Please Run Calibration")
    
    pub = rospy.Publisher("MPU_data", accgyro, queue_size = 10)
    rospy.init_node("MPU_Read", anonymous = False)
    rate = rospy.Rate(100)
    while not rospy.is_shutdown() and calibrated:
        accgyrodata = accgyro()
        arr = read(i2c, addr, values)
        accgyrodata.accx.data = arr[0]
        accgyrodata.accy.data = arr[1]
        accgyrodata.accz.data = arr[2]
        accgyrodata.gyrox.data = arr[4]
        accgyrodata.gyroy.data = arr[5]
        accgyrodata.gyroz.data = arr[6]
        pub.publish(accgyrodata)
        rate.sleep()
    i2c.close()
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException :
        pass
