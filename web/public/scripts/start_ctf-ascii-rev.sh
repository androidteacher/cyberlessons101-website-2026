#!/bin/bash
# Auto-generated start script for ctf-ascii-rev

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

echo "Starting ctf-ascii-rev..."
# Run the command
$docker_cmd run -d \
    -p 3111:3111 \
    --restart always \
    --name ctf-ascii-rev \
    joshbeck2024/ctf-ascii-rev

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-ascii-rev started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3111"
echo "--------------------------------------------------------"
