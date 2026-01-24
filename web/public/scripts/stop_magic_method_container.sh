#!/bin/bash
# Auto-generated stop script for magic_method_container

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing magic_method_container..."
$docker_cmd stop magic_method_container
$docker_cmd rm magic_method_container
echo "✅ magic_method_container stopped and removed."
