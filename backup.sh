#!/bin/bash

# Source directory
SOURCE="/home/$USER/Documents"

# Backup destination
BACKUP_DIR="/home/$USER/backups"

# Date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "Starting Backup..."
echo "Source      : $SOURCE"
echo "Destination : $BACKUP_FILE"

# Create compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE" 2>/dev/null

# Check status
if [ $? -eq 0 ]; then
    echo "-------------------------------------"
    echo "Backup Status : SUCCESS"
    echo "Backup File   : $BACKUP_FILE"
    echo "Date          : $(date)"
    echo "-------------------------------------"
else
    echo "-------------------------------------"
    echo "Backup Status : FAILED"
    echo "Date          : $(date)"
    echo "-------------------------------------"
fi