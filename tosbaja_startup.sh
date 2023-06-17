#!/bin/bash

waitForNetworkToGetAnIp(){
  while true
  do
    sleep 1
    string=$(ip -f inet addr show $2)

    if [ "$string" = "$1" ]; then
        echo "No ip address was found."
    else
        echo "Succesfully got an ip."
        break
    fi
done
}

# TO-DO get network adapter name from enviroment in this case wlo1
waitForNetworkToGetAnIp "" "wlo1"

source /opt/ros/$ROS_DISTRO/setup.bash
source $WORK_SPACE_PATH/install/setup.bash
ros2 daemon stop
ros2 daemon start
ros2 launch start_tosbaja rsp.launch.py
