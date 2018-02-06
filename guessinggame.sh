#!/bin/bash

function guessinggame {
	num=$(ls -l | wc -l)
	echo "guess the number of files in the current directory: "
	read guess
	while [[ $guess -ne $num && $guess -ne quit ]]
	do
		if [[ $guess -lt $num ]]; then
			echo "your guess is too low, guess again, or type "quit" to exit"
		elif [[ $guess -gt $num ]]; then
			echo "your guess is too high, guess again, or type "quit" to exit"
		fi
		read guess
	done
	if [[ $guess -eq $num ]]; then
		echo "you've guessed correctly, congrats"
	fi
	if [[ $guess -eq quit ]]; then
		echo "i'm sorry you gave up"
	fi
}
