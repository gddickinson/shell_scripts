#!/bin/bash
var=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
echo "IP address: $var"
export ROS_MASTER_URI=http://$var:11311
export ROS_IP=$var
echo "ROS_MASTER_URI is now: $ROS_MASTER_URI"
echo "ROS_IP is now: $ROS_IP"
echo -n "Enter serial port name, e.g. ACM0: "
read port
echo "XV_11 laser started on port /dev/tty$port"
rosrun xv_11_laser_driver neato_laser_publisher _port:=/dev/tty$port _firmware_version:=2
