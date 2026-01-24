#!/bin/bash
# Auto-generated stop script for Flag-red45

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing Flag-red45..."
$docker_cmd stop Flag-red45
$docker_cmd rm Flag-red45
echo "✅ Flag-red45 stopped and removed."
