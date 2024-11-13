#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 number1 operator number2"
  echo "Operators:"
  echo "  +  : Addition"
  echo "  -  : Subtraction"
  echo "  x  : Multiplication"
  echo "  /  : Division"
  exit 1
fi

# Assigning command line arguments to variables
num1=$1
operator=$2
num2=$3

# Perform the arithmetic operation
case $operator in
  +)
    result=$(echo "$num1 + $num2" | bc)
    ;;
  -)
    result=$(echo "$num1 - $num2" | bc)
    ;;
  x)
    result=$(echo "$num1 * $num2" | bc)
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero is not allowed."
      exit 2
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Error: Invalid operator. Please use one of +, -, x, /."
    exit 3
    ;;
esac

# Display the result
echo "Result: $result"
