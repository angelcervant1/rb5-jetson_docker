#!/bin/bash

chmod 700 /root/.ssh
chmod 600 /root/.ssh/id_rsa
chmod 644 /root/.ssh/id_rsa.pub
chmod 644 /root/.ssh/config  
chown -R root:root /root/.ssh

# When connected to MARS network
export ROS_IP=192.168.0.91
export ROS_MASTER_IP=192.168.0.170
export ROS_MASTER_URI=http://$ROS_MASTER_IP:11311

source /ros_ws/orb_slam2_ws/devel/setup.bash 
source /ros_ws/rb5-flight-summer-dev_ws/rb5_flight/devel/setup.bash --extend
