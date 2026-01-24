#!/bin/bash
# Auto-generated stop script for flag5

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag5..."
$docker_cmd stop flag5
$docker_cmd rm flag5
echo "✅ flag5 stopped and removed."
