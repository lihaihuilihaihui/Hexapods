#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64

def move_joint(joint_name, angle):
    # 创建发布器（话题名称格式：/控制器名称/command）
    pub = rospy.Publisher(f'//{joint_name}_position_controller/command', Float64, queue_size=10)
    rospy.sleep(0.1)  # 等待发布器初始化
    pub.publish(angle)
    rospy.loginfo(f"Moving {joint_name} to {angle} rad")

def simple_walk():
    rospy.init_node('walk_controller')
    
    # 示例：控制左前腿髋关节摆动
    while not rospy.is_shutdown():
        move_joint("coxa_joint_LF", 0.5)  # 摆动到0.5弧度
        rospy.sleep(1)
        move_joint("coxa_joint_LF", -0.5) # 摆动到-0.5弧度
        rospy.sleep(1)

if __name__ == '__main__':
    try:
        simple_walk()
    except rospy.ROSInterruptException:
        pass