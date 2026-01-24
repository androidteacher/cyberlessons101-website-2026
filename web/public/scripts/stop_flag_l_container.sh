#!/bin/bash
# Auto-generated stop script for flag_l_container

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag_l_container..."
$docker_cmd stop flag_l_container
$docker_cmd rm flag_l_container
echo "✅ flag_l_container stopped and removed."
