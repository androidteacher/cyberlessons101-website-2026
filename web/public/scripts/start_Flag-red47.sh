#!/bin/bash
# Auto-generated start script for Flag-red47

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

echo "Starting Flag-red47..."
# Run the command
$docker_cmd run -d \
    -p 9026:8080 -p 3306:3306 \
    --restart always \
    --name Flag-red47 \
    joshbeck2024/ctf-log4shell-jndi-flag-red47

echo ""
echo "--------------------------------------------------------"
echo "✅ Flag-red47 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9026"
echo "--------------------------------------------------------"
