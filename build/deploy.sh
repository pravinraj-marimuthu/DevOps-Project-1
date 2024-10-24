#!/bin/sh

echo ""
docker login
echo ""
docker pull pravinrajmarimuthu/my-react-app-dev:$(cat /opt/devops-build/build/versions.txt )
echo ""
echo "The pulled docker image version is $(cat /opt/devops-build/build/versions.txt )"
echo ""
docker-compose -f /opt/devops-build/build/compose.yaml up -d
echo ""
docker ps
