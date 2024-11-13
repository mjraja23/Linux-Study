#!/bin/bash

# Display header
echo "File information in the current directory"
echo "---------------------------------------------------------------"
printf "%-30s %-10s %-12s %-10s %-10s %s\n" "File Name" "Size" "Permissions" "Owner" "Group" "Last Modified"
echo "---------------------------------------------------------------"

# Loop through all files in the current directory
for file in *
do
    # Only process regular files
    if [ -f "$file" ]; then
        # Retrieve file information
        FILESIZE=$(stat -c%s "$file")
        PERMISSIONS=$(stat -c%A "$file")
        OWNER=$(stat -c%U "$file")
        GROUP=$(stat -c%G "$file")
        LASTMOD=$(stat -c%y "$file")
        
        # Print file information
        printf "%-30s %-10s %-12s %-10s %-10s %s\n" "$file" "$FILESIZE" "$PERMISSIONS" "$OWNER" "$GROUP" "$LASTMOD"
    fi
done

echo "---------------------------------------------------------------"
