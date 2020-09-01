#! /bin/bash -x

read -p "Enter 3 input" a b c 

result1=$((a+b*c))

result2=$((a*b+c))

result3=$((c+a/b))

result4=$((a%b+c))

declare -A computation
computation[comp1]=$result1
computation[comp2]=$result2
computation[comp3]=$result3
computation[comp4]=$result4
