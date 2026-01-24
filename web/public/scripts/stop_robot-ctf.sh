#!/bin/bash
# Auto-generated stop script for robot-ctf

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing robot-ctf..."
$docker_cmd stop robot-ctf
$docker_cmd rm robot-ctf
echo "✅ robot-ctf stopped and removed."
