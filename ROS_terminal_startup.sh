#!/bin/bash
var=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
var2="gdacer.local"
echo "IP address: $var"
export ROS_HOSTNAME=$var
export ROS_MASTER_URI="http://$var2:11311"
export ROS_IP=$var
echo "ROS_HOSTNAME is now: $ROS_HOSTNAME"
echo "ROS_MASTER_URI is now: $ROS_MASTER_URI"
echo "ROS_IP is now: $ROS_IP"
