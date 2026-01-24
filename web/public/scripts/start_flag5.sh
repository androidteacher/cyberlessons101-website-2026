#!/bin/bash
# Auto-generated start script for flag5

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

echo "Starting flag5..."
# Run the command
$docker_cmd run -d \
    -p 9006:80 \
    --restart always \
    --name flag5 \
    joshbeck2024/ctf-sql-inject-flag-5

echo ""
echo "--------------------------------------------------------"
echo "✅ flag5 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9006"
echo "--------------------------------------------------------"
