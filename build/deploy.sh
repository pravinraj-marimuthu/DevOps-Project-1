#!/bin/sh

echo ""
echo ""
docker login
echo ""
echo ""
docker pull pravinrajmarimuthu/my-react-app-dev:$(cat /opt/devops-build/build/versions.txt )
echo ""
echo ""
echo "The pulled docker image version is $(cat /opt/devops-build/build/versions.txt )"
echo ""
echo ""
docker-compose -f /opt/devops-build/build/compose.yaml up -d
echo ""
echo ""
docker ps
