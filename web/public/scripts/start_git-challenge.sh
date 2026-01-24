#!/bin/bash
# Auto-generated start script for git-challenge

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

echo "Starting git-challenge..."
# Run the command
$docker_cmd run -d \
    -p 9030:80 \
    --restart always \
    --name git-challenge \
    joshbeck2024/git-challenge

echo ""
echo "--------------------------------------------------------"
echo "✅ git-challenge started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9030"
echo "--------------------------------------------------------"
