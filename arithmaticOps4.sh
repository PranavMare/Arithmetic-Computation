#! /bin/bash -x

read -p "Enter 3 input" read a
read b
read c

result1=$((a+b*c))

result2=$((a*b+c))

result3=$((c+a/b))

result4=$((a%b+c))
