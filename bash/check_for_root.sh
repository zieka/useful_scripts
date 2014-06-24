#!/bin/bash
#Checks if script was called with sudo or as root user

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root or sudo"
    exit
fi
