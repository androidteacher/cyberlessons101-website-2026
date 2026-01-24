#!/bin/bash
# Auto-generated stop script for cookie-overflow

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing cookie-overflow..."
$docker_cmd stop cookie-overflow
$docker_cmd rm cookie-overflow
echo "✅ cookie-overflow stopped and removed."
