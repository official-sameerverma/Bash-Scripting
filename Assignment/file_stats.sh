#!/bin/bash

# Ask user for file name
read -rp "Enter the text file name: " file

# Check file exists
if [[ ! -f "$file" ]]; then
    echo "Error: File does not exist!"
    exit 1
fi

echo "----- FILE STATISTICS -----"

# Count lines
lines=$(wc -l < "$file")
echo "Number of lines: $lines"

# Count words
words=$(wc -w < "$file")
echo "Number of words: $words"

# Count characters
chars=$(wc -m < "$file")
echo "Number of characters: $chars"

# Find longest word
longest=$(tr ' ' '\n' < "$file" | sed '/^$/d' | awk '{ if (length > max) { max = length; word = $0 } } END { print word }')

echo "Longest word: $longest"
