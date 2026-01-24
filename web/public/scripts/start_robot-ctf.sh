#!/bin/bash
echo "Starting robot-ctf..."
# Pull latest just in case? Or just run.
docker run -d --name robot-ctf -p 9040:80 --restart always joshbeck2024/robots_ctf
    echo "robot-ctf started! Open http://cyberlessons101.com (mapped locally)"
