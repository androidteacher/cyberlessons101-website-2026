#!/bin/bash
# Auto-generated stop script for red53

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing red53..."
$docker_cmd stop red53
$docker_cmd rm red53
echo "✅ red53 stopped and removed."
