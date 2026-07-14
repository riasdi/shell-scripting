#!/bin/bash

addtn()
{
    return $(($1+$2))

}

multiply()
{
    return $(($1*$2))

}
echo "Enter the number"
read num1
read num2

addtn $num1 $num2
    addtn=$?

multiply $num1 $num2
   multiply=$?

echo "addition of num: $addtn "
echo "Multiplication of num: $multiply "