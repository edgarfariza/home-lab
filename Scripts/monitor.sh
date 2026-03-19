#!/bin/bash

# --- Home Lab System Monitor ---
# Author: Edgar F. Ariza Carreño
# Description: Script to monitor CPU, RAM, and Disk space in Ubuntu Server.

# 1. Capture RAM free in Megabytes
# We use 'free -m', grep the Memory line, and pick the 4th column (free).
FREE_RAM=$(free -m | grep "Mem:" | awk '{print $4}')

# 2. Capture Disk available in Gigabytes
# We use 'df -h' for the root partition (/), skip the header, and pick the 4th column.
FREE_DISK=$(df -h / | tail -1 | awk '{print $4}')

# 3. Capture CPU idle percentage
# We use 'top' in batch mode (-bn1) and extract the idle value using sed.
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | sed 's/.*, *\([0-9.]*\)%* id.*/\1/')

# --- Output Report ---
echo "----------------------------------------"
echo "SYSTEM STATUS REPORT"
echo "----------------------------------------"
echo "Free RAM:      $FREE_RAM MB"
echo "Available Disk: $FREE_DISK"
echo "CPU Idle:      $CPU_IDLE %"
echo "----------------------------------------"
