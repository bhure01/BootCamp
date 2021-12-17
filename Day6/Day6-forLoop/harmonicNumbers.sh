#!/bin/bash -x
read -p "Enter the number:" n
i=1;
for ((i=1; i<=$n; i++))
do
	echo "1/"$i 
done
