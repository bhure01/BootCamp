#!/bin/bash -x
value=1;
while [ $value != 3 ]
do
	value=$((RANDOM%6))
	echo $value
done

