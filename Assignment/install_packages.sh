#!/bin/bash

input_file="packages.txt"
log_file="install_log.txt"

# Clear old log
> "$log_file"

# Check input file exist
if [[ ! -f "$input_file" ]]; then
    echo "Error: $input_file does not exist!"
    exit 1
fi

# Detect package manager
if command -v apt >/dev/null 2>&1; then
    pm="apt"
elif command -v yum >/dev/null 2>&1; then
    pm="yum"
elif command -v dnf >/dev/null 2>&1; then
    pm="dnf"
else
    echo "No supported package manager found!"
    exit 1
fi

echo "Using package manager: $pm"
echo "----- Installation Log (Date: $(date)) -----" >> "$log_file"

# Read package names
while IFS= read -r pkg; do
    # Skip empty lines
    if [[ -z "$pkg" ]]; then
        continue
    fi

    echo "Installing package: $pkg"

    # Install command
    if sudo $pm install -y "$pkg" >> "$log_file" 2>&1; then
        echo "$pkg: SUCCESS" >> "$log_file"
    else
        echo "$pkg: FAILED" >> "$log_file"
    fi

done < "$input_file"

echo "------------------------------------------" >> "$log_file"
echo "Installation complete! Log saved to $log_file"
