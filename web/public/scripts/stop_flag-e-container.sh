#!/bin/bash
# Auto-generated stop script for flag-e-container

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-e-container..."
$docker_cmd stop flag-e-container
$docker_cmd rm flag-e-container
echo "✅ flag-e-container stopped and removed."
