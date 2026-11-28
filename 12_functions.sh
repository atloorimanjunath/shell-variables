#!/bin/bash

userId=$(id -u)

if [ $userId -eq 0 ]; then
echo "You are sudo user"
else
echo "Please take sudo access,After you run this commands"
exit 1
fi 

echo "Proceding.."

dnf install nginx -yyy

if [ $? -ne 0 ]; then
echo "Nginx installation not successfull....."
exit 2
else
echo "Nginx installation successfull..."
fi

echo "Proceding...."
