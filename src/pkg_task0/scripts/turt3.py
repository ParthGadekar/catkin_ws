#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
PI = 3.1415926535897

def revolve():

    rospy.init_node('turtle_revolve', anonymous = True)  
    vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    speed=36 #degrees/sec
    angle=360
    angular_speed=speed*2*PI/360#radians/sec
    radian_angle=angle*2*PI/360
    rospy.Subscriber('/turtle1/pose', Pose)
    rate = rospy.Rate(5) 
    vel_msg.linear.x = 1.0
    vel_msg.linear.z = 0.0
    vel_msg.angular.z = abs(angular_speed)
    current_angle = 0
    t0 = rospy.Time.now().to_sec()
    while(current_angle < radian_angle):
        vel_pub.publish(vel_msg)
        t1=rospy.Time.now().to_sec()
        current_angle = angular_speed*(t1-t0)
        print current_angle
        print "Turtle is revolving"
    print "Turtle has stopped"
    vel_msg.linear.x=0
    vel_msg.angular.z=0
    rospy.signal_shutdown('finished')
    rospy.spin()
    #raw_input("Press enter to continue") 

    

if __name__=='__main__':
    try:
        revolve()
    except rospy.ROSInterruptException:
        pass