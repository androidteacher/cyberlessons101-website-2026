#!/bin/bash
# Auto-generated stop script for red50

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing red50..."
$docker_cmd stop red50
$docker_cmd rm red50
echo "✅ red50 stopped and removed."
