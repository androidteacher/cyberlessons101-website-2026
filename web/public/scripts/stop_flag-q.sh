#!/bin/bash
# Auto-generated stop script for flag-q

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-q..."
$docker_cmd stop flag-q
$docker_cmd rm flag-q
echo "✅ flag-q stopped and removed."
