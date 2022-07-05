import rospy
from std_msgs.msg import Int32MultiArray as dtype
from std_msgs.msg import Float32 
import configparser
from math import sqrt, acos

vel = 0
depth_percent = 0.5
prevTime = 0

def depth_update(data):
    global depth
    #TODO calculate depth from raw data
    depth = data.data

def callback(inp, param):
    global vel
    global prevTime
    global depth_percent
    l,r,rho,tch, ych, mk, pk, drag_const = param
    depth = 2*r*depth_percent
    area = (r**2)*acos((r-depth)/r) - (sqrt((2*r*depth)-(depth**2)) * (r-depth))
    weight = area*l*rho*2
    inp_arr = inp.data
    throttle = (inp_arr[tch-1]/1000) - 1
    rpm = mk*throttle
    thrust = (rpm**2)*pk
    drag = drag_const*rho*area*vel*vel*2
    #rospy.loginfo("Drag - " + str(drag))
    fnet = thrust - drag
    acc = fnet/weight
    current_time = rospy.Time.now()
    t = (current_time - prevTime)
    ti = t.to_sec()/1000
    vel += acc*ti
    #rospy.loginfo("TIme Diff" + str(ti))
    rospy.loginfo("Current Velocity - " + str(vel))
    
    

def predict():
    rospy.init_node("predict")
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
    global prevTime
    prevTime = rospy.Time.now()
    parameters = [l, rad, rho, tch, ych, mk, pk, C]
    rospy.Subscriber("Input", dtype, callback, callback_args = parameters)
    rospy.Subscriber("depth", Float32, depth_update)
    rospy.spin()

if __name__ == '__main__':
    try:
        predict()
    except rospy.ROSInterruptException:
        pass
