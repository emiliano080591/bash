#!/bin/bash

backup_file(){
    if [ -f $1 ]
    then 
        BACK="./back/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to ${BACK}"
        cp $1 $BACK
    else
        echo "File $1 not found"
        return 1
    fi
}
FILE=$1

backup_file $FILE
if [ $? -eq 0 ]
then
    echo "Backup succeeded"
    return 0
else
    echo "Backup failed"
    return 1
fi
