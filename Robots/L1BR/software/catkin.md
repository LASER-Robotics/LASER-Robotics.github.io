---
layout: default
ancestor: robots
grand_parent: l1br
parent: software
title: Catkin
nav_order: 3
---

# What is Catkin?

Catkin is the official build system of ROS and the successor to the original ROS build system, rosbuild. catkin combines CMake macros and Python scripts to provide some functionality on top of CMake's normal workflow. catkin was designed to be more conventional than rosbuild, allowing for better distribution of packages, better cross-compiling support, and better portability. catkin's workflow is very similar to CMake's but adds support for automatic 'find package' infrastructure and building multiple, dependent projects at the same time.

## catkin install

Catkin is included by default when ROS is installed. Catkin can also be installed from source or prebuilt packages. Most users will want to use the prebuilt packages, but installing it from source is also quite simple, use the ROS website which provides all information about catkin.

To install catkin open your terminal and use the code below:

```yaml
sudo apt-get install ros-noetic-catkin
```
for more information acess:
- [catkin information](http://wiki.ros.org/catkin)