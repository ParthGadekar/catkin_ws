#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

value = 0
initialPos = 0

def callback(data) :
    global initialPos
    pos = initialPos
    if data.theta == pos :
        rospy.signal_shutdown('finished')
        

def initialValue(data) :
    global initialPos
    initialPos = data.x

def main() :
    global initialPos
    global value
    rospy.init_node('turtle_revolve', anonymous = True)  
    vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    rospy.Subscriber('/turtle1/pose', Pose, initialValue)
    rate = rospy.Rate(5)
    while not rospy.is_shutdown() : 
        obj_msg = Twist()
        obj_msg.linear.x = 1.0
        obj_msg.linear.z = 0.0
        obj_msg.angular.z = 0.5
        vel_pub.publish(obj_msg)
    vel_sub = rospy.Subscriber('/turtle1/pose', Pose, callback)
    rate.sleep()

def pose_callback(msg):
    print(msg.theta)


if __name__=='__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass