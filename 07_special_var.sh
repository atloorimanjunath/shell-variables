#!/bin/bash

echo "All the args passed to the shell script: $@"
#echo "All the args passed to the shell script one world: $*"
echo "Number of args I sent to the script: $#"
echo "first variable of script: $1"
echo "script name: $0" 
echo "script realpath $(realpath $0)"
echo "directory of the shell script: $PWD"
echo "who is running current script: $USER"
echo "home directory of the current user: $HOME"
echo "PID of the current script: $$"
sleep 10 &
echo "background PID now: $!"
wait $! #script waits until $! command complete
echo "line number: $LINENO"