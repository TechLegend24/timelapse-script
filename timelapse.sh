#!/bin/bash
# Single-shot timelapse script for cron

# Directory to store images
TIMELAPSE_DIR="/mnt/timelapse/images"

# Make sure the directory exists
mkdir -p "$TIMELAPSE_DIR"

# Timestamp for the filename
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Capture image using Pi Camera
rpicam-still -o "$TIMELAPSE_DIR/img_$TIMESTAMP.jpg" --nopreview --timeout 200
