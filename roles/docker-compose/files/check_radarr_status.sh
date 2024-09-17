#!/bin/sh

PID=`docker ps | grep radarr | awk '{print $1}'`

if [ -z "$PID" ]
then
    docker compose up -d
fi
