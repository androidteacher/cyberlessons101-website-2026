#!/bin/bash
# Auto-generated start script for flag-g

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

echo "Starting flag-g..."
# Run the command
$docker_cmd run -d \
    -p 9013:80 \
    --restart always \
    --name flag-g \
    joshbeck2024/ctf-base64-encoded-cookie

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-g started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9013"
echo "--------------------------------------------------------"
