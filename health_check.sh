#!/bin/bash

source config.sh

echo ""
echo "Running Health Check..."

if [ -f "$DEPLOY_DIR/index.html" ]; then
    echo "Application deployed successfully."
    echo "[$DATE] Health Check Passed" >> "$LOG_FILE"
else
    echo "Deployment Failed!"
    echo "[$DATE] Health Check Failed" >> "$LOG_FILE"
fi