#!/bin/bash

# Prompt the user for input
read -p "Enter a positive integer n: " n

# Check if input is a valid positive integer
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid positive integer."
    exit 1
fi

# Initialize the first two Fibonacci numbers
a=0
b=1

echo "Fibonacci numbers less than or equal to $n:"

# Generate and print Fibonacci numbers
while [ $a -le $n ]; do
    echo -n "$a "
    # Calculate the next Fibonacci number
    fib=$((a + b))
    a=$b
    b=$fib
done

echo # Print a newline
