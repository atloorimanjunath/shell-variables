#!/bin/bash

a=10
b=20

echo "The total value is $(($a+$b))"

declare -i total_banana=50
declare -i total_apple=70

declare -i total_price=$total_banana+$total_apple
echo $total_price

declare -i total=10
total=total+5
echo $total

my_arry=("AWS" "DEVOPS" "AIOPS")
echo "All fruits: ${my_arry[@]}"

