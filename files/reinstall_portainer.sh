#!/bin/bash

portainer_pid=`docker ps | grep portainer-ce | awk '{print $1}'`
portainer_name=`docker ps | grep portainer-ce | awk '{print $2}'`

echo Removing the old version of Portainer
sudo docker stop $portainer_pid
sudo docker rm $portainer_pid
sudo docker rmi $portainer_name
sudo docker volume prune -y

echo now doing a fresh install of portainer
sudo docker run -d -p 9500:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest --logo "https://pi-hosted.com/pi-hosted-logo.png"
