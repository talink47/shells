#!/bin/sh

echo "Enter the upper limit (n): "
read n

echo "Prime numbers between 1 and $n:"
for ((num = 2; num <= n; num++)); do
    is_prime=true

    for ((i = 2; i < num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done

    if $is_prime; then
        echo -n "$num "
    fi
done

echo



#!/bin/sh

echo "Enter the upper limit (n): "
read n

echo "Prime numbers between 1 and $n:"
for ((num = 2; num <= n; num++)); do
    is_prime=true

    for ((i = 2; i < num; i++)); do
        [ $((num % i)) -eq 0 ] && { is_prime=false; break; }
    done

    $is_prime && echo -n "$num "
done

echo

