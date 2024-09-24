#!/bin/bash

# MongoDB URI 
MONGO_URI=""

# Backup directory
BACKUP_DIR="/home/whatever"

#timestamp for the backup
TIMESTAMP=$(date +"%F_%T")

#directory with the current timestamp to store the backup
BACKUP_PATH="$BACKUP_DIR/mongo_backup_$TIMESTAMP"
mkdir -p "$BACKUP_PATH"

# Performing backup using mongodump
mongodump --uri="$MONGO_URI" --out="$BACKUP_PATH"

# if backup was successful
if [ $? -eq 0 ]; then
  echo "Backup successful! Backup stored in: $BACKUP_PATH"
else
  echo "Backup failed!"
  exit 1
fi

#For manually testing script use chmod +x /file_path
#Below is the crontab command which can be written using crontab -e , for executing the script and taking logs
#0 */6 * * * /file_path_of_script >> /file_path_of_logs 2>&1