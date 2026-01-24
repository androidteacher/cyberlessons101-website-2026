#!/bin/bash
# Auto-generated start script for ctf-json-post

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

echo "Starting ctf-json-post..."
# Run the command
$docker_cmd run -d \
    -p 5666:80 \
    --restart always \
    --name ctf-json-post \
    joshbeck2024/ctf-json-post

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-json-post started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:5666"
echo "--------------------------------------------------------"
