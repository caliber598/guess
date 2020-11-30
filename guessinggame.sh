#!/usr/bin/env bash

echo "Guess the number of files in the current directory:"

    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "What is your guess:"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is lesser."
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater."
        else
            echo "Congratulation, guess is right!!"
        break;
        fi
    done