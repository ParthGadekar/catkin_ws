#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

def revolve():
    radius = float(input("Enter Radius :"))
    speed = float(input("Enter Speed :"))
    distance = 2*3.14*radius
    rospy.init_node('turtle_revolve', anonymous = True)  
    vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    rospy.Subscriber('/turtle1/pose', Pose, pose_callback)
    rate = rospy.Rate(5)
    while not rospy.is_shutdown() : 
        vel_msg.linear.x = speed
        vel_msg.linear.z = 0.0
        vel_msg.angular.z = speed/radius
        current_distance = 0
        t0 = rospy.Time.now().to_sec()
        while(current_distance < distance):
            vel_pub.publish(vel_msg)
            t1=rospy.Time.now().to_sec()
            current_distance = speed*(t1-t0)
            print current_distance
            print "Turtle is revolving"
        print "Turtle has stopped"
        vel_msg.linear.x=0
        vel_msg.linear.z=0
        rospy.signal_shutdown('finished')
    rate.sleep()

def pose_callback(vel):
    while not (round(vel.theta)==0.0):
        print vel.theta
    

if __name__=='__main__':
    try:
        revolve()
    except rospy.ROSInterruptException:
        pass