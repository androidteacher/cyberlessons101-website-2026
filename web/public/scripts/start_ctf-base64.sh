#!/bin/bash
# Auto-generated start script for ctf-base64

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

echo "Starting ctf-base64..."
# Run the command
$docker_cmd run -d \
    -p 9002:80 \
    --restart always \
    --name ctf-base64 \
    joshbeck2024/ctf-base64-rev-shell-flag-k

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-base64 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9002"
echo "--------------------------------------------------------"
