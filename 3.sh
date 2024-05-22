#!/bin/bash

read -p "Enter the number of terms in the series: " n
echo "Enter $n numbers, separated by spaces:"
read -a numbers

# Function to sort array
sort_array() {
    printf "%s\n" "$@" | sort -n
}

echo "Numbers in ascending order:"
sorted_array=($(sort_array "${numbers[@]}"))
echo "${sorted_array[@]}"
