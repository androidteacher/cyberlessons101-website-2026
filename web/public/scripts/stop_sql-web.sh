#!/bin/bash
# Auto-generated stop script for sql-web

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing sql-web..."
$docker_cmd stop sql-web
$docker_cmd rm sql-web
echo "✅ sql-web stopped and removed."
