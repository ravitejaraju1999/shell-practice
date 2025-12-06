#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){ # functions recieve inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo "error :: Installing $2 is failure"
        exit 1
    else
        echo "installing $2 is sucess"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install mysql -y
    validate $? "mysql"
else
    echo "mysql is already exist"
fi

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install nginx -y
    validate $? "nginx"
else
    echo "nginx is already exist"
fi

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install python3 -y
    validate $? "python3"
else
    echo "python3 is already exist"
fi




