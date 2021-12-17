#!/bin/bash -x

inchToFeet=1
feetToInch=2
feetToMeter=3
meterToFeet=4

echo Unit Conversion Choices:

echo Inch to Feet: $inchToFeet
echo Feet to Inch: $feetToInch
echo Feet to Meter: $feetToMeter
echo Meter to Feet: $meterToFeet

read -p "Enter the Choice:" choice

 case $choice in
		$inchToFeet)
         read -p "Enter the Value in inch:" value
			echo Inch to Feet
			feetValue=$(( value/12 ))
         echo Feet: $feetValue
      ;;
      $feetToInch)
         read -p "Enter the Value in feet:" value
			echo Feet to Inch
         inchValue=`echo "scale=2; $value*12" | bc` 
         echo Inch: $inchValue
      ;;
      $feetToMeter)
         read -p "Enter the Value in feet:" value
         echo Feet to Meter
         meterValue=`echo "scale=2; $value/3.28" | bc`
         echo Meter: $meterValue
      ;;
      $meterToFeet)
         read -p "Enter the Value in meter:" value
         echo Meter to Feet
         feetValue=`echo "scale=2; $value*3.28" | bc`
         echo Feet: $feetValue
      ;;
      *)
        echo Invalid choice

	esac
