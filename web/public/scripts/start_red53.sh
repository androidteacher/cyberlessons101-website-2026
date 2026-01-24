#!/bin/bash
# Auto-generated start script for red53

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

echo "Starting red53..."
# Run the command
$docker_cmd run -d \
    -p 9029:5000 \
    --restart always \
    --name red53 \
    joshbeck2024/ctf-xss-bot-flag-red53

echo ""
echo "--------------------------------------------------------"
echo "✅ red53 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9029"
echo "--------------------------------------------------------"
