#!/bin/bash
# Auto-generated start script for magic_method_container

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

echo "Starting magic_method_container..."
# Run the command
$docker_cmd run -d \
    -p 3020:3020 \
    --restart always \
    --name magic_method_container \
    joshbeck2024/magic-method-ctf

echo ""
echo "--------------------------------------------------------"
echo "✅ magic_method_container started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3020"
echo "--------------------------------------------------------"
