import rospy
from std_msgs.msg import Int32MultiArray as dtype
from std_msgs.msg import Float32 
from movement.msgs import accgyro
import velocityclass as vc
import configparser
from math import sqrt, acos

def depth_update(dat, obj):
    obj.depth = dat.data

def callback(inp, obj):
    obj.predict(inp)

def integrate(dat, obj):
    obj.measure(dat.data)

def predict(velxobj):
    rospy.init_node("predict")
    prevTime = rospy.Time.now()
    rospy.Subscriber("Input", dtype, callback, callback_args = velxobj)
    rospy.Subscriber("depth", Float32, depth_update, callback_args = velxobj)
    rospy.Subscriber('MPU_data', accgyro, integrate, callback_args = velxobj)
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
    obj = vc.velocity(parameters, 'accx')
    try:
        predict(obj)
    except rospy.ROSInterruptException:
        pass
