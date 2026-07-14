#!/bin/sh

echo "Lets do Arithmetic calculations"

read -p "Enter the 1st value: " val1
read -p "Enter the 2nd value: " val2

echo "Addition: $(($val1+$val2))"
echo "Subtraction: $(($val1-$val2))"
echo "Multiplication: $(($val1*$val2))"
div=$(($val1/$val2))
echo "Division: ${div}"
