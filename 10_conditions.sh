#!/bin/bash
echo "Enter your marks: "
read marks

if [ $marks -lt 35 ]; then
echo "Student fail"
elif [ $marks -lt 50 ]; then
echo "3rd class"
elif [ $marks -lt 75 ]; then
echo "2nd class"
elif [ $marks -lt 100 ]; then
echo "1st class"
fi
