#!/bin/bash
# Auto-generated stop script for ctf-alphabet-soup

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-alphabet-soup..."
$docker_cmd stop ctf-alphabet-soup
$docker_cmd rm ctf-alphabet-soup
echo "✅ ctf-alphabet-soup stopped and removed."
