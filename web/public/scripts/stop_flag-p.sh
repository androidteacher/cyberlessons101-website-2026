#!/bin/bash
# Auto-generated stop script for flag-p

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-p..."
$docker_cmd stop flag-p
$docker_cmd rm flag-p
echo "✅ flag-p stopped and removed."
