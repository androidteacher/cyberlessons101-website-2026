#!/bin/bash
# Auto-generated start script for flag-p

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

echo "Starting flag-p..."
# Run the command
$docker_cmd run -d \
    -p 9019:80 -p joshbeck2024/ctf-php-deserialization-flag-p \
    --restart always \
    --name flag-p \
    joshbeck2024/ctf-php-deserialization-flag-p

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-p started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9019"
echo "--------------------------------------------------------"
