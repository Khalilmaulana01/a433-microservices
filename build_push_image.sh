#!bin/bash

# Build docker image
docker build -t item-app:v1 .

# Show images lists
docker images

# change the image name through suitable docker hub format
docker tag item-app:v1 prometh3us/item-app:v1

# login to docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u prometh3us --password-stdin

# push the image
docker push prometh3us/item-app:v1