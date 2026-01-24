#!/bin/bash
# Auto-generated stop script for notes-api

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing notes-api..."
$docker_cmd stop notes-api
$docker_cmd rm notes-api
echo "✅ notes-api stopped and removed."
