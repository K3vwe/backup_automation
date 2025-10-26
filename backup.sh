#!/bin/bash
# This script copies a folder or a set of files from one location to another

# Stop if any command fail
set -e
# ignore error from hidden folder
shopt -s nullglob dotglob

# Set Variables
fileToCopy=/Users/victoronowho/logs
destination=/Users/victoronowho/devops_learning
timestamp=$(date "+%Y_%m_%d-%H_%M_%S")
backupScript_log=/Users/victoronowho/logs/backup_script.log

# Store the logt file from backup script
exec >> "$backupScript_log" 2>&1
echo "Backing up script started at $timestamp"

mkdir -p "$destination"

# Check if file to copy from exist
if [ ! -d "$fileToCopy" ]; 
then
    echo "$fileToCopy doesn't exist"
    exit 1
fi

BACKUP="$destination/backup_$date"
mkdir -p "$BACKUP"

cp -a "$fileToCopy"/. "$BACKUP"
echo "File copied successfully"

echo "Backup finished at $timestamp"
