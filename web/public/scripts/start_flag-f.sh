#!/bin/bash
# Auto-generated start script for flag-f

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

echo "Starting flag-f..."
# Run the command
$docker_cmd run -d \
    -p 9011:53/tcp -p 9011:53/udp -p 9012:80 \
    --restart always \
    --name flag-f \
    joshbeck2024/ctf-zone-transfer-flag-f

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-f started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9011"
echo "--------------------------------------------------------"
