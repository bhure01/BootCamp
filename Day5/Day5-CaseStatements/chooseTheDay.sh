#!/bin/bash
read -p "choose the day between 1-7:" choice
case $choice in
	1)
		echo Monday;;
	2)
		echo Tuesday;;
	3)
		echo Wednesday;;
	4)
		echo Thursday;;
	5)
		echo Friday;;
	6)
		echo Saturday;;
	7)
		echo Sunday;;
esac

