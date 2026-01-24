#!/bin/bash
# Auto-generated start script for ctf-403

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

echo "Starting ctf-403..."
# Run the command
$docker_cmd run -d \
    -p 3030:3030 \
    --restart always \
    --name ctf-403 \
    joshbeck2024/403-bypass-ctf

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-403 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3030"
echo "--------------------------------------------------------"
