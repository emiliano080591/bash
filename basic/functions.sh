#!/bin/bash

hello(){
    for NAME in $@
    do
        echo "Hola $NAME"
    done
    now
}

now(){
    echo "Its $(date +%r)"
}

NAMES=$@
hello $NAMES