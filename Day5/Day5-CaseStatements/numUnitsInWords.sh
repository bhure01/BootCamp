#!/bin/bash -x
read -p "choose the number between 1-1000:" choice
case $choice in
	1)
		echo you choosed unit;;
	10)
		echo you choosed ten;;
	100)
		echo you choosed hundred;;
	1000) 
		echo you choosed thousand;;
esac


