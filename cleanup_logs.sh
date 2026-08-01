#!/bin/bash

source config.sh

find "$LOG_DIR" -type f -name "*.log" -mtime +7 -delete

echo "Old log files cleaned."