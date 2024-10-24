#!/bin/sh

docker login
docker pull pravinrajmarimuthu/my-react-app-dev:latest
docker-compose -f /opt/devops-build/build/compose.yaml up -d
