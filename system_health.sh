#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2)}')
MEM=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')
DISK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "===== System Health Report ====="
echo "CPU Usage    : $CPU%"
echo "Memory Usage : $MEM%"
echo "Disk Usage   : $DISK%"

echo ""
echo "Running Processes:"
ps -e | wc -l

if [ "$CPU" -gt 80 ]; then
    echo "WARNING: CPU usage is above 80%"
fi

if [ "$MEM" -gt 80 ]; then
    echo "WARNING: Memory usage is above 80%"
fi

if [ "$DISK" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%"
fi