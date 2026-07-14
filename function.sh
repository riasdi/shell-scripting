#!/bin/bash
<<'comment'
function1()
{

    echo "Inside the function body";
}

function1
comment

add()
{
    sum=$(($1+$2))
    echo "sum is: $sum"
}

add 10 50 