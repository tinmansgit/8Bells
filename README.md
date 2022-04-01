# 8Bells
Ships Bell Style Notification Script

Bash script to ring a Ship's bell from 8AM (08:00) to 8PM (20:00)

Requires sox & libsox-fmt-mp3 to be installed
Place 8Bells.sh in ~/bin
Place 8Bells mp3 folder in ~/Music directory
Add crontab to call 8Bells.sh every 30 minutes. */30 * * * * /home/username/bin/8Bells.sh
