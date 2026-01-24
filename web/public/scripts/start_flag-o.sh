#!/bin/bash
# Auto-generated start script for flag-o

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

echo "Starting flag-o..."
# Run the command
$docker_cmd run -d \
    -p 9018:80 \
    --restart always \
    --name flag-o \
    joshbeck2024/ctf-weather-api-rce-flag-o

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-o started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9018"
echo "--------------------------------------------------------"
