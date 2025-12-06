#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){ # functions recieve inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo -e"error :: Installing $2 is $R failure $N"
        exit 1
    else
        echo -e"installing $2 ...$G is sucess $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install mysql -y
    validate $? "mysql"
else
    echo -e"$Y mysql is already exist $N"
fi

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install nginx -y
    validate $? "nginx"
else
    echo -e"$Y nginx is already exist $N"
fi

dnf list installed mysql
if [ $? -ne 0 ];then
    dnf install python3 -y
    validate $? "python3"
else
    echo -e"$Y python3 is already exist $N"
fi




