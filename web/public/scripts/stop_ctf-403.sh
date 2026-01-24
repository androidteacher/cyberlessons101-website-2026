#!/bin/bash
# Auto-generated stop script for ctf-403

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-403..."
$docker_cmd stop ctf-403
$docker_cmd rm ctf-403
echo "✅ ctf-403 stopped and removed."
