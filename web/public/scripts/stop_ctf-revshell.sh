#!/bin/bash
# Auto-generated stop script for ctf-revshell

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-revshell..."
$docker_cmd stop ctf-revshell
$docker_cmd rm ctf-revshell
echo "✅ ctf-revshell stopped and removed."
