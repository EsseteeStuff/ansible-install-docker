#!/bin/sh

chdir ~/containers/prowlarr

PID = `docker ps | grep prowlarr | awk '{ print $0 }'`
if [ -z "$PID" ]
then
    docker compose up -d
fi

chdir ~/