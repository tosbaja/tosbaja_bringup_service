#!/bin/bash

empty_string=""
network_adapter="wlo1"
while true
do
  sleep 1
  string=$(ip -f inet addr show $network_adapter)

  if [ "$string" = "$empty_string" ]; then
      echo "No connection was found."
  else
      echo "Succesfully connected."
      break
  fi
done
