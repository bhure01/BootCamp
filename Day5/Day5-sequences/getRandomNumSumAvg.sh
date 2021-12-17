#!/bin/bash -x
randomNum1=$((1+RANDOM%100));
randomNum2=$((1+RANDOM%100));
randomNum3=$((1+RANDOM%100));
randomNum4=$((1+RANDOM%100));
randomNum5=$((1+RANDOM%100));
sumofRandomNum=$(($randomNum1 + $randomNum2 + $randomNum3 + $randomNum3 + $randomNum4 + $randomNum5));
echo sum of random number is $sumofRandomNum
avgofRandomNum=$(($sumofRandomNum/5));
echo average of random number is $avgofRandomNum


