#!/bin/bash
# Auto-generated start script for sql-web

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

echo "Starting sql-web..."
# Run the command
$docker_cmd run -d \
    -p 5000:5000 \
    --restart always \
    --name sql-web \
    joshbeck2024/sql-injection-chal-package-search:tagname

echo ""
echo "--------------------------------------------------------"
echo "✅ sql-web started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:5000"
echo "--------------------------------------------------------"
