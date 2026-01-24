#!/bin/bash
# Auto-generated stop script for ctf-php-filter

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-php-filter..."
$docker_cmd stop ctf-php-filter
$docker_cmd rm ctf-php-filter
echo "✅ ctf-php-filter stopped and removed."
