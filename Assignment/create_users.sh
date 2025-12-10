#!/bin/bash

# Absolute path to user_list.txt
input_file="/mnt/d/VS Code/Shell Scripts/Bash Scripting/Assignment/user_list.txt"

# Output file where credentials will be saved
output_file="/mnt/d/VS Code/Shell Scripts/Bash Scripting/Assignment/credentials.txt"

# Clear old credentials file
> "$output_file"

# Check if input file exists
if [[ ! -f "$input_file" ]]; then
    echo "Error: $input_file does not exist!"
    exit 1
fi

# Read each username and create the user
while IFS= read -r username; do
    
    # Skip empty lines
    if [[ -z "$username" ]]; then
        continue
    fi

    # Create user if not exists
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists. Skipping..."
        continue
    fi

    useradd "$username" -m

    # Generate a random password (12 chars)
    password=$(openssl rand -base64 12)

    # Set the password for this user
    echo "$username:$password" | chpasswd

    # Save to credentials file
    echo "Username: $username | Password: $password" >> "$output_file"

    echo "User created: $username"

done < "$input_file"

echo "----------------------------------------"
echo "All users processed successfully."
echo "Credentials saved in: $output_file"
echo "----------------------------------------"
