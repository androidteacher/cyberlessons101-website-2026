#!/bin/bash
echo "Starting red53..."
# Pull latest just in case? Or just run.
docker run -d --privileged --shm-size=2g -p 9029:5000 --name red53 --restart always joshbeck2024/ctf-xss-bot-flag-red53
    echo "red53 started! Open http://cyberlessons101.com (mapped locally)"
