#!/bin/bash
echo "Starting unknown..."
# Pull latest just in case? Or just run.
docker run -d --restart always -p 3555:3555 joshbeck2024/ctf-xss-admin-bot
    echo "unknown started! Open http://cyberlessons101.com (mapped locally)"
