#!/bin/bash

read -p "Enter the marks: " marks

case $marks in

9[0-9]|100) echo "Your gradee is: ++" ;;
8[0-9])     echo "Your gradee is: A+" ;;
7[0-9])     echo "Your gradee is: A" ;;
6[0-9])     echo "Your gradee is: B" ;;
5[0-9])     echo "Your gradee is: C" ;;
4[0-9])     echo "Your gradee is: D" ;;
*)          echo "Your gradee is: F" ;;

esac