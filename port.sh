#!/bin/bash

trap 'exit 0' SIGTERM

OLDPORT=0
PORT=0

while true
do
	[ -r "/pia-shared/port.dat" ] && PORT=$(cat /pia-shared/port.dat)

	if [ $OLDPORT -ne $PORT ]; then
		echo "Setting Soulseek port to ($PORT)."	
#		cat /slskd.yml
		
		rc=$(sed 's/listen_port:.*$/listen_port: '$PORT'/' /slskd.yml)
		echo "$rc" > /slskd.yml
		OLDPORT=$PORT
	fi

	inotifywait --event modify --event create /pia-shared
done

