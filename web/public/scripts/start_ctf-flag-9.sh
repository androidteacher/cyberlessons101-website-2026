#!/bin/bash
# Auto-generated start script for ctf-flag-9

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

echo "Starting ctf-flag-9..."
# Run the command
$docker_cmd run -d \
    -p 9009:80 \
    --restart always \
    --name ctf-flag-9 \
    joshbeck2024/ctf-cookie-brute-force-flag-9

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-flag-9 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9009"
echo "--------------------------------------------------------"
