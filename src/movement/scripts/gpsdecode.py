#!/usr/bin/env python

import imp
from queue import Queue

from rosdep2 import RosdepInternalError
import rospy
from std_msgs.msg import String
from movement.msg import gpvtg,gpgga
import re


def checksum(s):
    line=s[len(s)-2:]
    linedata=re.sub("(\n|\r\n","",s[s.find("$")+1:line.find("*")])
    chksum=0
    for i in linedata:
        chksum ^= ord(i)
    if hex(chksum)==hex(int(chksum,16)):
        return True
    return False



def callback(data):
    rospy.loginfo("GPSSignal",data.data)
    if not checksum(data.data):
        return
    s = data.data
    pub = rospy.Publisher("GPGGA", gpgga, queue_size=10)
    pub2= rospy.Publisher("GPVTG", gpvtg, queue_size=10)
    rospy.init_node('GPS_Decode',anonymous=True)
    while not rospy.is_shutdown():
        msggga=gpgga()
        msgvtg=gpvtg()
        if Data[0]=="$GPGGA" :
            rospy.loginfo("GPVTG Formate")
            s=s.split(",")
            Data=(float(s[2]), s[3], float(s[4]), s[5], float(s[8]))
            latitude_formatted = str(Data[0])
            latitude_formatted = latitude_formatted[:2].lstrip('0') + "." + "%.7s" % str(float(latitude_formatted[2:])/ 60.0).lstrip("0.")
            if Data[1] == "S":
                lat = float(latitude_formatted)*-1
                msggga.lat.data = lat
            else:
                lat = float(latitude_formatted)
                msggga.lat.data=lat
            longitude_formatted = str(Data[2])
            longitude_formatted = longitude_formatted[:3].lstrip('0') + "." + "%.7s" % str(float(longitude_formatted[3:])/ 60.0).lstrip("0.")
            if Data[3] == "W":
                long = float(longitude_formatted)*-1
                msggga.long.data=long
            else:
                long = float(longitude_formatted)
                msggga.long.data=long
            Hdop = float(Data[4])
            msggga.Hdop.data=Hdop
            pub.publish(msggga)
        elif Data[0]=="$GPVTG":
            rospy.loginfo("GPVTG Format")
            s=s.split(",")
            Data=(float(s[1]), float(s[7]))
            track=Data[0]
            msgvtg.track.data=track
            speedkm=Data[1]
            msgvtg.speedkm.data=speedkm
            pub2.publish(msgvtg)
        else:
            return

def subscribe():
    rospy.init_node('subscriber_node',anonymous=True)
    rospy.subscriber("GPS_Raw", String, callback)
    rospy.spin()

if __name__ =='__main__':
    try:
        subscribe()
    except rospy.ROSInterruptException:
        pass