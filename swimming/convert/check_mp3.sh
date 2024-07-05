#!/bin/bash

# Directory to scan
DIRECTORY=$1

# Function to check if an MP3 file meets the requirements
check_mp3() {
    FILE=$1
    BITRATE=$(ffmpeg -i "$FILE" 2>&1 | grep -oP 'bitrate: \K\d+')
    SAMPLERATE=$(ffmpeg -i "$FILE" 2>&1 | grep -oP 'Stream.*Audio: mp3, \K\d+')

    if [[ $BITRATE -lt 32 || $BITRATE -gt 320 ]]; then
        echo "$FILE: Bitrate is $BITRATE kbps"
    elif [[ $SAMPLERATE -ne 32000 && $SAMPLERATE -ne 44100 && $SAMPLERATE -ne 48000 ]]; then
        echo "$FILE: Sample rate is $(($SAMPLERATE / 1000)) kHz"
    fi
}

# Export function to use it with find
export -f check_mp3

# Find all MP3 files and check them
find "$DIRECTORY" -type f -name "*.mp3" -exec bash -c 'check_mp3 "$0"' {} \;

