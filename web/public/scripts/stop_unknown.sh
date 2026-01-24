#!/bin/bash
# Auto-generated stop script for unknown

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing unknown..."
$docker_cmd stop unknown
$docker_cmd rm unknown
echo "✅ unknown stopped and removed."
