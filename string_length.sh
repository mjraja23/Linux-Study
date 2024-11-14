#!/bin/bash

# Define an array of strings
strings=("apple" "banana" "cherry" "date" "elderberry")

# Iterate through the array and print the length of each string
for str in "${strings[@]}"; do
    length=${#str}
    echo "The length of '$str' is $length."
done
