#!/bin/bash
# Auto-generated start script for flag-i

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

echo "Starting flag-i..."
# Run the command
$docker_cmd run -d \
    -p 9016:5000 \
    --restart always \
    --name flag-i \
    joshbeck2024/ctf-python-post-variables-flag-i

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-i started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9016"
echo "--------------------------------------------------------"
