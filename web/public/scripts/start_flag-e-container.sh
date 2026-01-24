#!/bin/bash
# Auto-generated start script for flag-e-container

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

echo "Starting flag-e-container..."
# Run the command
$docker_cmd run -d \
    -p 9010:22 \
    --restart always \
    --name flag-e-container \
    joshbeck2024/ctf-tunnel-challenge-flag-e

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-e-container started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9010"
echo "--------------------------------------------------------"
