#!/bin/bash -x
value=2;
while [ $value != 3 ]
do
	echo  $value
	      ((value++))
done

