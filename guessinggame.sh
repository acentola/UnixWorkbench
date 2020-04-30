#!/usr/bin/env bash

echo "Please provide the number of files in the directory"
file_num=$(ls | wc -l)

function [num_diff](guess, file_num) {
diff=$(file_num-guess)
}

keep_guessing=true

while $keep_guessing
do
check=num_diff($guess, $file_num)
    if [[ $check-eq 0 ]]
    then
            echo "Congratulations! The correct number of files is $file_num"
            keep_guessing=false
    elif [[ $check -gt 0 ]]
    then
            echo "The number of files is higher, please try again"
    elif [[ $check -lt 0 ]]
    then
            echo "The number of files is lower, please try again"
    fi
done
