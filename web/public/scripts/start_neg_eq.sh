#!/bin/bash
# Auto-generated start script for neg_eq

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

echo "Starting neg_eq..."
# Run the command
$docker_cmd run -d \
    -p 9099:80 \
    --restart always \
    --name neg_eq \
    joshbeck2024/ctf_negative_equity

echo ""
echo "--------------------------------------------------------"
echo "✅ neg_eq started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9099"
echo "--------------------------------------------------------"
