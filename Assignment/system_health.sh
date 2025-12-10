#!/bin/bash

log_file="system_health.log"

# Get CPU usage in percentage (user + system)
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
cpu_usage=${cpu_usage%.*}

# Get total and available memory
total_mem=$(free | awk '/Mem:/ {print $2}')
avail_mem=$(free | awk '/Mem:/ {print $7}')

# Calculate available memory percentage
avail_percent=$(( avail_mem * 100 / total_mem ))

# Log timestamp
echo "-------------------------------" >> "$log_file"
echo "Date: $(date)" >> "$log_file"
echo "CPU Usage: $cpu_usage%" >> "$log_file"
echo "Available Memory: $avail_percent%" >> "$log_file"

# Check conditions
if [[ $cpu_usage -gt 80 ]]; then
    echo "High CPU usage detected!" >> "$log_file"
fi

if [[ $avail_percent -lt 20 ]]; then
    echo "Low available memory detected!" >> "$log_file"
fi

echo "Health check logged successfully." >> "$log_file"
