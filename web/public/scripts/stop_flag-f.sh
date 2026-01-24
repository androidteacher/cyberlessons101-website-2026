#!/bin/bash
# Auto-generated stop script for flag-f

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-f..."
$docker_cmd stop flag-f
$docker_cmd rm flag-f
echo "✅ flag-f stopped and removed."
