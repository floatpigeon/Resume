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
== 个人信息
#grid(
  columns: (1fr, auto),
  align(left)[

    #set text(rgb("#333333"), size: 16pt)
    卜哲宇 | 男 | 20岁

    #set text(rgb("#333333"), size: 10pt)
    电话：18760060816 | 微信：FloatPigeon0816 | 邮箱：floatpigeon\@qq.com | 主页：https://github.com/floatpigeon
  ],
)

#set text(rgb("#444444"), 10pt)
== 教育经历
#item[2023.9 \~ 2027.6][南京理工大学][电气工程及其自动化（本科）]
#set text(size: 9pt)
*主修课程：*微机原理与接口技术，信号与系统，控制工程，电力电子技术，传感器与检测技术

*在校经历：*
- 2024.9-至今 加入南京理工大学RoboMaster机甲大师Alliance战队算法组；其中2026赛季担任算法组长
- 2025.3-至今 加入课题组“面向配电网运维作业的机器人遥操作系统设计与实现”，负责软件开发

#set text(size: 10pt)
== 专业技能
#set text(size: 9pt)

*编程与开发：*熟练使用C/C++，能够在Linux环境下开发，熟悉ROS系统，具备常用数据结构与多线程编程基础，熟悉Git、Docker操作，拥有良好的代码编写习惯和工程管理能力

*算法与控制：*熟悉经典与现代控制理论，熟悉A 、混合A 路径规划算法；了解鲁棒控制、非线性控制、模型预测控制，具备PID、滑模控制（SMC）的实际部署和调试经验

*电子与硬件：*有电子电气识图能力，能够使用EDA进行原理图绘制和PCB设计

#set text(size: 10pt)
== 项目经历
#set text(size: 10pt)
#item[2025.8 \~ 至今][RoboMaster英雄机器人][算法负责人]

#set text(size: 9pt)
*涉及技术：*C/C++|ROS 2|Linux|Docker|PID|SMC

*项目地址：*https://github.com/Alliance-Algorithm/RMCS/tree/steering-hero

- 基于 Linux-ROS 2 环境，针对串联双 Yaw 轴云台系统，设计并实现了“PID + 前馈控制”与“滑模控制（SMC）”的复合控制架构，解决了满载状态下云台响应迟缓和云台变惯量带来的控制震荡问题，并增强了系统在底盘剧烈晃动工况下的抗扰动能力，确保了云台在动态移动过程中的指向精度与稳定性

- 开发了底盘跨越爬升机构的运动控制逻辑，并实现了机器人攀越地形的半自动化动作，降低了操作员的控制负担

#set text(size: 10pt)
#item[2024.10 \~ 2025.7][RoboMaster飞镖系统][项目组长]

#set text(size: 9pt)
*涉及技术：*C/C++|ROS 2|Linux|CAN|UART|OpenCV|PCL

- 基于 Linux 和 ROS 2 框架，调研产品文档，完成多种型号电机、舵机的 CAN/UART 通信协议开发，实现上位机对底层执行机构的控制

- 通过状态机设计实现了装置的整体自动化控制电控架构，实现工业相机、激光雷达、力传感器多种传感器的硬件集成与数据融合，并开发了远距离目标识别与自主引导发射程序

- 针对双轴非对称负载的同步难题，摒弃传统 PID 方案，引入交叉耦合控制及状态预测器实现无感位置估计，大幅提升了系统的动态同步精度

#set text(size: 10pt)
#item[2025.3 \~ 至今][面向配电网运维作业的机器人遥操作系统设计与实现][软件组]

#set text(size: 9pt)
*涉及技术：*C/C++|C\#|ROS 2|Unity|A\*

*部分核心实现：*https://github.com/floatpigeon/Unity-Lidar-Viewer

https://github.com/floatpigeon/Hybrid_Astar_for_Navigation

- 利用 Unity 的高性能渲染管线，开发了基于激光雷达数据的环境重构模块，使用双缓冲机制处理实时点云数据，支持单帧最多30万个点的渲染，通过UDP协议在后台线程接收激光雷达数据

- 实现了Hyprid A\*算法，配合ESDF完成二维平面的路径规划，为后续实现半自动化遥操作提供了基础的导航功能

#set text(size: 10pt)
== 获奖情况
#set text(size: 9pt)

全国大学生机器人大赛RoboMaster2025积极大师高校联盟赛（上海站）3v3对抗赛 | 冠军

全国大学生机器人大赛RoboMaster2025机甲大师超级对抗赛区域赛（东部赛区） | 一等奖

全国大学生机器人大赛RoboMaster2025机甲大师超级对抗赛飞镖系统组 | 二等奖


