#!/bin/bash
# Auto-generated stop script for flag-o

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-o..."
$docker_cmd stop flag-o
$docker_cmd rm flag-o
echo "✅ flag-o stopped and removed."
