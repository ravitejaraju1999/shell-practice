#!/bin/bash


userid=$(id -u)

if [ $userid -ne 0 ]; then

    echo "error:: Please run the script with root privelege"

fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error:: Installing mysql is failure"
else
    echo "mysql installation sucess"

fi



