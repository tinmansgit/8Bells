#!/bin/bash

mpv_cmd="/usr/bin/mpv --ao=jack"
quiet=">/dev/null 2>&1"
error_log="~/bin/logger_8bells_error.log"
debug_log="~/bin/logger_8bells_debug.log"

current_time=$(date +%H%M)

log_debug() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') [DEBUG] $1" >> "$debug_log"
}

log_error() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') [ERROR] $1" >> "$error_log"
}

log_debug "checking time"

case "$current_time" in
    0800|1200|1600|2000)
        file="~/Music/8Bells/8b.mp3"
        ;;
    0830|1230|1630)
        file="~/Music/8Bells/1b.mp3"
        ;;
    0900|1300|1700)
        file="~/Music/8Bells/2b.mp3"
        ;;
    0930|1330|1730)
        file="~/Music/8Bells/3b.mp3"
        ;;
    1000|1400|1800)
        file="~/Music/8Bells/4b.mp3"
        ;;
    1030|1430|1830)
        file="~/Music/8Bells/5b.mp3"
        ;;
    1100|1500|1900)
        file="~/Music/8Bells/6b.mp3"
        ;;
    1130|1530|1930)
        file="~/Music/8Bells/7b.mp3"
        ;;
    *)
        log_debug "Finished time check"
        exit 0
        ;;
esac

log_debug "Attempting to play: $file"

if eval "${mpv_cmd} \"$file\" $quiet"; then
    log_debug "Successfully played: $file"
else
    log_error "Failed to play: $file"
fi
