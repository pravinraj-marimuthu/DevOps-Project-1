#!/bin/sh

echo ""
docker login
echo ""
docker pull pravinrajmarimuthu/my-react-app-prod:$(cat /opt/My-React-App/build/versions.txt )
echo ""
echo "The pulled docker image version is $(cat /opt/My-React-App/build/versions.txt )"
echo ""
docker-compose -f /opt/My-React-App/build/compose.yaml up -d
echo ""
docker ps
