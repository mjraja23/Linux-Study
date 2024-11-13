#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 number"
  exit 1
fi

# Check if the input is a valid integer
number=$1
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
  echo "Error: '$number' is not a valid integer."
  exit 2
fi

# Reverse the number using 'rev'
reversed=$(echo "$number" | rev)

# Handle negative numbers correctly
if [ "$number" -lt 0 ]; then
  # Remove the '-' from reversed string and prepend it
  reversed=$(echo "$reversed" | sed 's/-//')
  reversed="-$reversed"
fi

# Display the reversed number
echo "Reversed number: $reversed"
