#!/usr/bin/bash

# 8Bells.sh : Ships Bell Style Notification Script
# Bash script to ring a Ship's bell from 8AM (08:00) to 8PM (20:00)
# Requires sox & libsox-fmt-mp3 to be installed
# Place 8Bells.sh in ~/bin
# Place 8Bells mp3 folder in ~/Music directory
# Add crontab to call 8Bells.sh every 30 minutes
# */30 * * * * /home/username/bin/8Bells.sh

# play single bell mp3 file on the half hour, located in user's ~/Music directory
sb() { /usr/bin/play ~/Music/8Bells/sb.mp3 >/dev/null 2>&1
	}

# play double bell mp3 file on the hour, located in user's ~/Music directory
db() { /usr/bin/play ~/Music/8Bells/db.mp3 >/dev/null 2>&1
	}

# set current time variable to the current hour and minute
currenttime=$(date +%H:%M)

# check current local time is between 8:00-20:00
if [[ "$currenttime" > "07:30" ]] || [[ "$currenttime" < "20:30" ]]; then

	# 4 hour blocks of time checks with bells played @ 8 individual 30 minute intervals throughout
	if [[ "$currenttime" = "08:00" ]] || [[ "$currenttime" = "12:00" ]] || [[ "$currenttime" = "16:00" ]] || [[ "$currenttime" = "20:00" ]] ; then
		db && db && db && db
	elif [[ "$currenttime" = "08:30" ]] || [[ "$currenttime" = "12:30" ]] || [[ "$currenttime" = "16:30" ]] ; then
		sb
	elif [[ "$currenttime" = "09:00" ]] || [[ "$currenttime" = "13:00" ]] || [[ "$currenttime" = "17:00" ]] ; then
		db
	elif [[ "$currenttime" = "09:30" ]] || [[ "$currenttime" = "13:30" ]] || [[ "$currenttime" = "17:30" ]] ; then
		db && sb
	elif [[ "$currenttime" = "10:00" ]] || [[ "$currenttime" = "14:00" ]] || [[ "$currenttime" = "18:00" ]] ; then
		db && db
	elif [[ "$currenttime" = "10:30" ]] || [[ "$currenttime" = "14:30" ]] || [[ "$currenttime" = "18:30" ]] ; then
		db && db && sb
	elif [[ "$currenttime" = "11:00" ]] || [[ "$currenttime" = "15:00" ]] || [[ "$currenttime" = "19:00" ]] ; then
		db && db && db
	elif [[ "$currenttime" = "11:30" ]] || [[ "$currenttime" = "15:30" ]] || [[ "$currenttime" = "19:30" ]] ; then
		db && db && db && sb
	else
		exit	
	fi

else
     exit
fi

