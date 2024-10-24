#!/bin/sh

docker-compose down /opt/devops-build/build/.
docker-compose up -d /opt/devops-build/build/.
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:latest
