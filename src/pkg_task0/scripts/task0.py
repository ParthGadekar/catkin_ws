#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

def revolve():
    radius = 1 #float(input("Enter Radius :"))
    speed = 1 #float(input("Enter Speed :"))
    #raw_input("Press enter to continue") 
    distance = 2*3.141592653589793238*radius#radius
    rospy.init_node('turtle_revolve', anonymous = True)  
    vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    rospy.Subscriber('/turtle1/pose', Pose )
    rate = rospy.Rate(5)
    vel_msg.linear.x = speed
    vel_msg.linear.z = 0.0
    vel_msg.angular.z = speed/radius
    current_distance = 0
    t0 = rospy.Time.now().to_sec()
    while(current_distance < distance):
        vel_pub.publish(vel_msg)
        t1 = rospy.Time.now().to_sec()
        current_distance = speed*(t1-t0)
        print "Turtle is revolving   ",current_distance
    print"Turtle has stopped    ",distance
    vel_msg.linear.x=0
    vel_msg.angular.z=0
    rate.sleep()
    raw_input("Press enter to continue") 
    #rospy.spin()
    

if __name__=='__main__':
    try:
        revolve()
    except rospy.ROSInterruptException:
        pass