#!/bin/bash

userId=$(id -u)

if [ ${userId} -ne 0 ]; then
echo "Please take sudo access"
fi

echo "Procedede....."