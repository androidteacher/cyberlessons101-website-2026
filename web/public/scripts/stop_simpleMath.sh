#!/bin/bash
# Auto-generated stop script for simpleMath

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing simpleMath..."
$docker_cmd stop simpleMath
$docker_cmd rm simpleMath
echo "✅ simpleMath stopped and removed."
