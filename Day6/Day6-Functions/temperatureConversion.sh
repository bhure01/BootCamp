#!/bin/bash -x

fahrenheit_to_celsius()
{
	fahrenheit=$1
	celsius=$(echo "scale=4; ( $fahrenheit -32 ) * 5 / 9" | bc-1)
	echo "$fahrenheit  fahrenheit=$celsius celsius"
}

celsius_to_fahrenheit()
{
	celsius=$1
	fahrenheit=$(echo "scale=4; ( $celsius * 9 / 5 ) + 32" | bc-1)
	echo "$celsius  celsius=$fahrenheit fahrenheit"
}

echo "SElect the option"
echo "1 for degF to degC"
echo "2 for degC to degF"
read option

case $option in
	1)
		read -p "Enter the temperature value in fahrenheit (with in fp and bp of water):" fh
		if (( fh > 32 && fh < 212 ))
			then
				fahrenheit_to_celsius $fh
			else
				echo  Entered temp value is not within fp and bp of water
		fi
		;;

	2)
		read -p "Enter the temperature value in celsius (with in fp and bp of water):" cs
		if (( cs > 0 && cs < 100 ))
			then
				celsius_to_fahrenheit $cs
			else
				Entered temp value is not within fp and bp of water
		fi
		;; 

	*)
		echo Please select options either 1 or 2
		;;
esac
