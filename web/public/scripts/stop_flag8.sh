#!/bin/bash
# Auto-generated stop script for flag8

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag8..."
$docker_cmd stop flag8
$docker_cmd rm flag8
echo "✅ flag8 stopped and removed."
