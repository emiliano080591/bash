#!/bin/bash

output=$(brew list | grep espeak)

if [ "$?" -ne 0 ]; then
    echo "espeak no esta insalado"
    case "$OSTYPE" in
        "linux-gnu"*) apt-get install espeak -y
                    ;;
        "darwin"*) brew install espeak
                ;;
        *) echo "OS unsopported"
        ;;
    esac
    exit 1
else
    source "app.sh"
fi