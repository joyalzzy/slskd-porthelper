#!/bin/sh
sed 's/^\(version: \).*$/\1'"$(cat /port.dat)"'/' /slskd.yml
