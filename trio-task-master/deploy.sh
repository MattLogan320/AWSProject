#!/bin/bash
#Create Network
docker network create trio-task-network
#Build Images
docker build -t trio-db db
docker build -t trio-flask-app flask-app
#Run db container
docker run -d --network trio-task-network --name mysql trio-db
#Run flask app
docker run -d --network trio-task-network --name flask-app trio-flask-app
#Run nginx container
docker run -d --network trio-task-network -p 80:80 --name nginx --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf nginx:alpine

docker ps -a