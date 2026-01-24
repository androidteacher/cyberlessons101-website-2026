#!/bin/bash
# Auto-generated start script for ctf-mime-challenge-flag-n

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

echo "Starting ctf-mime-challenge-flag-n..."
# Run the command
$docker_cmd run -d \
    -p 9001:80 \
    --restart always \
    --name ctf-mime-challenge-flag-n \
    joshbeck2024/ctf-rev-shell-mime-flag-n

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-mime-challenge-flag-n started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9001"
echo "--------------------------------------------------------"
