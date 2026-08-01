#!/bin/bash

APP_NAME="Sample App"

PROJECT_DIR="$HOME/deployment-toolkit"

SOURCE_DIR="$PROJECT_DIR/sample-app"

DEPLOY_DIR="$HOME/production-app"

BACKUP_DIR="$PROJECT_DIR/backups"

LOG_DIR="$PROJECT_DIR/logs"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

LOG_FILE="$LOG_DIR/deployment.log"