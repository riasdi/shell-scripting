#!/bin/bash

# checking for the root privileges
if [ "$EUID" -ne 0 ]; then 
    echo "The script should be run as root"
    exit 1
fi


echo "Starting with system update and cleaning process"

apt-get update && apt-get upgrade -y && apt-get autoremove -y && apt-get clean

echo "System packages updated and cleaned up" 