---
layout: default
title: How to Simulate
parent: Simulation
nav_order: 2
---

# Running the Simulation

## How to run the simulation environment
You can now use the following command to start the environment (use these commands within your workspace):

```
source ./devel/setup.bash
roslaunch robot_description spawn.launch
```

If all goes well you will see L1Br inside the middle of the warehouse.

## How to run the robot control

If you want to move the robot through the warehouse use the following commands:
```
source ./devel/setup.bash
roslaunch robot_control control.launch
```

To move the tray open another terminal and use the command below with `"data: 1"` to go up and `"data: 0"` to go down:

```
rostopic pub -1 /my_robot/joint1_position_controller/command std_msgs/Float64 "data: 0"
```

## How to run the Rviz
To use sensors like `camera` and `optical sensor` we created a shortcut through Rviz:

```
source ./devel/setup.bash
roslaunch robot_description rviz.launch
```

