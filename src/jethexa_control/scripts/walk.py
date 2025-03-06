#!/usr/bin/env python3
import rospy
import math
from std_msgs.msg import Float64

class HexapodController:
    def __init__(self):
        # 初始化ROS节点
        rospy.init_node('hexapod_gait_controller')
        
        # 步态参数配置
        self.gait_period = 2.0      # 完整步态周期（秒）
        self.step_height = 0.2     # 抬腿高度（米）
        self.step_length = 0.2      # 单步长度（米）
        self.phase_offset = 0.0     # 相位偏移（用于同步）
        
        # 关节控制话题列表（根据实际URDF修改）
        self.legs = ['LF', 'LM', 'LR', 'RF', 'RM', 'RR']
        self.controllers = {
            leg: {
                'coxa': rospy.Publisher(f'//coxa_joint_{leg}_position_controller/command', Float64, queue_size=10),
                'femur': rospy.Publisher(f'//femur_joint_{leg}_position_controller/command', Float64, queue_size=10),
                'tibia': rospy.Publisher(f'//tibia_joint_{leg}_position_controller/command', Float64, queue_size=10)
            } for leg in self.legs
        }
        
        # 三步态分组（交替摆动的腿组）
        self.tripod_group_1 = ['LF', 'RR', 'RM']
        self.tripod_group_2 = ['RF', 'LR', 'LM']

    def calculate_leg_position(self, leg, t):
        """计算单腿关节角度"""
        # 相位计算（不同组腿相位差半个周期）
        if leg in self.tripod_group_1:
            phase = math.pi * 2 * (t % self.gait_period) / self.gait_period
        else:
            phase = math.pi * 2 * (t % self.gait_period) / self.gait_period + math.pi

        # 摆动阶段参数计算
        swing_phase = 0.6  # 摆动相占周期比例
        lift_phase = 0.2   # 抬腿阶段比例

        if phase < 2 * math.pi * swing_phase:
            # 摆动相（抬腿移动）
            if phase < math.pi * lift_phase:
                # 抬腿阶段
                femur_angle = -math.pi/6 * (phase / (math.pi * lift_phase))
                tibia_angle = math.pi/3
            else:
                # 放下阶段
                femur_angle = -math.pi/6 + (math.pi/6 * ((phase - math.pi * lift_phase) / (math.pi * (swing_phase - lift_phase))))
                tibia_angle = math.pi/3 - (math.pi/3 * ((phase - math.pi * lift_phase) / (math.pi * (swing_phase - lift_phase))))
            
            # 髋关节摆动角度
            coxa_angle = math.sin(phase) * self.step_length
        else:
            # 支撑相（推动身体）
            coxa_angle = -self.step_length * (phase - math.pi * swing_phase) / (math.pi * (1 - swing_phase))
            femur_angle = 0.0
            tibia_angle = 0.0

        return coxa_angle, femur_angle, tibia_angle

    def run_gait(self):
        """主控制循环"""
        rate = rospy.Rate(50)  # 50Hz控制频率
        start_time = rospy.Time.now().to_sec()

        while not rospy.is_shutdown():
            current_time = rospy.Time.now().to_sec() - start_time
            current_time += self.phase_offset  # 应用相位偏移

            for leg in self.legs:
                # 计算各关节角度
                coxa_angle, femur_angle, tibia_angle = self.calculate_leg_position(leg, current_time)
                
                # 发布控制命令
                self.controllers[leg]['coxa'].publish(coxa_angle)
                self.controllers[leg]['femur'].publish(femur_angle)
                self.controllers[leg]['tibia'].publish(tibia_angle)

            rate.sleep()

if __name__ == '__main__':
    try:
        controller = HexapodController()
        rospy.loginfo("Starting tripod gait controller...")
        controller.run_gait()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS node interrupted")