#!/bin/bash

validate(){ # functions recieve inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo "error :: Installing $2 is failure"
        exit 1
    else
        echo "installing $2 is sucess"
    fi
}

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install python3 -y
validate $? "dnf install python3"