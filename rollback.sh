#!/bin/bash

source config.sh

LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/*.tar.gz | head -1)

if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup found."
    exit 1
fi

rm -rf "$DEPLOY_DIR"/*

tar -xzf "$LATEST_BACKUP" -C "$DEPLOY_DIR"

echo "Rollback Completed."