#!/bin/bash
portainer_pid=`docker ps | grep portainer-ce | awk '{print $1}'`
if [ -z "$portainer_pid" ]
then
  docker pull portainer/portainer-ce:latest
  docker run -d -p 9500:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest --logo "https://pi-hosted.com/pi-hosted-logo.png"
fi
