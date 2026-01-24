#!/bin/bash
# Auto-generated start script for js_ctf_container

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

echo "Starting js_ctf_container..."
# Run the command
$docker_cmd run -d \
    -p 9035:9040 \
    --restart always \
    --name js_ctf_container \
    joshbeck2024/ctf_javascript_number_guessing

echo ""
echo "--------------------------------------------------------"
echo "✅ js_ctf_container started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9035"
echo "--------------------------------------------------------"
