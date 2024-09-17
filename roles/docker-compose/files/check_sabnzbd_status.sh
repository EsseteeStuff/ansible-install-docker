#!/bin/env bash

pad="$HOME/containers/sabnzbd"

PID=`docker ps | grep sabnzbd | awk '{print $1}'`

if [ -z "$PID" ]
then
    cd $pad 
    docker compose up -d
fi