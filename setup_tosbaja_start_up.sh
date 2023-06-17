#!/bin/bash

echo "Enter the absolte path of your workspace:"
read ws_path

if [ ${ws_path: -1} = "/" ] 
then
    ws_path=${ws_path::-1}
fi

if [ ${ws_path:0:1} = "/" ]
then
    ws_path=${ws_path:1}
fi

echo $ws_path
cp tosbaja_startup_template.service tosbaja_startup.service
service_file="tosbaja_startup.service"
sed -i "s;current_user;$USER;" $service_file
sed -i "s;ros_distro;$ROS_DISTRO;" $service_file
sed -i "s;work_space_path;$ws_path;" $service_file
sed -i "s;ros_domain_id;$ROS_DOMAIN_ID;" $service_file

sudo cp tosbaja_startup.service /etc/systemd/system/
sudo cp tosbaja_startup.sh /usr/local/bin/

sudo chmod 744 /usr/local/bin/tosbaja_startup.sh
sudo chmod 664 /etc/systemd/system/tosbaja_startup.service

sudo systemctl daemon-reload
sudo systemctl enable tosbaja_startup.service
rm tosbaja_startup.service
