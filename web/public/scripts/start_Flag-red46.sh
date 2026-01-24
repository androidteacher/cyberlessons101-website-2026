#!/bin/bash
# Auto-generated start script for Flag-red46

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

echo "Starting Flag-red46..."
# Run the command
$docker_cmd run -d \
    -p 5354:53/udp -p 9025:80 \
    --restart always \
    --name Flag-red46 \
    joshbeck2024/ctf-dns-firewall-bypass-flag-red46

echo ""
echo "--------------------------------------------------------"
echo "✅ Flag-red46 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:5354"
echo "--------------------------------------------------------"
