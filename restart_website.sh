#!/bin/bash
set -e

# Image and container names
IMAGE_NAME="cyberlessons-website"
CONTAINER_NAME="cyberlessons-website"
PORT="8080"

echo "Building Docker image..."
if [ -d "./web" ]; then
    docker build -t $IMAGE_NAME ./web
else
    echo "Error: ./web directory not found"
    exit 1
fi

echo "Stopping old container (if exists)..."
docker rm -f $CONTAINER_NAME 2>/dev/null || true

echo "Starting new container on port $PORT..."
docker run -d -p $PORT:80 --name $CONTAINER_NAME $IMAGE_NAME

echo "Success! Website is running locally at http://localhost:$PORT"
