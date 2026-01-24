#!/bin/bash
# Auto-generated start script for ctf-mod-cgi

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

echo "Starting ctf-mod-cgi..."
# Run the command
$docker_cmd run -d \
    -p 9003:80 \
    --restart always \
    --name ctf-mod-cgi \
    joshbeck2024/ctf-mod-cgi-shell-flag-d

echo ""
echo "--------------------------------------------------------"
echo "✅ ctf-mod-cgi started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9003"
echo "--------------------------------------------------------"
