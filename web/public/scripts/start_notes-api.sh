#!/bin/bash
# Auto-generated start script for notes-api

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

echo "Starting notes-api..."
# Run the command
$docker_cmd run -d \
    -p 9000:9000 \
    --restart always \
    --name notes-api \
    joshbeck2024/notes-api:latest

echo ""
echo "--------------------------------------------------------"
echo "✅ notes-api started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9000"
echo "--------------------------------------------------------"
