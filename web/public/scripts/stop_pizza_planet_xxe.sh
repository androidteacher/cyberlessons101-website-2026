#!/bin/bash
# Auto-generated stop script for pizza_planet_xxe

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing pizza_planet_xxe..."
$docker_cmd stop pizza_planet_xxe
$docker_cmd rm pizza_planet_xxe
echo "✅ pizza_planet_xxe stopped and removed."
