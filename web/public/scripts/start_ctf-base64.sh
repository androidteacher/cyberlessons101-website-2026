#!/bin/bash
echo "Starting ctf-base64..."
# Pull latest just in case? Or just run.
docker run -d -p 9002:80 --restart always --name ctf-base64 joshbeck2024/ctf-base64-rev-shell-flag-k
    echo "ctf-base64 started! Open http://cyberlessons101.com (mapped locally)"
