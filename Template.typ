#let cv-color = rgb("#284967")
#set page(margin: (x: 0.9cm, y: 1.0cm))
#set text(font: "Noto Serif SC")
#set par(justify: true)
#let chiline = {
  v(-8pt)
  line(stroke: cv-color, length: 100%)
  v(-2pt)
}
#show "|": text(gray, " | ")
#show heading.where(level: 1): it => text(fill: rgb("#222222"), size: 20pt, it) + v(5pt)
#show heading.where(level: 2): it => text(cv-color, it) + chiline
#let item(a, b, c) = grid(
  columns: (20%, 1fr, 30%),
  align: (left, center, right),
  text(fill: rgb("#222222"), weight: "bold", a),
  text(rgb("#222222"), weight: "bold", b),
  text(rgb("#222222"), weight: "bold", c),
)

#set text(rgb("#333333"), size: 10pt)
#grid(
  columns: (1fr, auto),
  align(left)[

    #set text(rgb("#333333"), size: 16pt)
    Name | man | age

    #set text(rgb("#333333"), size: 10pt)
    电话：xxx-xxxx-xxxx | 微信：xxx-xxx | 邮箱：xxx-xxx\@xx.xx | 主页：https://github.com/xxxxx
  ],
)

#set text(rgb("#444444"), 13pt)
== 教育经历
#item[2023.9 \~ 2027.6][南京理工大学][电气工程及其自动化（本科）]
#set text(size: 9pt)

- 2024.9，加入 RoboMaster 南京理工大学 Alliance 机器人战队算法组。其中2025-2026赛季担任飞镖系统负责人，参与电控、算法开发。2026赛担任算法组长，主导新人培训、飞镖系统、英雄机器人、自定义客户端的算法与软件开发
- 2025.3，加入国家级科研训练课题组“面向配电网运维作业的机器人遥操作系统设计与实现”，负责软件和算法开发

#set text(size: 10pt)
== 专业技能
#set text(size: 9pt)

*编程与开发：*熟练使用C/C++，能够在Linux环境下开发，熟悉ROS系统，熟悉Git、Docker基本操作，拥有良好的代码编写习惯和工程管理能力

*算法与控制：*熟悉A\* 、混合A\* 寻路算法；熟悉经典与现代控制理论，了解非线性控制、预测控制，具备PID、滑模控制（SMC）的实际部署和调试经验；了解电机FOC控制原理

*电子与硬件：*有电子电气识图能力，有良好的布线习惯和经验，熟悉常见传感器原理，会使用示波器等常见硬件调试设备

#set text(size: 10pt)
== 项目经历

#set text(size: 10pt)
#item[2024.10 \~ 2026.6][RoboMaster飞镖系统][项目负责人]

#set text(size: 9pt)
*部分核心实现：*https://github.com/Alliance-Algorithm/rmcs_dart_guidance

- 基于 Linux 和 ROS 2 框架，实现上位机对多种型号电机、伺服舵机等底层执行机构的控制；完成了工业相机、激光雷达、力传感器等多种传感器的硬件集成与数据融合，开发了远距离目标识别与自主引导发射程序

- 设计实现了系统整体自动化控制电控架构，将各个基础机械动作打包，方便时序上调用，在需要加入新任务时可以快捷的开发，并能够在任务进度异常时做一定的处理，保护机械结构不受损坏

- 开发并调试电机-滚珠丝杠-滑台系统，通过电机反馈值快速判断是否到达限位，解决无绝对编码器的滑轨零点标定问题，该机构关系到飞镖发射力度，最终无制导飞镖的CEP（圆概率偏差）能稳定控制在1/400，并在过程中能够及时发现提出机械上的问题反馈给队友进行改进

- 开发并调试了飞镖发射底座 4Z 轴调平系统，基于IMU反馈，实现了Pitch、Roll两段式的4Z轴的快速自动调平，以适应倾斜度不同的地面。针对同一自由度上双边负载非对称的运动问题，引入交叉耦合控制及状态预测器实现位置估计，提升了系统的动态同步精度和运动过程中的稳定性

- 开发了基于激光雷达的基站式测距系统，并且为rviz2开发了交互插件，能够即时交互式测距，获取目标位置与当前位置的三维信息，也可以一键录制rosbag，离线处理点云信息

#set text(size: 10pt)
#item[2025.9 \~ 至今][RoboMaster英雄机器人][算法开发]

#set text(size: 9pt)
- 针对串联双 Yaw 轴云台系统，设计并实现了 PID + 前馈控制与滑模控制（SMC）的复合控制架构，解决了满载状态下云台响应迟缓和由于载弹量变化导致云台变惯量带来的控制震荡问题，确保了云台在运动过程中的指向精度与稳定性

- 开发了底盘爬升机构的运动控制组件，并实现了机器人攀越台阶地形的自动化动作，并优化了多轮轴底盘的功率分配算法，在各个阶段按需分配各轮轴的功率额度，使其能够以一个较高的能量利用率完成整车跨越地形任务

- 开发了英雄机器人发光弹丸轨迹长曝光的视觉辅助吊射方案，通过前端的目标识别和ROI、防抖配准、轨迹曝光和最终压缩等步骤，将工业相机采集的视频流即时处理成一张带发光弹丸轨迹的长曝光图像，使其可以利用较低的带宽传回，实现视觉辅助远距离吊射

#set text(size: 10pt)
#item[2025.3 \~ 2026.5][机器人遥操作系统设计与实现][算法开发]

#set text(size: 9pt)
*部分核心实现：*https://github.com/floatpigeon/Hybrid_Astar_for_Navigation

- 实现了Hyprid A\*算法，配合ESDF完成二维平面的路径规划，为后续实现半自动化遥操作提供了基础的导航功能

- 使用C\# + Avalonia，在Linux平台上自建第一人称操作机器人的客户端，用类似 HUD 的方式呈现机器人的各项性能状态

- 利用 Unity 的高性能渲染管线，开发了基于激光雷达数据的环境重构模块，使用双缓冲机制处理实时点云数据，支持单帧最多30万个点的渲染，通过UDP协议在后台线程接收激光雷达数据

#set text(size: 10pt)
== 获奖情况
#set text(size: 9pt)

全国大学生机器人大赛RoboMaster2025机甲大师高校联盟赛（上海站）3v3对抗赛 | 冠军

全国大学生机器人大赛RoboMaster2026机甲大师超级对抗赛区域赛（东部赛区） | 八强

全国大学生机器人大赛RoboMaster2025机甲大师超级对抗赛区域赛（东部赛区） | 十六强

全国大学生机器人大赛RoboMaster2025机甲大师超级对抗赛飞镖系统组 | 二等奖