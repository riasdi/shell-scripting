#!/bin/bash

read -p "Enter your name: " name 

if [ $name == "Admin" ]
then
    echo "Acess granted"
else
    echo "Acess Denied"
fi     