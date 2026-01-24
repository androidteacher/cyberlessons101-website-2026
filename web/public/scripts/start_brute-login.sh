#!/bin/bash
# Auto-generated start script for brute-login

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

echo "Starting brute-login..."
# Run the command
$docker_cmd run -d \
    -p 9898:80 \
    --restart always \
    --name brute-login \
    joshbeck2024/brute_login_ctf

echo ""
echo "--------------------------------------------------------"
echo "✅ brute-login started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9898"
echo "--------------------------------------------------------"
