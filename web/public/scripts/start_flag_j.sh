#!/bin/bash
# Auto-generated start script for flag_j

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

echo "Starting flag_j..."
# Run the command
$docker_cmd run -d \
    -p 9004:5000 \
    --restart always \
    --name flag_j \
    joshbeck2024/ctf-flask-ssti-flag-j

echo ""
echo "--------------------------------------------------------"
echo "✅ flag_j started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9004"
echo "--------------------------------------------------------"
