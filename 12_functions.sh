#!/bin/bash

userId=$(id -u)

if [ $userId -eq 0 ]; then
    echo "You are sudo user"
else
    echo "Please take sudo access,After you run this commands"
    exit 1
fi 

validation(){
    if [ ${1} -ne 0 ]; then
        echo "${2} not successfull....."
        exit 2
    else
        echo "${2} successfull..."
    fi
}

dnf install nginx -y
validation $? "nginx installation"

dnf install mysql -y
validation $? "mysql installation"