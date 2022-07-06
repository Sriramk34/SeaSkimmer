import rospy
from math import acos, sqrt
from std_msgs.msg import Int32MultiArray as dtype
from std_msgs.msg import Float32 
from movement.msgs import accgyro

class velocity:
    def __init__(self, arr, axis):
        self.pub = rospy.Publisher("velocity", Float32)
        self.vel = 0
        self.depth = 0.5
        self.l,self.r,self.rho,self.tch, self.ych, self.mk, self.pk, self.drag_const = arr
        self.predictedvel = 0
        self.velint = 0
        self.measured = 0
        self.prevTime = rospy.Time.now()
        self.axiskey = axis

    def predict(self, input):
        self.depth = 2*self.r*self.depth
        self.area = (self.r**2)*acos((self.r-self.depth)/self.r) - (sqrt((2*self.r*self.depth)-(self.depth**2)) * (self.r-self.depth))
        self.weight = self.area*self.l*self.rho*2
        self.rpm = ((input[self.tch - 1]/1000)-1)*self.mk
        self.thrust = (self.rpm**2)*self.pk
        self.drag = self.drag_const*self.rho*self.area*(self.predictedvel**2)
        self.fnet = self.thrust - self.drag
        self.acc = self.fnet/self.weight
        self.t = ((self.prevTime - rospy.Time.now()).to_sec())/1000
        self.prevTime = rospy.Time.now()
        self.predictedvel += self.t*self.acc

    def measure(self, arr):
        self.measured += arr[self.velch]*9.81*0.01