#!/bin/sh

echo "Enter three numbers:"
read num1 num2 num3

smallest=$num1

if [ $num2 -lt $smallest ]; then
    smallest=$num2
fi

if [ $num3 -lt $smallest ]; then
    smallest=$num3
fi

echo "The smallest among $num1, $num2, and $num3 is: $smallest"
