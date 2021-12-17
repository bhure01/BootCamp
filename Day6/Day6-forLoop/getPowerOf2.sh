#!/bin/bash
read -p "Enter the number:" n
i=0;
echo Power of 2:
for ((i=0; i<=$n; i++))
do 
	power=$((2**$i))
	echo 2^$i= $power
   (($i+1))
done
