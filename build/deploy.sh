#!/bin/bash

docker login
docker pull pravinrajmarimuthu/my-react-app-dev:latest
docker compose up -d
