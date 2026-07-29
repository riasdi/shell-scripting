#!/bin/bash

read -p "Enter the name of the service:" SERVICE

if systemctl is-active --quiet "$SERVICE"; then
    echo "The $SERVICE service is running"
else
    echo "The $SERVICE service is not running"

   if systemctl start "$SERVICE"; then
      echo "The $SERVICE has been started"
   else
      echo "Failed to start $SERVICE service"
    fi  

fi
