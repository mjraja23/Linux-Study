#!/bin/bash

# Check if exactly one argument is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 n"
  echo "Provide a positive integer to generate the pattern."
  exit 1
fi

# Check if the input is a valid positive integer
n=$1
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Error: '$n' is not a valid positive integer."
  exit 2
fi

# Generate the pattern
for (( i=1; i<=n; i++ ))
do
  for (( j=1; j<=i; j++ ))
  do
    echo -n "$j "
  done
  echo # Newline
done
