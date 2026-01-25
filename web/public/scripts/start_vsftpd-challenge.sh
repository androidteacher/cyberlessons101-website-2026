#!/bin/bash
# Auto-generated start script for vsftpd-challenge

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

echo "Starting vsftpd-challenge..."
# Run the command
$docker_cmd run -d \
    -p 9077:21 -p 6200:6200 \
    --restart always \
    --name vsftpd-challenge \
    joshbeck2024/cve-2011-2523-vsftpd

echo ""
echo "--------------------------------------------------------"
echo "✅ vsftpd-challenge started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9077"
echo "--------------------------------------------------------"
