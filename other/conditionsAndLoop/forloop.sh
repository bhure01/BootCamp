#!/bin/bash  -x
files=`ls *.txt`
echo $files 
for file in $files
do
 	folderName=`echo $file | awk -F. '{print$1}'`
	if [ -d $folderName ]
	then
		rm -r $folderName;
	fi
	mkdir $folderName;
	cp $file $folderName;
	echo coppied $file $folderName;
        printf "\n";
done

