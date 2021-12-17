#!/bin/bash -x
is_bet=1
gambler_money=100
bet_times=0
bet_wins=0
bet_loss=0

while [ $gambler_money -gt 0 ] && [ $gambler_money -lt 200 ] && [ $is_bet -eq 1 ]
do
	flips=$((RANDOM%2))

	if [ $flips -eq 0 ]
	then
		bet_wins=$((bet_wins+1))
		gambler_money=$(($gambler_money+1))
	else
		bet_loss=$((bet_loss+1))
		gambler_money=$(($gambler_money-1))
	fi
		bet_times=$(($bet_times+1))
done
echo "Money:$gambler_money, BetTimes:$bet_times,  BetWins:$bet_wins, Betlost:$bet_loss"

