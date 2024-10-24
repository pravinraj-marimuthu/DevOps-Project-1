#!/bin/sh

docker-compose -f /opt/devops-build/build/compose.yaml down 
docker-compose up -d /opt/devops-build/build/.
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:latest
