#!/bin/sh
sed 's/^\(listen_port: \).*$/\1'"$(cat /pia-shared/port.dat)"'/' /slskd.yml
