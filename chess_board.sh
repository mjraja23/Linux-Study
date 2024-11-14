#!/bin/bash

# Dimensions of the chessboard
rows=8
cols=8

# Loop through each row
for ((i=1; i<=rows; i++)); do
    # Loop through each column
    for ((j=1; j<=cols; j++)); do
        # Calculate if the sum of row and column indexes is even or odd
        sum=$((i + j))
        if ((sum % 2 == 0)); then
            # Print white square
            echo -ne "\e[47m  \e[0m"  # White background
        else
            # Print black square
            echo -ne "\e[40m  \e[0m"  # Black background
        fi
    done
    # Move to the next line after each row
    echo
done
