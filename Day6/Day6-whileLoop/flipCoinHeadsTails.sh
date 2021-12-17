#!/bin/bash -x

#VARIABLES

head=1
headsCounter=0
tailsCounter=0

# TO COUNT  OF HEADS AND TAILS

while [ $headsCounter -le 10 -a $tailsCounter -le 10 ]
do
	flipCheck=$((RANDOM%2))
	case $flipCheck in
		$head)
			((headsCounter++))
			;;
		*)
			((tailsCounter++))
			;;
	esac
done

# TO CHECK FLIP COIN WINNER

if [ $headsCounter -eq 11 ]
then
	echo Head Wins
elif [ $tailsCounter -eq 11 ]
then
	echo Tail Wins
else
	echo Tie
fi

