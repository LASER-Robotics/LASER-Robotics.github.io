---
layout: default
parent: UAV's
title: First Fly
nav_order: 2
has_children: false
permalink: uavs/first_fly
---

# First Fly
  ##Recommendations:
    - Those who doesn't have experiences with flying a drone, should try to fly first in a simulated environment, this will make you get used to the transmitter, after that fly a drone through a flight controller and without any kind of expensive or unnecessary equipment, to avoid damage in a crash case.  Cheap drones toys are an optional to get used how to fly, also the radiomaster transmitter can bind with a lot of them.
    - Check with the propellers are in the right direction. A good way to see it is understanding the front propellers and the back ones, must spin going into the body of the drone, so if each propeller must generate a force downwards, the front of the attack angle must be in the same direction that the motors spins. 
    - Calibrate all sensors and transmitter using QGroundControl.
  ##Flying:
    - This [tutorial](https://youtu.be/2U1khK2NeVo) should be enough to understand how to control the drone.
  ##NOTES:
    ###Manual flight mode:
      - The drone is 100% control by the pilot, being the only duty of the flight controller to stabilize the drone in the horizontal position. So in this mode the pilot feels all the disturbances acting, be aware that all environment will be different in this mode, get used to the behavior of your drone to feel comfortable in this mode.
      - Throttle on this mode doesn't hover the drone, but control the amount of thrust when horizontal stabilize. What means that the pilot must to discovery the hover point every time. Constantly variation on throttle is recommended, once you can lose or gain altitude moving away.
    ###Altitude flight mode:
      - Throttle must be in 50% to hover, more or less than this the drone goes upper or lower the altitude.
      - Horizontal disturbances are not handle by the flight controller.
    ###Position flight mode:
      - This mode is completely dependent on GPS, and will be stable in all directions by it. DO NOT USE INDOOR, GPS doesn't work in indoors environments.
    ###Good practices:
      - Start piloting in manual mode, will give more knowledge about drones behavior, switch to altitude and position mode whenever you need to take back the control. 
      - Pay attention in the taking off process, arm the motors, increase throttle until you feel the drones a lifting, when this happens look what direction it's drifting and compensate it in the transmitter, then increase the throttle more until take off. 
      - It's easy to takeoff rapidly increasing throttle, but just do it once you get comfortable with the aircraft.
