# TOSBAJA BRINGUP SERVICE
This repository is for setting up the systemctl service for tosbaja.
So that that when the tosbaja bot is booted the main ros2 nodes get launched automaticaly, the relating script for launching nodes takes also in consideration the network status and launches the nodes only when the tosbaja gets an ip address from the travel router or associated network.
## Main Functions
- Setup the necessary systemctl service enviroment parameters from the current enviroment variables and the input from the user.
- Copy the service  and start_up  files to the necessary directoryies.
- Give the files the required premissions.
- Reload the systemctl dameon and enable the service.
## Setup
- clone the main tosbaja package in to your workspace
    ```
    git clone tosbaja.... 
    ```
- run the setup_tosbaja_start_up.sh file
    ```
    bash setup_tosbaja_start_up.sh
    ```
- enter the absolute path of your workspace and press enter
- now if you reboot your robot the rsp.launch file will be launched automatically as soon as your network device gets an ip.

## TO-DO
- get network adapter name from enviroment, ask user for input
- expand the readme, that also absolute begginers can use this repo with their tosbaja