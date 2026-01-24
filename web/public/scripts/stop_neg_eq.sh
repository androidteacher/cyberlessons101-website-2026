#!/bin/bash
# Auto-generated stop script for neg_eq

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing neg_eq..."
$docker_cmd stop neg_eq
$docker_cmd rm neg_eq
echo "✅ neg_eq stopped and removed."
