#!/bin/bash

# Check if file argument is given
if [ -z "$1" ]
then
    echo "Usage: $0 <logfile>"
    exit 1
fi

logfile=$1
error_count=0
warning_count=0

# Read file line by line
while read line
do
    if echo "$line" | grep -q "ERROR"
    then
        ((error_count++))
    elif echo "$line" | grep -q "WARNING"
    then
        ((warning_count++))
    fi
done < "$logfile"

echo "========= Log File Analysis ========="
echo "File: $logfile"
echo "ERROR lines: $error_count"
echo "WARNING lines: $warning_count"
echo "====================================="
