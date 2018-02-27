#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guessing Game"

function ask {
	echo "Please guess number of files in directory:"
	read guess
	files=$(ls -l | wc -l)
}
ask
while [[ $guess -ne $files ]]
do 
	if [[ $guess -lt $files ]]
	then
		echo "Too Low."
	else
		echo "Too High."
	fi
ask
done
echo "Correct! There are $files files in this directory"
