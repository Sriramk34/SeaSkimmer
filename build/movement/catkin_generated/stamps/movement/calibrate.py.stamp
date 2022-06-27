#!/usr/bin/env python
import rospy
from smbus import SMBus as sm
import time

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


def read(bus, ad):
    arr = []
    addr = 0x3B #Starting address of the data on the MPU 605
    for i in range(7):
        t = bus.read_byte_data(ad, addr)
        addr += 1
        t = (t<<8)|bus.read_byte_data(ad, addr)
        addr += 1
        arr.append(t)
    values = [convert(x) for x in arr]
    values[0] = values[0]/16384.0
    values[1] = values[1]/16384.0
    values[2] = values[2]/16384.0
    values[4] = values[4]/131.0
    values[5] = values[5]/131.0
    values[6] = values[6]/131.0
    return values

def decode():
    rospy.init_node("Calibration")
    rospy.loginfo("Place the robot in a level place")
    time.sleep(2)
    rospy.loginfo("Starting Calibration..")
    addr = 0x68
    i2c = sm(1)
    i2c.write_byte_data(addr, 0x6B, 0x00)
    axerror = 0.0
    ayerror = 0.0
    azerror = 0.0
    gxerror = 0.0
    gyerror = 0.0
    gzerror = 0.0
    for i in range(200):
        rospy.loginfo("Iteration" + str(i))
        temparr = read(i2c,addr)
        res = temparr
        axerror += res[0]
        ayerror += res[1]
        azerror += res[2]
        gxerror += res[4]
        gyerror += res[5]
        gzerror += res[6]
    correction_str = str(axerror/200.0) + " " + str(ayerror/200.0) + " " + str(azerror/200.0) + " " + str(gxerror/200.0) + " " + str(gyerror/200.0) + " " + str(gzerror/200.0)
    rospy.loginfo("Calibrated Successfully")
    f = open("Correction.txt", "w")
    f.write(correction_str)
    f.close()
    i2c.close()

if __name__ == '__main__':
    try:
        decode()
    except rospy.ROSInterruptException:
        pass
