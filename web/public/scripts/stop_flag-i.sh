#!/bin/bash
# Auto-generated stop script for flag-i

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-i..."
$docker_cmd stop flag-i
$docker_cmd rm flag-i
echo "✅ flag-i stopped and removed."
