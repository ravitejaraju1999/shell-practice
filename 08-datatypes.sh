#!/bin/bash


# every thing in shell considered as string


#number1=100
#number2=200


number1=$1
number2=$2


echo "$number1 $number2"
sum=$(($number1+$number2))

echo "sum is :$sum"