#!/bin/bash

source config.sh

echo "=================================="
echo "Starting Deployment..."
echo "=================================="

mkdir -p "$DEPLOY_DIR"

bash backup.sh

echo "Deploying Application..."

cp -r "$SOURCE_DIR"/* "$DEPLOY_DIR"/

echo "[$DATE] Deployment Completed" >> "$LOG_FILE"

bash health_check.sh