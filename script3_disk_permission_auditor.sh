#!/bin/bash

echo "======= Disk and Permission Auditor ======="

# List of directories
dirs="/ /home /var /tmp /usr"

for dir in $dirs
do
    echo "------------------------------------------"
    echo "Directory: $dir"

    # Disk usage
    usage=$(df -h $dir | awk 'NR==2 {print $5}')
    echo "Disk Usage: $usage"

    # Permissions and owner
    details=$(ls -ld $dir)
    owner=$(echo $details | awk '{print $3}')
    perms=$(echo $details | awk '{print $1}')

    echo "Owner: $owner"
    echo "Permissions: $perms"
done

echo "==========================================="
