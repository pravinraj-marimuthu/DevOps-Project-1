#!/bin/sh

docker-compose down -f /opt/devops-build/build/compose.yaml
docker-compose up -d
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:latest
