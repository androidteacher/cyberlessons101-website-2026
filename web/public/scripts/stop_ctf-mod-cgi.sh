#!/bin/bash
# Auto-generated stop script for ctf-mod-cgi

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-mod-cgi..."
$docker_cmd stop ctf-mod-cgi
$docker_cmd rm ctf-mod-cgi
echo "✅ ctf-mod-cgi stopped and removed."
