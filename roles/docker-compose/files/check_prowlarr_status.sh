#!/bin/env bash

PAD="$HOME/containers/prowlarr"

PID=`docker ps | grep prowlarr | awk '{ print $0 }'`
if [ -z "$PID" ]
then
    cd $PAD
    docker compose up -d
fi
