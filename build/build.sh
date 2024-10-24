#!/bin/sh

docker compose down -f docker-compose.custom.yml logs --follow
docker-compose up -d
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:latest
