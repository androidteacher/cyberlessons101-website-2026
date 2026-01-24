#!/bin/bash
# Auto-generated start script for flag_l_container

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

echo "Starting flag_l_container..."
# Run the command
$docker_cmd run -d \
    -p 9017:80 \
    --restart always \
    --name flag_l_container \
    joshbeck2024/ctf-get-post-training-flag-l

echo ""
echo "--------------------------------------------------------"
echo "✅ flag_l_container started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9017"
echo "--------------------------------------------------------"
