#!/bin/bash
set -e

echo "Stopping and removing all containers..."
if [ -n "$(docker ps -aq)" ]; then
    docker rm -f $(docker ps -aq)
    echo "All containers removed."
else
    echo "No containers found."
fi

echo "Removing all images..."
if [ -n "$(docker images -q)" ]; then
    docker rmi -f $(docker images -q)
    echo "All images removed."
else
    echo "No images found."
fi
