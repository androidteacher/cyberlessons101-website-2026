#!/bin/bash
# Auto-generated start script for Flag_red25

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

echo "Starting Flag_red25..."
# Run the command
$docker_cmd run -d \
    -p 9021:80 -p 9022:22 \
    --restart always \
    --name Flag_red25 \
    joshbeck2024/ctf-403-bypass-flag-red25

echo ""
echo "--------------------------------------------------------"
echo "✅ Flag_red25 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9021"
echo "--------------------------------------------------------"
