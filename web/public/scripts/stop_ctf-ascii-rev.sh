#!/bin/bash
# Auto-generated stop script for ctf-ascii-rev

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-ascii-rev..."
$docker_cmd stop ctf-ascii-rev
$docker_cmd rm ctf-ascii-rev
echo "✅ ctf-ascii-rev stopped and removed."
