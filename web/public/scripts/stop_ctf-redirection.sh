#!/bin/bash
# Auto-generated stop script for ctf-redirection

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-redirection..."
$docker_cmd stop ctf-redirection
$docker_cmd rm ctf-redirection
echo "✅ ctf-redirection stopped and removed."
