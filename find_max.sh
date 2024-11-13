#!/bin/bash

# Check if at least one argument is provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 num1 [num2 ... numN]"
  echo "Provide at least one number to find the largest."
  exit 1
fi

# Initialize max with the first argument
max=$1

# Loop through all the arguments
for num in "$@"
do
  # Check if input is a valid integer
  if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Error: '$num' is not a valid integer."
    exit 2
  fi

  # Compare and update max if current number is larger
  if [ "$num" -gt "$max" ]; then
    max=$num
  fi
done

# Display the largest number
echo "The largest number is: $max"
