#!/bin/bash
echo "===== SYSTEM INFORMATION ====="
hostnamectl
echo
echo "CPU Info:"
lscpu | grep "Model name"
echo
echo "Memory Info:"
free -h
echo
echo "Disk Usage:"
df -hT
