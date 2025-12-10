#!/bin/bash

# Ask user for directory path
read -rp "Enter the directory path to compress: " dir_path

# Check if directory exists
if [[ ! -d "$dir_path" ]]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Get current date
current_date=$(date +"%Y-%m-%d")

# Extract the directory name
dir_name=$(basename "$dir_path")

# Output file name
output_file="backup_${dir_name}_${current_date}.tar.gz"

# Compress directory
tar -czf "$output_file" "$dir_path"

echo "Compression successful!"
echo "File saved as: $output_file"
