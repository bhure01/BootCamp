#!/bin/bash -x

echo check first ls command
ls
if [ $? -eq 0 ];
then
	echo ls command is valid
else 
	echo ls command is not valid
fi
echo check second hello command
hello
if [ $? -eq 0 ];
then 
	echo hello command is valid
else
	echo hello command is not valid
fi
