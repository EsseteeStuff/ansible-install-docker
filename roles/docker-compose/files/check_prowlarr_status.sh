#!/bin/env bash

PID=`docker ps | grep prowlarr | awk '{ print $0 }'`
if [ -z "$PID" ]
then
    docker compose up -d
fi
