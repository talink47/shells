#!/bin/sh

factorial() {
    if [ $1 -eq 0 ] || [ $1 -eq 1 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}
read -p "Enter a number to find its factorial: " num
result=$(factorial $num)
echo "Factorial of $num is: $result"
