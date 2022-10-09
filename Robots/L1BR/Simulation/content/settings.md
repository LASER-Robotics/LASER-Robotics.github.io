---
layout: default
ancestor: robots
grand_parent: l1br
parent: simulation
title: How to change settings
permalink: robots/l1br/simulation/settings
nav_order: 3
---

# Changing a few default settings 

Sometimes you want to change the simulation to be more appropriate with your ideal scenario, for example the world, or the sensor used. 


## Change the world

The default world in the simulation is the LASER laboratory. 

![Captura de tela de 2022-02-14 10-17-51](https://user-images.githubusercontent.com/36930457/153973472-42bc273f-a10a-4549-b32f-b5b069e2e958.png)

But as long as you have the <code>.world</code> file in the "world" folder, you can use that file as the world. To do so use <code>world:=(name of the world file)</code> at the end of the roslaunch command. For example: 

```
roslaunch robot_description spawn.launch world:=warehouse
```

## Change the laser sensor

There are 2 options for a laser sensor in the simulation. The regular lidar sensor, and the rplidar, the last one being the default one. To change that, go to the <code>spawn.launch</code> file and change the values of the sensors arguments from true to false and vice versa.

![Captura de tela de 2022-02-14 10-48-12](https://user-images.githubusercontent.com/36930457/153974014-1b2725eb-7508-4a84-8ca5-c780668ff0a7.png)

