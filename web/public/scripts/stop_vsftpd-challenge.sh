#!/bin/bash
# Auto-generated stop script for vsftpd-challenge

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing vsftpd-challenge..."
$docker_cmd stop vsftpd-challenge
$docker_cmd rm vsftpd-challenge
echo "✅ vsftpd-challenge stopped and removed."
