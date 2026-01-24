#!/bin/bash
# Auto-generated start script for ctf-alphabet-soup

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

echo "Starting ctf-alphabet-soup..."
# Run the command
$docker_cmd run -d \
    -p 3777:5000 \
    --restart always \
    --name ctf-alphabet-soup \
    joshbeck2024/ctf-alphabet-soup

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-alphabet-soup started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3777"
echo "--------------------------------------------------------"
