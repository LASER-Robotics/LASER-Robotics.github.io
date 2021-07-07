---
layout: default
title: Install Simulation
parent: Simulation
nav_order: 1
---

# Install Gazebo Simulation

To serve you who have just installed ubuntu, we have a complete installation script that includes a series of applications and packages, ready to use the simulation in the simplest way.

First go to your catkin workspace using the command `cd`.

If you don't have a workspace, create a folder and write the following codes inside it:

```
mkdir -p src
catkin_make
```

## Simple install

Now just run the following command (in the `src` folder of your catkin workspace) to insert all the packages and their dependencies.

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

If everything works out, let's [run the simulation](https://laser-robotics.github.io/warehouseIO/docs/Simulation/howto/)