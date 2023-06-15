#!/bin/bash

sudo cp tosbaja_startup.service /etc/systemd/system/
sudo cp tosbaja_startup.sh /usr/local/bin/

sudo chmod 744 /usr/local/bin/tosbaja_startup.sh
sudo chmod 664 /etc/systemd/system/tosbaja_startup.service

sudo systemctl daemon-reload
sudo systemctl enable tosbaja_startup.service
