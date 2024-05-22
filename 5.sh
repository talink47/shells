#!/bin/sh

echo "Scientific Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "6. x^2"
echo "7. x^3"
echo "8. x^y"
echo "9. Square Root"
echo "10. Sine"
echo "11. Cosine"
echo "12. Tangent"

read -p "Enter your choice (1-12): " choice

case $choice in
    1)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 + num2))
        ;;
    2)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 - num2))
        ;;
    3)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 * num2))
        ;;
    4)
        read -p "Enter numerator: " num1
        read -p "Enter denominator: " num2
        result=$((num1 / num2))
        ;;
    5)
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 % num2))
        ;;
    6)
        read -p "Enter a number: " num
        result=$((num * num))
        ;;
    7)
        read -p "Enter a number: " num
        result=$((num * num * num))
        ;;
    8)
        read -p "Enter base: " base
        read -p "Enter exponent: " exponent
        result=$((base ** exponent))
        ;;
    9)
        read -p "Enter a number: " num
        result=$((num ** (1/2)))
        ;;
    10)
        read -p "Enter angle in degrees: " angle
        result=$(sine=$(echo "s($angle * 3.141592653589793 / 180)" | bc -l) && echo "scale=4; $sine" | bc -l)
        ;;
    11)
        read -p "Enter angle in degrees: " angle
        result=$(cosine=$(echo "c($angle * 3.141592653589793 / 180)" | bc -l) && echo "scale=4; $cosine" | bc -l)
        ;;
    12)
        read -p "Enter angle in degrees: " angle
        result=$(tangent=$(echo "t($angle * 3.141592653589793 / 180)" | bc -l) && echo "scale=4; $tangent" | bc -l)
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo "Result: $result"

