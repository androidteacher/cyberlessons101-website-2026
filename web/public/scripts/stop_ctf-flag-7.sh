#!/bin/bash
# Auto-generated stop script for ctf-flag-7

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-flag-7..."
$docker_cmd stop ctf-flag-7
$docker_cmd rm ctf-flag-7
echo "✅ ctf-flag-7 stopped and removed."
