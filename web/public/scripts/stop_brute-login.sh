#!/bin/bash
# Auto-generated stop script for brute-login

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing brute-login..."
$docker_cmd stop brute-login
$docker_cmd rm brute-login
echo "✅ brute-login stopped and removed."
