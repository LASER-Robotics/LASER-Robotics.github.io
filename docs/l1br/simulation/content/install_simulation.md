---
layout: default
grand_parent: L1Br
parent: Simulation
title: Install Simulation
nav_order: 1
permalink: l1br/simulation/install_simulation
---

# Install Gazebo Simulation

To serve you who have just installed ubuntu, we have a complete installation script that includes a series of applications and packages, ready to use the simulation in the simplest way.


## Simple install

Just run the code below in a terminal of your choice, it will verify and install all the programs necessary to use the warehouse, create its own workspace and insert the packages for the L1Br simulation.

```
curl -sLf https://raw.githubusercontent.com/LASER-Robotics/Warehouse_Gazebo/master/install_robot_simulation.sh | bash
catkin make
```

## Detailed install

Detailed installation is recommended for those who are already familiar with catkin and have installed programs like gazebo and ROS and want to understand what is needed to run the L1Br simulation.

### Requirements

- [ROS Noetic](http://gazebosim.org/tutorials?tut=install_ubuntu)
- [Gazebo](http://gazebosim.org/tutorials?tut=ros_installing&cat=connect_ros)
- [Rviz](http://wiki.ros.org/rviz/UserGuide)
- [Python 3.8](https://docs.python-guide.org/starting/install3/linux/)
- [ROS Control](http://wiki.ros.org/ros_control)
- [Joint State Publisher](https://zoomadmin.com/HowToInstall/UbuntuPackage/joint-state-publisher)

### Cloning repository

In your workspace inside the `src` folder clone the L1Br repository

```
git clone https://github.com/LASER-Robotics/Warehouse_Gazebo.git
```

Then go back to your catkin workspace and build the packages

```
catkin make
```

If everything works out, let's [run the simulation](https://laser-robotics.github.io/l1br/simulation/howto/)