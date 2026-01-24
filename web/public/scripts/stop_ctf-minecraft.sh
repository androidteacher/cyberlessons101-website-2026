#!/bin/bash
# Auto-generated stop script for ctf-minecraft

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-minecraft..."
$docker_cmd stop ctf-minecraft
$docker_cmd rm ctf-minecraft
echo "✅ ctf-minecraft stopped and removed."
