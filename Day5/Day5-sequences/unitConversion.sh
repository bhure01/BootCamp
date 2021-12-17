#!/bin/bash -x
echo Enter the value of inch to convert
read inchValue
feetValue=`echo "scale=2; $inchValue/12" | bc`
echo conversion of inch into feet  $feetValue

