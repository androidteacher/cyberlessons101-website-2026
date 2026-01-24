#!/bin/bash
# Auto-generated start script for flag-b

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

echo "Starting flag-b..."
# Run the command
$docker_cmd run -d \
    -p 9000:80 \
    --restart always \
    --name flag-b \
    joshbeck2024/ctf-simple-rev-shell

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-b started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9000"
echo "--------------------------------------------------------"
