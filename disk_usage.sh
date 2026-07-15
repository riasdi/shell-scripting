#!/bin/bash

# calculating usage 
THRESHOLD=80
USAGE=$( df -h / | grep / | awk '{print $5}' | sed 's/%//' )

if [ $USAGE -gt $THRESHOLD ]; then
    echo "Disk Usage is above Threshold! Currently at $USAGE%"
else
    echo "Disk Usage is below Threshold. Currently at $USAGE%"    

fi


