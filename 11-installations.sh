#!/bin/bash


userid=$(id -u)

if [ $userid -ne 0 ]; then

    echo "error:: Please run the script with root privelege"
    exit 1 #failure is other than zero

fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error:: Installing mysql is failure"
    exit 1 
else
    echo "mysql installation sucess"

fi



