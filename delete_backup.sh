#!/bin/bash

# Backup directory
BACKUP_DIR="/home/ubuntu/Backup/db_backup"

# Find and delete backups older than 7 days
find "$BACKUP_DIR" -type d -mtime +7 -exec rm -rf {} +

# Log the deletion process
if [ $? -eq 0 ]; then
  echo "Old backups deleted successfully."
else
  echo "Failed to delete old backups."
fi
