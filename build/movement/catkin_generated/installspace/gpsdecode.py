#!/usr/bin/env python3

import imp
from queue import Queue
import rospy
from std_msgs.msg import String
from movement.msg import gpvtg,gpgga

def chkformat(s):
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
            Hdop = str(Data[4])
            msggga.Hdop.data=Hdop
        elif Data[0]=="$GPVTG":
            rospy.loginfo("GPVTG Format")
            s=s.split(",")
            Data=(float(s[1]), float(s[7]))
            track=Data[0]
            msgvtg.track.data=track
            speedkm=Data[2]
            msgvtg.speedkm.data=speedkm
        else: 
            pass

if __name__ == '__main__':
    try:
        chkformat()
    except rospy.ROSInterruptException:
        pass