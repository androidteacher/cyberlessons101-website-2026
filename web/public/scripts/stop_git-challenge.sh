#!/bin/bash
# Auto-generated stop script for git-challenge

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing git-challenge..."
$docker_cmd stop git-challenge
$docker_cmd rm git-challenge
echo "✅ git-challenge stopped and removed."
