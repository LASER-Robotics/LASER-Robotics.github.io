---
layout: default
parent: UAV's
title: Software
nav_order: 3
has_children: false
permalink: uavs/software
---

# Software
## X500 - MRS UAV system
Firsts steps should be pretty straight forwards, by looking into [MRS uav-core](https://ctu-mrs.github.io/docs/software/uav_core/#system-requirements) and [installing](https://github.com/ctu-mrs/mrs_uav_system#installation).
Doing it in your own computer or in drone's computer, allows use the system or [simulate](simulation) it using gazebo simulator.
### Steps after a fresh installation:

!!!This steps are just for a real drone!!!

  - Connect through the drone via [SSH](https://ctu-mrs.github.io/docs/FAQ.html#how-do-you-ssh-to-the-robot), if already done the netplan configurated and the drone IP. If not, procced with a hdmi connection.
  - Run the script [check_uav](https://github.com/ctu-mrs/uav_core/blob/master/miscellaneous/scripts/check_uav.sh).
    - This script shows all the information that is wrong for run the system, and sugest possible solutions.
  - Configure bashrc variables, as see in [uav_core](https://ctu-mrs.github.io/docs/software/uav_core/#finishing-your-bashrc) 
  - Configure the world file in [mrs_uav_general](https://github.com/ctu-mrs/mrs_uav_general/tree/master/config/worlds) 
  - Run the script [just_flying](https://github.com/ctu-mrs/uav_core/blob/master/tmux_scripts/just_flying.sh). 
    - Check if all the terminals are running as expected, the script must be launched with the battery connected. The drone will not arm just running this script. 
    - If using GPS and world file was corrected configurete the dron should get all the information in status terminal.

