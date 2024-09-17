#!/bin/env bash

pad="$HOME/containers/radarr"

PID=`docker ps | grep radarr | awk '{print $1}'`

if [ -z "$PID" ]
then
    cd $pad 
    docker compose up -d
fi
