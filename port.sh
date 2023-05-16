#!/bin/sh
sed 's/^\(listenPort: \).*$/\1'"$(cat /pia-shared/port.dat)"'/' /slskd.yml
