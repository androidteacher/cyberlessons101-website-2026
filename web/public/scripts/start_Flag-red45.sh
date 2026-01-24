#!/bin/bash
# Auto-generated start script for Flag-red45

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

echo "Starting Flag-red45..."
# Run the command
$docker_cmd run -d \
    -p 9024:80 \
    --restart always \
    --name Flag-red45 \
    joshbeck2024/ctf-roundcube-1.2.0-flag-red45

echo ""
echo "--------------------------------------------------------"
echo "✅ Flag-red45 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9024"
echo "--------------------------------------------------------"
