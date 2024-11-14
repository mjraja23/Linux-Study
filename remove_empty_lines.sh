#!/bin/bash

# Check if the file name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Assign input filename to a variable
FILE=$1

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

# Create a backup of the original file
cp "$FILE" "${FILE}.bak"

# Remove empty lines from the file
sed -i '/^$/d' "$FILE"

echo "Empty lines removed. A backup has been created as ${FILE}.bak"
