#!/bin/bash
read -p "Enter the number:" n
i=0;
while (($i<=$n))
do 
	result=$((2**i))
	if [[ $result -le 256 ]]
	then
      echo 2^$i= $result
   	((i++))
   else 
	  	exit 0
	fi
done
