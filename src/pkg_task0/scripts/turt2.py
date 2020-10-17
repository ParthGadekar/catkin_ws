#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

value = 0
initialPos = 0

def callback(data) :
    global initialPos
    pos = initialPos
    vel_msg = Twist()
    if data.x == pos :
        rospy.signal_shutdown('finished')
        vel_msg.linear.x = 0.0
        vel_msg.angular.z = 0.0

        

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
        vel_msg.linear.x = 1.0
        vel_msg.linear.z = 0.0
        vel_msg.angular.z = 1.0
    vel_pub.publish(vel_msg)
    vel_sub = rospy.Subscriber('/turtle1/pose', Pose, callback)
    rate.sleep()


if __name__=='__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass