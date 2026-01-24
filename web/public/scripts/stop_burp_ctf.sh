#!/bin/bash
# Auto-generated stop script for burp_ctf

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing burp_ctf..."
$docker_cmd stop burp_ctf
$docker_cmd rm burp_ctf
echo "✅ burp_ctf stopped and removed."
