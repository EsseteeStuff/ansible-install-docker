#!/bin/env bash

pad="$HOME/containers/qbittorrent"

PID=`docker ps | grep qbittorrent | awk '{print $1}'`

if [ -z "$PID" ]
then
    cd $pad 
    docker compose up -d
fi