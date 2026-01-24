#!/bin/bash
# Auto-generated stop script for flag-b

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-b..."
$docker_cmd stop flag-b
$docker_cmd rm flag-b
echo "✅ flag-b stopped and removed."
