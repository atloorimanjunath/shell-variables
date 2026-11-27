#!/bin/bash

userId=$(id -u)

if [ ${userId} -nq 0 ]; then
echo "Please take sudo access"
fi

echo "Procedede....."