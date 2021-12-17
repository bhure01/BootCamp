#!/bin/bash -x
read -p "Enter the start range:" m
read -p "Enter the end range:" n 
echo Prime numbers between $m and $n are 
for a in $(seq $m $n)
do
	k=0
	for i in $(seq 2 $(expr $a - 1 ))
	do
		if [ $(expr $a % $i) -eq 0 ]
		then
			k=1
			break
		fi
	done
	if [ $k -eq 0 ]
	then
		echo $a
	fi
done
