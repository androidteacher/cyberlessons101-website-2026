#!/bin/bash
# Auto-generated stop script for ctf-json-post

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-json-post..."
$docker_cmd stop ctf-json-post
$docker_cmd rm ctf-json-post
echo "✅ ctf-json-post stopped and removed."
