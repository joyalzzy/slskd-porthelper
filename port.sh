#!/bin/sh
sed 's/^\(version: \).*$/\1'"$(cat /pia-shared/port.dat)"'/' /slskd.yml
