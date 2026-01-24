#!/bin/bash
# Auto-generated stop script for js_ctf_container

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing js_ctf_container..."
$docker_cmd stop js_ctf_container
$docker_cmd rm js_ctf_container
echo "✅ js_ctf_container stopped and removed."
