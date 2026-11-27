#!/bin/bash

userId=$(id -u)

if [ ${userId} -ne 0 ]; then
echo "Please take sudo access"
exit 1
fi

echo "Procedede....."

dnf install nginxx -y

if [ $? -ne 0 ]; then
echo "Nginx instalation is worng please check"
else 
echo "nginx is instalation succesfully"
fi

