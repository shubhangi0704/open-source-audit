#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Name: Shubhangi
# Registration Number: 24BOE10042
# Description: Takes user input and generates a personalized
# open-source philosophy statement saved to a file.

echo "===== Open Source Manifesto Generator ====="

# User input
echo "What does open source mean to you?"
read meaning

echo "Why do you think sharing code is important?"
read reason

echo "What kind of projects would you like to build?"
read projects

# Current date
today=$(date)

# Output file
file="manifesto_$(date +%Y%m%d).txt"

# Writing to file
echo "----- My Open Source Manifesto -----" > $file
echo "Date: $today" >> $file
echo "" >> $file
echo "Open source to me means: $meaning" >> $file
echo "I believe sharing code is important because: $reason" >> $file
echo "In the future, I want to build: $projects" >> $file
echo "" >> $file
echo "I support openness, collaboration, and transparency in technology." >> $file

echo "Manifesto saved in $file"

# Alias concept (for understanding, not executed automatically)
# You could create an alias like:
# alias manifesto='./script5_manifesto_generator.sh'
