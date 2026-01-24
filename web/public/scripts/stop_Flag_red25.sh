#!/bin/bash
# Auto-generated stop script for Flag_red25

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing Flag_red25..."
$docker_cmd stop Flag_red25
$docker_cmd rm Flag_red25
echo "✅ Flag_red25 stopped and removed."
