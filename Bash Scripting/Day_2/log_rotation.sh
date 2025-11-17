#!/bin/bash

LOG_DIR="myapp"
LOG_FILE="app.log"
MAX_BACKUP=3


# Create directory if doesn't exist
mkdir -p $LOG_DIR

##LOG ROATATION
# app.log --> app.log.1 --> app.log.2

for((i=$MAX_BACKUP; i>0; i--));
do
    if [ -f "$LOG_DIR/$LOG_FILE.$i.gz" ]; then
         next=$((i+1))
        mv "$LOG_DIR/$LOG_FILE.$i.gz" "$LOG_DIR/$LOG_FILE.$next.gz" 
    fi
done

#if LOG_FILE does not exist
touch $LOG_DIR/$LOG_FILE

#compress LOG_FILE
if [ -f "$LOG_DIR/$LOG_FILE" ] 
then
    mv "$LOG_DIR/$LOG_FILE" "$LOG_DIR/$LOG_FILE.1"
    gzip "$LOG_DIR/$LOG_FILE.1"
fi


#Delete LOG FILE if no. is greater the MAX_BACKUP    
if [ -f "$LOG_DIR/$LOG_FILE.$((MAX_BACKUP+1)).gz" ]; then
    rm "$LOG_DIR/$LOG_FILE.$((MAX_BACKUP+1)).gz"
fi


