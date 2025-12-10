#!/bin/bash

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
mem_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
disk_usage=$(df / | awk 'END{print $5}' | tr -d '%')

echo "CPU: $cpu_usage%"
echo "RAM: $mem_usage%"
echo "Disk: $disk_usage%"

if (( ${cpu_usage%.*} > 80 )); then
  echo "⚠️ HIGH CPU Usage"
fi

if (( ${mem_usage%.*} > 80 )); then
  echo "⚠️ HIGH MEMORY Usage"
fi

if (( disk_usage > 80 )); then
  echo "⚠️ DISK Almost Full"
fi
