#!/bin/bash

mpv_cmd="/usr/bin/mpv --ao=jack"
quiet=">/dev/null 2>&1"

current_time=$(date +%H%M)

case "$current_time" in
    0800|1200|1600|2000)
        ${mpv_cmd} /home/coder/Music/8Bells/8b.mp3 $quiet
        ;;
    0830|1230|1630)
        ${mpv_cmd} /home/coder/Music/8Bells/1b.mp3 $quiet
        ;;
    0900|1300|1700)
        ${mpv_cmd} /home/coder/Music/8Bells/2b.mp3 $quiet
        ;;
    0930|1330|1730)
        ${mpv_cmd} /home/coder/Music/8Bells/3b.mp3 $quiet
        ;;
    1000|1400|1800)
        ${mpv_cmd} /home/coder/Music/8Bells/4b.mp3 $quiet
        ;;
    1030|1430|1830)
        ${mpv_cmd} /home/coder/Music/8Bells/5b.mp3 $quiet
        ;;
    1100|1500|1900)
        ${mpv_cmd} /home/coder/Music/8Bells/6b.mp3 $quiet
        ;;
    1130|1530|1930)
        ${mpv_cmd} /home/coder/Music/8Bells/7b.mp3 $quiet
        ;;
    *)
        exit 0
        ;;
esac
