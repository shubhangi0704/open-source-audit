#!/bin/bash
# Script 1: System Identity Report
# Name: Shubhangi
# Registration Number: 24BOE10042
# Description: Displays Linux distribution, kernel version, user info,
# uptime, date/time, and license information.
dist_name=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')
kernel=$(uname -r)
user=$(whoami)
home_dir=$HOME
uptime=$(uptime -p)
current_time=$(date)

echo "======================================="
echo "      SYSTEM IDENTITY REPORT           "
echo "======================================="

echo "Linux Distribution: $dist_name"
echo "Kernel Version: $kernel"

echo "Logged-in User: $user"
echo "Home Directory: $home_dir"

echo "System Uptime: $uptime"
echo "Current Date & Time: $current_time"

echo "---------------------------------------"
echo "License Information:"
echo "This system is primarily based on the GNU General Public License (GPL),"
echo "which allows users to use, modify, and distribute software freely."
echo "======================================="
