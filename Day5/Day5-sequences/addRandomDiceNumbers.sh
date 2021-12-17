#!/bin/bash -x
diceNumber1=$((1+RANDOM%6));
echo $diceNumber1;
diceNumber2=$((1+RANDOM%6));
echo $diceNumber2;
sumofDiceNumber=$(($diceNumber1 + $diceNumber2));
echo Sum of Dice Numbers is $sumofDiceNumber

