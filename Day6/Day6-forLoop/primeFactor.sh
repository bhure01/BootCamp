#!/bin/bash -x

read -p "Enter the number:" num
echo Factors of $num are
for ((i=2; i<=$num; i++))
do
	while [ $(($num%i)) -eq 0 ];
		do
			echo $i
			num=$(( $num/i ))
		done 
done

