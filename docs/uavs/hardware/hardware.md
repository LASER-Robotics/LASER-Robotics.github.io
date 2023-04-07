---
layout: default
parent: UAV's
title: Hardware 
nav_order: 1
has_children: false
permalink: uavs/hardware
---

# Hardaware
X500 Holybro frame - MRS configuration
  - Specs:
    - Pixhawk 4
    - Intel NUC NUC10i7FNH
    - MRS distribution board V2 rev01
    - PX4 GPS
    - LIDAR-Lite v3 Laser Rangefinder by Garmin
    - RC Radiomaster R81-D8
    - MN3510-13 KV:700 Navigator Series T-Motor
    - Lumenier BLHeli_32 51A 2-6s
  - Connection diagram: 
      <img src="/fig/connection_diagram.svg" alt="Connection diagram" style="height: 200px; width:200px;"/>
      <img src="/fig/garmin_diagram.svg" alt="Connection diagram" style="height: 200px; width:200px;"/>
      <img src="/fig/board_diagram.svg" alt="Connection diagram" style="height: 200px; width:200px;"/> 
  - Binding process:
    - All binding process you can check in [MRS Github IO](https://ctu-mrs.github.io/docs/hardware/r81_receiver_setup.html)
  - Pixhawk configuration:
    - All Pixhawk configurations you can also look in [MRS Github IO](https://ctu-mrs.github.io/docs/hardware/px4_configuration.html)
  - Motors configurations:
    - Use [BLHeli software](https://github.com/bitdump/BLHeli/tree/master/BLHeli_32%20ARM) to update the version and parameters of the ESC, also setting up the motors correct spin direction, to set the parameters use this [file](https://github.com/ctu-mrs/uav_core/tree/master/miscellaneous/blheli32_esc_config/Quad)
	NOTE: Motors test must be done with battery connected, but all the rest can be done just connecting Pixhawk through the usb port.
