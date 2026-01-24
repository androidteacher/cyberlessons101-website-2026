#!/bin/bash
# Auto-generated stop script for js_flag

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing js_flag..."
$docker_cmd stop js_flag
$docker_cmd rm js_flag
echo "✅ js_flag stopped and removed."
