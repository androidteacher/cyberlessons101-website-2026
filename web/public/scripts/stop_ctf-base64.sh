#!/bin/bash
# Auto-generated stop script for ctf-base64

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-base64..."
$docker_cmd stop ctf-base64
$docker_cmd rm ctf-base64
echo "✅ ctf-base64 stopped and removed."
