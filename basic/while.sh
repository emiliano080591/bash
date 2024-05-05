#!/bin/bash

INDEX=1
while [ $INDEX -lt 6 ]; do
    echo "Creating project-${INDEX}"
    mkdir ./project-${INDEX}
    ((INDEX++))
done

while [ "$CORRECT" != "y" ]; do
    read -p "Enter your name: " NAME
    read -p "Is ${NAME} correct? " CORRECT
done

grep be /etc/autofs.conf | while read LINE 
do
    echo "be: ${LINE}"    
done


while true; do
    read -p "1: Show disk usage. 2: Show uptime. " CHOICE
    case "$CHOICE" in
        1)
            df -h
            ;;
        2)
            uptime
            ;;
        *)
            break
            ;;
    esac
done