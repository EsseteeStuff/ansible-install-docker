#!/bin/env bash

pad="$HOME/containers/sonarr"

PID=`docker ps | grep sonarr | awk '{print $1}'`

if [ -z "$PID" ]
then
    cd $pad 
    docker compose up -d
fi