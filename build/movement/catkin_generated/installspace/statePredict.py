import rospy
from std_msgs.msg import Int32MultiArray as dtype
from std_msgs.msg import Float32 
import configparser
from math import sqrt, acos

vel = 0
depth = 0.5
prevTime = 0

def depth_update(data):
    global depth
    #TODO calculate depth from raw data
    depth = data.data

def callback(inp, param):
    global vel
    global prevTime
    global depth
    l,r,rho,tch, ych, mk, pk, drag_const = param
    area = (r**2)*acos((r-depth)/r) - (sqrt((2*r*depth)-(depth**2)) * (r-depth))
    weight = area*l*rho*2
    inp_arr = inp.data
    throttle = (inp_arr[tch-1]/1000) - 1
    rpm = mk*throttle
    thrust = (rpm**2)*pk
    drag = drag_const*rho*area*vel*vel*2
    fnet = thrust - drag
    acc = fnet/weight
    current_time = rospy.time()
    t = (current_time - prevTime)/1000
    vel += acc*t 
    
    
    

def predict():
    rospy.init_node("predict")
    config = configparser.ConfigParser()
    l = config['MAIN']['pontoon_len']
    rad = config['MAIN']['pontoon_radius']
    rho = config['MAIN']['fluid_density']
    C = config['MAIN']['drag_const']
    tch = config['CONTROL']['throttle_channel']
    ych = config['CONTROL']['yaw_channel']
    mk = config['CONTROL']['mk']
    pk = config['CONTROL']['pk']
    global prevTime
    prevTime = rospy.time()
    parameters = [l, rad, rho, tch, ych, mk, pk, C]
    rospy.Subscriber("Input", dtype, callback, callback_args = parameters)
    rospy.Subscriber("depth", Float32, depth_update)
    rospy.spin()

if __name__ == '__main__':
    try:
        predict()
    except rospy.ROSInterrupException:
        pass