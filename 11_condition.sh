#!/bin/bash

userId=$(id -u)

if [ ${userId} -ne 0 ]; then
echo "Please take sudo access"
exit 1
fi

echo "Procedede....."