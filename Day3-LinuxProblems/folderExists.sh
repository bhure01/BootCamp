#!/bin/bash -x
echo enter the folder name
read newFolderName

if [ -d "$newFolderName" ];
then
	echo folder is already exists
else
	mkdir -p $newFolderName;
	echo $newFolderName is created
fi

