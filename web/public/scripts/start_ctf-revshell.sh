#!/bin/bash
# Auto-generated start script for ctf-revshell

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

echo "Starting ctf-revshell..."
# Run the command
$docker_cmd run -d \
    -p 9055:80 \
    --restart always \
    --name ctf-revshell \
    joshbeck2024/ctf-rev-shell-mime=type

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-revshell started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9055"
echo "--------------------------------------------------------"
