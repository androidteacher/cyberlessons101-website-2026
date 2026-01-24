#!/bin/bash
# Auto-generated start script for pizza_planet_xxe

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

echo "Starting pizza_planet_xxe..."
# Run the command
$docker_cmd run -d \
    -p 9045:80 \
    --restart always \
    --name pizza_planet_xxe \
    joshbeck2024/ctf_local-xxe

echo ""
echo "--------------------------------------------------------"
echo "✅ pizza_planet_xxe started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9045"
echo "--------------------------------------------------------"
