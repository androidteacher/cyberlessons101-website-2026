#!/bin/bash
# Auto-generated stop script for zipslip

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing zipslip..."
$docker_cmd stop zipslip
$docker_cmd rm zipslip
echo "✅ zipslip stopped and removed."
