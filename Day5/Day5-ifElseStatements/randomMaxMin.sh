#!/bin/bash -x

num1=$((1+RANDOM%1000));
num2=$((1+RANDOM%1000));
num3=$((1+RANDOM%1000));
num3=$((1+RANDOM%1000));
num4=$((1+RANDOM%1000));
num5=$((1+RANDOM%1000));
echo num1:$num1
echo num2:$num2
echo num3:$num3
echo num4:$num4
echo num5:$num5
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]  && [ $num1 -gt $num4 ] && [ $num1 -gt $num5 ]
then
	echo num1 is maximum
elif [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ] && [ $num2 -gt $num5 ]
then
	echo num2 is maximum
elif [ $num3 -gt $num4 ] && [ $num3 -gt $num5 ]
then
	echo num3 is maximum
elif [ $num4 -gt $num5 ]
then
	echo num4 is maximum
else
	echo num5 is maximum
fi

