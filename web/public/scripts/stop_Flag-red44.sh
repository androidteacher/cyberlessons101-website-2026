#!/bin/bash
# Auto-generated stop script for Flag-red44

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing Flag-red44..."
$docker_cmd stop Flag-red44
$docker_cmd rm Flag-red44
echo "✅ Flag-red44 stopped and removed."
