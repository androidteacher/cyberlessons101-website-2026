#!/bin/bash
# Auto-generated start script for flag-h

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

echo "Starting flag-h..."
# Run the command
$docker_cmd run -d \
    -p 9014:80 -p 9015:22 \
    --restart always \
    --name flag-h \
    joshbeck2024/ctf-brute-force-login-flag-h

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-h started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9014"
echo "--------------------------------------------------------"
