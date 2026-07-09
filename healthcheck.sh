#!/bin/bash

echo "==============================="
echo " Linux System Health Checker"
echo "==============================="
echo

echo "Date and Time:"
date
echo

echo "System Uptime:"
uptime
echo

echo "Disk Usage:"
df -h
echo

echo "Memory Usage:"
free -h
echo

echo "CPU Information:"
lscpu | head -10
echo

echo "Logged-in Users:"
who
echo

echo "Current User:"
whoami
echo

echo "Hostname:"
hostname
echo

echo "IP Address Information:"
ip addr show | grep "inet " | awk '{print $2}'
echo

echo "Top 5 Running Processes by Memory:"
ps aux --sort=-%mem | head -6
echo

echo "System Health Check Complete."
