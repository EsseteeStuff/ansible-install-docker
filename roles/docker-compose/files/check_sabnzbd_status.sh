#!/bin/sh

chdir ~/containers/sabnzbd

PID = `docker ps | grep sabnzbd | awk '{ print $0 }'`
if [ -z "$PID" ]
then
    docker compose up -d
fi

chdir ~/