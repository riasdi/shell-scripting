#!/bin/bash

echo "Enter the two numbers"
read num1
read num2

if [ $num1 -gt $num2 ]
then
    echo "$num1 is greater then $num2"
elif [ $num1 -eq $num2 ]
then
    echo "Both numbers are equal"
else
    echo "$num2 is greater then $num1"     
fi