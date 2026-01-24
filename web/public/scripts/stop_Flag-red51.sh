#!/bin/bash
# Auto-generated stop script for Flag-red51

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing Flag-red51..."
$docker_cmd stop Flag-red51
$docker_cmd rm Flag-red51
echo "✅ Flag-red51 stopped and removed."
