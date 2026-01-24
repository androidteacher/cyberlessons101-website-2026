#!/bin/bash
# Auto-generated stop script for flag_j

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag_j..."
$docker_cmd stop flag_j
$docker_cmd rm flag_j
echo "✅ flag_j stopped and removed."
