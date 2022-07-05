import rospy
from std_msgs.msg import Int32MultiArray as dtype
from std_msgs.msg import Float32 
import configparser
from math import sqrt, acos

class velocity_x:
    def __init__(self, arr):
        self.vel = 0
        self.depth = 0.5
        self.l,self.r,self.rho,self.tch, self.ych, self.mk, self.pk, self.drag_const = arr
        self.predictedvel = 0
        self.measured = 0
        self.prevTime = rospy.Time.now()

    def predict(self, input):
        self.depth = 2*self.r*self.depth
        self.area = (self.r**2)*acos((self.r-depth)/self.r) - (sqrt((2*self.r*depth)-(depth**2)) * (self.r-depth))
        self.weight = self.area*self.l*self.rho*2
        self.rpm = ((input[self.tch - 1]/1000)-1)*self.mk
        self.thrust = (self.rpm**2)*pk
        self.drag = self.drag_const*self.rho*self.area*(self.predictedvel**2)
        self.fnet = self.thrust - self.drag
        self.acc = self.fnet/self.weight
        self.t = ((self.prevTime - rospy.Time.now()).to_sec())/1000
        self.prevTime = rospy.Time.now()
        self.predictedvel += self.t*self.acc

    def measure(self):
        pass

def depth_update(data):
    obj.depth = data.data

def callback(inp, obj):
    obj.predict(inp.data)

def predict(velxobj):
    rospy.init_node("predict")
    prevTime = rospy.Time.now()
    rospy.Subscriber("Input", dtype, callback, callback_args = velxobj)
    rospy.Subscriber("depth", Float32, depth_update)
    rospy.spin()

if __name__ == '__main__':
    config = configparser.ConfigParser()
    config.read('botconf.ini')
    l = float(config['MAIN']['pontoon_len'])
    rad = float(config['MAIN']['pontoon_radius'])
    rho = float(config['MAIN']['fluid_density'])
    C = float(config['MAIN']['drag_const'])
    tch = int(config['CONTROL']['throttle_channel'])
    ych = int(config['CONTROL']['yaw_channel'])
    mk = float(config['CONTROL']['mk'])
    pk = float(config['CONTROL']['pk'])
    parameters = [l, rad, rho, tch, ych, mk, pk, C]
    obj = velocity_x(parameters)
    try:
        predict(obj)
    except rospy.ROSInterruptException:
        pass
