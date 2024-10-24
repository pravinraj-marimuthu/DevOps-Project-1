#!/bin/sh
timestamp_tag=$(date +%Y%m%d%H%M%S)
echo ""
echo ""
echo "Building the latest Docker Image..."
echo ""
echo ""
docker-compose -f /opt/devops-build/build/compose.yaml down
echo ""
echo ""
docker-compose -f /opt/devops-build/build/compose.yaml build
echo ""
echo ""
docker-compose -f /opt/devops-build/build/compose.yaml up -d
echo ""
echo ""
echo "Pushing the image to Docker Hub..."
echo ""
echo ""
docker login --username pravinrajmarimuthu --password Iampravin7010
echo ""
echo ""
docker push pravinrajmarimuthu/my-react-app-dev:$timestamp_tag
echo ""
echo ""
echo "The docker image has been successfully pushed...!"
echo ""
echo ""
docker ps
