#!/bin/sh

chdir ~/containers/radarr

PID = `docker ps | grep/radarr | awk '{ print $0 }'`
if [ -z "$PID" ]
then
    docker compose up -d
fi

chdir ~/