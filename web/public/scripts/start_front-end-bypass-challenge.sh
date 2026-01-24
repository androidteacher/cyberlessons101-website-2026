#!/bin/bash
# Auto-generated start script for front-end-bypass-challenge

# Function to check if docker command needs sudo
docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    else
        echo "Error: Docker is not running or you don't have permissions."
        echo "Please ensure Docker is installed and running."
        exit 1
    fi
fi

echo "Starting front-end-bypass-challenge..."
# Run the command
$docker_cmd run -d \
    -p 9020:80 \
    --restart always \
    --name front-end-bypass-challenge \
    joshbeck2024/front-end-bypass-challenge

echo ""
echo "--------------------------------------------------------"
echo "✅ front-end-bypass-challenge started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9020"
echo "--------------------------------------------------------"
