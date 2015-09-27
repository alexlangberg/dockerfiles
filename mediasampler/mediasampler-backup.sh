#!/bin/bash

# Use this script on another machine to connect
# to the nginx webserver and download all files.case.
# On debian, place in eg. /etc/cron.hourly with
# sudo cp mediasampler-backup.sh /etc/cron.hourly

wget -m -N -R "*.html" -P /path/to/folder http://localhost:8080
