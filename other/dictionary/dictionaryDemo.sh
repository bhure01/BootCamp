#!/bin/bash -x
declare -A sounds
Sounds[dog]="bark,demo,123"
Sounds[cow]="moo"
Sounds[bird]="tweet"
Sounds[wolf]="howl"

echo "Dog's Sounds" ${Sounds[dog]}

echo "All Animals Sounds" ${Sounds[@]}

echo "Animal Names" ${!Sounds[@]}

echo "Number Of Animals" ${#Sounds[@]}
