#!/bin/bash

# Best practice: Comment your code
# This script demostrates best practice in shell scripting
# Best practice error handling

set -e
# Function to handle errors
handler_error(){
    echo $?
    echo "An error ocurred. Exiting"
    exit 1
}

# Trap errors and call the function
trap 'handler_error' ERR
echo "Executing the mains script"
# Simulating an error
nonexistent_command
echo "Script completed successfully"