#!/bin/bash -x

#TAKE DICTIONARIES VALUE AT ZERO
declare -A rollDice
	echo "${rollDice[@]}"
	result=1
while [ $(( rollDice[$result] )) -ne 10 ]
do
#TO RANDOM NUMBER
	result=$((RANDOM%6+1))
	rollDice[$result]=$((rollDice[$result]+1))
	echo "  "
	echo "${rollDice[@]}"
	echo "  "
done

#PRINT KEY
	echo "key" "${!rollDice[@]}"

#PRINT LENGTH
length=${#rollDice[@]}
	echo "length:"$length

#TO VARIABLE 
minimumValue=$((rollDice[1]))
maximumValue=0

for (( index=1; index<=length; index++ ))
do
	if [ $((rollDice[$index])) -gt  $maximumValue ]
	then
		maximum=$((rollDice[$index]))
	fi

	if [ $((rollDice[$index])) -lt  $minimumValue ]
	then
		minimum=$((rollDice[$index]))	
	fi
done

#TO PRINT 
echo "Minnimum Number" "$minimum"
echo "Maximum Number" "$maximum"
