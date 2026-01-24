#!/bin/bash
# Auto-generated stop script for xxe-challenge

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing xxe-challenge..."
$docker_cmd stop xxe-challenge
$docker_cmd rm xxe-challenge
echo "✅ xxe-challenge stopped and removed."
