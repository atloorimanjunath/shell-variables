#!/bin/bash

echo "Script Starting time: $(date +"%Y-%m-%d %H:%M:%S")" &>> log_file

log_floder="/var/log/shell-variables"
log_file="${log_floder}/${0}.log"

userId=$(id -u)

if [ $userId -eq 0 ]; then
    echo "You are sudo user" &>> log_file
else
    echo "Please take sudo access,After you run this commands" &>> log_file
    exit 1
fi 

mkdir -p ${log_floder}

validation(){
    if [ ${1} -ne 0 ]; then
        echo "${2} not successfull....." | tee -a log_file
        exit 2
    else
        echo "${2} successfull..." | tee -a log_file
    fi
}

dnf install nginx -y 
validation $? "nginx installation" &>> log_file

dnf install mysql -y
validation $? "mysql installation" &>> log_file

echo "Script Ending time: $(date +"%Y-%m-%d %H:%M:%S")" &>> log_file
