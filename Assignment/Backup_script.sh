#!/bin/bash

#Creates a directory named "backup" in the user's home directory
backup_dir="$HOME/backup"
mkdir -p "$backup_dir"

# Get current date and time
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Copy all .txt files and rename with timestamp
for file in *.txt; do
    if [[ -f "$file" ]]; then
        base_name=$(basename "$file" .txt)
        cp "$file" "$backup_dir/${base_name}_$timestamp.txt"
    fi
done

echo "Backup completed! Files copied to $backup_dir"

