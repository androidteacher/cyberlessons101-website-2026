#!/bin/bash
set -e

echo "⚠️  WARNING: This will DESTROY ALL Docker containers and images on this machine."
echo "Press Ctrl+C within 5 seconds to cancel..."
sleep 5

echo "1. Destroying all running containers..."
# Only run if there are containers
if [ -n "$(docker ps -aq)" ]; then
    docker rm -f $(docker ps -aq)
else
    echo "No containers found."
fi

echo "2. Deleting all images..."
# Only run if there are images
if [ -n "$(docker images -q)" ]; then
    docker rmi -f $(docker images -q)
else
    echo "No images found."
fi

echo "3. Building website image..."
if [ -d "./web" ]; then
    docker build -t cyberlessons-website ./web
else
    echo "Error: ./web directory not found"
    exit 1
fi

echo "4. Starting website on port 80..."
docker run -d -p 80:80 --name cyberlessons-website cyberlessons-website

echo "✅ Done! Website is running on port 80."
docker ps
