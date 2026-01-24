#!/bin/bash
# Auto-generated stop script for front-end-bypass-challenge

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing front-end-bypass-challenge..."
$docker_cmd stop front-end-bypass-challenge
$docker_cmd rm front-end-bypass-challenge
echo "✅ front-end-bypass-challenge stopped and removed."
