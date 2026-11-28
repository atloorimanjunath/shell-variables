#!/bin/bash

userId=$(id -u)

if [ $userId -eq 0 ]; then
echo "You are sudo user"
else
echo "Please take sudo access,After you run this commands"
fi 

dnf install nginx -yy

if [ $? -ne 0 ]; then
echo "Nginx installation not successfull....."
else
echo "Nginx installation successfull..."
fi

echo "Proceding...."
