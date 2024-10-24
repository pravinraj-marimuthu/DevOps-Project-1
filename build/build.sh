#!/bin/sh

echo "Re-building the Docker Image"
echo ""
echo ""
docker-compose -f /opt/devops-build/build/compose.yaml down
docker-compose -f /opt/devops-build/build/compose.yaml up -d
echo "Pushing the image to Docker Hub"
echo ""
echo ""
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:latest
