#!/bin/bash
# Auto-generated start script for ctf-flag-7

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

echo "Starting ctf-flag-7..."
# Run the command
$docker_cmd run -d \
    -p 9007:80 \
    --restart always \
    --name ctf-flag-7 \
    joshbeck2024/ctf-phar-out-flag-7

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-flag-7 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9007"
echo "--------------------------------------------------------"
