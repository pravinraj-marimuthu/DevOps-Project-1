#!/bin/sh

docker compose down
docker compose up -d
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:latest
