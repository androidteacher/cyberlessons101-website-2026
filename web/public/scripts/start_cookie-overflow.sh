#!/bin/bash
# Auto-generated start script for cookie-overflow

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

echo "Starting cookie-overflow..."
# Run the command
$docker_cmd run -d \
    -p 3005:3005 \
    --restart always \
    --name cookie-overflow \
    joshbeck2024/cookie_bot-ctf-challenge

echo ""
echo "--------------------------------------------------------"
echo "✅ cookie-overflow started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3005"
echo "--------------------------------------------------------"
