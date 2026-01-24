#!/bin/bash
# Auto-generated start script for simpleMath

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

echo "Starting simpleMath..."
# Run the command
$docker_cmd run -d \
    -p 9050:9050 \
    --restart always \
    --name simpleMath \
    joshbeck2024/simple_math_ctf

echo ""
echo "--------------------------------------------------------"
echo "✅ simpleMath started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9050"
echo "--------------------------------------------------------"
