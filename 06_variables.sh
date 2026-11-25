#!/bin/bash

#take a command and insert that output in on variable

start_time=$(date +%s)
echo "Start time of the script $start_time"
sleep 10  #sleep 10 & means sleep running in background otherwise fourground

end_time=$(date +%s)
echo "End time of the script $end_time

total_time=$(($end_time - $start_time))

echo "Total time is $total_time"
