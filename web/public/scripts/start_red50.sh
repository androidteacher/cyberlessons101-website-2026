#!/bin/bash
# Auto-generated start script for red50

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

echo "Starting red50..."
# Run the command
$docker_cmd run -d \
    -p 9027:80 \
    --restart always \
    --name red50 \
    joshbeck2024/ctf_xss_to_null_byte_injection_flag_red50

echo ""
echo "--------------------------------------------------------"
echo "✅ red50 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9027"
echo "--------------------------------------------------------"
