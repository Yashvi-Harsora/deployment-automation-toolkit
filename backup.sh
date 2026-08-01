#!/bin/bash

source config.sh

echo "Creating Backup..."

mkdir -p "$BACKUP_DIR"

if [ -d "$DEPLOY_DIR" ]; then
    tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" -C "$DEPLOY_DIR" .
    echo "[$DATE] Backup Created Successfully" >> "$LOG_FILE"
else
    echo "[$DATE] Deployment folder not found." >> "$LOG_FILE"
fi