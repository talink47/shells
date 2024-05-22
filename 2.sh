#!/bin/sh

read -p "Enter the value of 'n': " n

sum_even_numbers() {
    local n=$1
    local sum=0

    for ((i = 2; i <= n; i += 2)); do
        sum=$((sum + i))
    done

    echo $sum
}

result=$(sum_even_numbers $n)
echo "The sum of even numbers up to $n is: $result"
