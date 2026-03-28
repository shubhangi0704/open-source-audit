#!/bin/bash

echo "Enter package/software name:"
read package

# Check if installed (Debian-based systems)
if dpkg -l | grep -q "$package"
then
    echo "$package is installed."

    # Get version
    version=$(dpkg -l | grep "$package" | awk '{print $3}')
    echo "Version: $version"

    # Case statement for description
    case $package in
        firefox)
            echo "Firefox is an open-source web browser."
            ;;
        vim)
            echo "Vim is a powerful text editor."
            ;;
        git)
            echo "Git is a distributed version control system."
            ;;
        *)
            echo "General open-source software package."
            ;;
    esac
else
    echo "$package is NOT installed."
fi
