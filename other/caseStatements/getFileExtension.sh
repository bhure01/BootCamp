#!/bin/bash -x

for fileName in $(ls)

do

# GET EXTENSION FROM FILENAME
extension=`echo $fileName | awk -F. '{print$2}'`

	case $extension in
		java)
			echo $fileName: java source file
			;;
		txt)
			echo $fileName: text file
			;;
		pdf)
			echo $fileName: pdf file
			;;
		sh)
			echo $fileName: shell script file
			;;
		*)
			echo $fileName: any other file
			;;	
	esac
done
