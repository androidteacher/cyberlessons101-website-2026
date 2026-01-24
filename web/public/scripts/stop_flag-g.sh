#!/bin/bash
# Auto-generated stop script for flag-g

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-g..."
$docker_cmd stop flag-g
$docker_cmd rm flag-g
echo "✅ flag-g stopped and removed."
