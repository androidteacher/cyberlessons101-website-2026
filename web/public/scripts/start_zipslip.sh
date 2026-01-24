#!/bin/bash
# Auto-generated start script for zipslip

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

echo "Starting zipslip..."
# Run the command
$docker_cmd run -d \
    -p 9006:9006 \
    --restart always \
    --name zipslip \
    joshbeck2024/zipslip:latest

echo ""
echo "--------------------------------------------------------"
echo "✅ zipslip started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9006"
echo "--------------------------------------------------------"
