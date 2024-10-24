#!/bin/sh

# Initialize the version (if not already set)
if [ -z "$IMAGE_VERSION" ]; then
    IMAGE_VERSION=1
fi

# Your other docker-related commands go here

echo "Re-building thee image"
docker-compose -f /opt/devops-build/build/compose.yaml down
docker-compose -f /opt/devops-build/build/compose.yaml up -d
echo "Pushing the image to Docker Hub"
docker login --username pravinrajmarimuthu --password Iampravin7010
docker push pravinrajmarimuthu/my-react-app-dev:$IMAGE_VERSION

# Increment the version for the next run
((IMAGE_VERSION++))

# Optionally, display the new version
echo "Image version is now $IMAGE_VERSION"
