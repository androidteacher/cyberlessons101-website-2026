#!/bin/bash
# Auto-generated stop script for websockets

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing websockets..."
$docker_cmd stop websockets
$docker_cmd rm websockets
echo "✅ websockets stopped and removed."
