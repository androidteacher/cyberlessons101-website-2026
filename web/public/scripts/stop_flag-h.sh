#!/bin/bash
# Auto-generated stop script for flag-h

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-h..."
$docker_cmd stop flag-h
$docker_cmd rm flag-h
echo "✅ flag-h stopped and removed."
