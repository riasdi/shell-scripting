#!/bin/bash

read -p " Enter the name: " name

case "$name" in
riva) echo "Welcome Admin";;
*)    echo "Access Denied " ;;
dias) echo "Welcome User" ;;
esac
