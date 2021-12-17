#!/bin/bash -x

read -p "Enter day :" day
read -p "Enter month 3-6 :" month
case $month in
	3)
		if (( $day<20 && $day>31 ))
		then
			echo "False"
		else
			echo "True"
		fi
	;;
	4)
		if (( $day<1 && $day>30 ))
		then
			echo False
		else
			echo True
		fi
	;;
	5)
		if (( $day<1 && $day>31 ))
		then
			echo False
		else 
			echo True
		fi
	;;
	6)
		if (( $day<1 && $day>20 ))
		then
				echo False
		else
				echo True
		fi
	;;
	*)
		echo False
esac

