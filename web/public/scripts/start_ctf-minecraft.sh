#!/bin/bash
# Auto-generated start script for ctf-minecraft

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

echo "Starting ctf-minecraft..."
# Run the command
$docker_cmd run -d \
    -p 3010:3000 \
    --restart always \
    --name ctf-minecraft \
    joshbeck2024/ctf-api-fuzzing

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-minecraft started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3010"
echo "--------------------------------------------------------"
