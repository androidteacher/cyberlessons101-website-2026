#!/bin/bash
# Auto-generated start script for robot-ctf

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

echo "Starting robot-ctf..."
# Run the command
$docker_cmd run -d \
    -p 9040:80 \
    --restart always \
    --name robot-ctf \
    joshbeck2024/robots_ctf

echo ""
echo "--------------------------------------------------------"
echo "✅ robot-ctf started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9040"
echo "--------------------------------------------------------"
