#!/bin/bash
# Auto-generated start script for burp_ctf

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

echo "Starting burp_ctf..."
# Run the command
$docker_cmd run -d \
    -p 9005:80 \
    --restart always \
    --name burp_ctf \
    joshbeck2024/ctf-burp-suite-basic-training

echo ""
echo "--------------------------------------------------------"
echo "✅ burp_ctf started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9005"
echo "--------------------------------------------------------"
