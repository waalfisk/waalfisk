#!/bin/bash

# Delete all Images and Container
docker stop $(docker ps -a -q) 
docker rm $(docker ps -a -q) -f
docker rmi $(docker images -q) -f
find ~/Library/Containers/ -type f -name "Docker.qcow2" -exec rm -f {} \;
