#!/bin/bash
# Auto-generated stop script for numberizer

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing numberizer..."
$docker_cmd stop numberizer
$docker_cmd rm numberizer
echo "✅ numberizer stopped and removed."
