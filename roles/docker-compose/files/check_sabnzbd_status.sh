#!/bin/sh

PID=`docker ps | grep sabnzbd | awk '{ print $0 }'`
if [ -z "$PID" ]
then
    docker compose up -d
fi
