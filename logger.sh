#!/bin/bash

set -eo pipefail

DEBUG_MODE=${DEBUG_MODE:-false}
ALL_LOG_FILE="all-log-file.txt"
STRUCTURED_LOG_FILE="structured-log-file.txt"

log(){
    local message=$1
    local timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    local log_message="[$timestamp] - $message"
    
    echo $log_message
    echo $log_message >> $STRUCTURED_LOG_FILE
}

createFile(){
    local file_name=$1
    rm -f $file_name && touch $file_name
}

createFile $ALL_LOG_FILE
createFile $STRUCTURED_LOG_FILE

if [[ $DEBUG_MODE == true ]]; then
    tail -f $ALL_LOG_FILE &
else
    tail -f $STRUCTURED_LOG_FILE &
fi
exec 1>>$ALL_LOG_FILE 2>>$ALL_LOG_FILE

log "Checking Docker Containers"
docker ps
docker images 
echo "Not Important Log"