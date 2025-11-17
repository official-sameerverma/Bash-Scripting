#!/bin/bash

SOURCE_DIR="/mnt/d/VS Code/Shell Scripts/Bash Scripting/DAY_2"

BACKUP_DIR=myapp
ARCHIVE_FILE="app_backup.tar.gz"

mkdir -p "$BACKUP_DIR"


#Create Compressed File

tar -czf "$BACKUP_DIR/$ARCHIVE_FILE" -C "$SOURCE_DIR" .