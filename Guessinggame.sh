#!/bin/bash

nof=$(ls -l|wc -l)
read -p "Guess the number of files in the current directory, type your guess and press enter:   " reply

until [[ $reply -eq $nof ]];
do
    if [[ $reply -gt $nof ]];then
	echo " $reply is too high, please try again"
else [[ $reply -lt $nof ]]
	 echo " $reply is too low, please try again"
    fi
    read -p "Guess the number of files in the current directory, type your guess and press enter:   " reply
done

echo "Congratulations, your guess is true"



