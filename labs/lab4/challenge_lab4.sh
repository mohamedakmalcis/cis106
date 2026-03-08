#!/bin/bash

echo "-------------------------------------"
figlet System

echo "DATE UTC: $(date -u)"
echo "HOSTNAME: $(hostname)"
echo "UPTIME: $(uptime -p)"
echo "USER: $USER"

echo "-------------------------------------"
figlet Memory

free -h

echo "-------------------------------------"
figlet Disk

df -h /


