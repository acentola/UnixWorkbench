#!/usr/bin/env bash

echo "Please provide the number of files in the directory"
file_num=$(ls | wc -l)

num_diff () {
	let diff=$(($2-$1))
}

keep_guessing=true

while $keep_guessing
do
        read guess
        num_diff $guess $file_num

        if [[ $diff -eq 0 ]]
        then
                echo "Congratulations! The correct number of files is $file_num"
                keep_guessing=false
        elif [[ $diff -lt 0 ]]
        then
                echo "The number provided is too high, please try again"
        elif [[ $diff -gt 0 ]]
        then
                echo "The number provided is too low, please try again"
        fi
done
