#!/bin/bash -x
read -p "Enter 3 input : " a
read b
read c

result1=$((a+b*c))

result2=$((a*b+c))

result3=$((c+a/b))

result4=$((a%b+c))

declare -A computation
computation[comp1]=$result1
computation[comp2]=$result2
computation[comp3]=$result3
computation[comp4]=$result4
counter=0
for value in ${computation[@]}
do
    arr[((counter++))]=$value
done

for ((i = 0; i<4; i++))
do
    for((j =0; j<4-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "${arr[@]}"
