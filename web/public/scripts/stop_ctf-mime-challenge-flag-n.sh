#!/bin/bash
# Auto-generated stop script for ctf-mime-challenge-flag-n

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-mime-challenge-flag-n..."
$docker_cmd stop ctf-mime-challenge-flag-n
$docker_cmd rm ctf-mime-challenge-flag-n
echo "✅ ctf-mime-challenge-flag-n stopped and removed."
