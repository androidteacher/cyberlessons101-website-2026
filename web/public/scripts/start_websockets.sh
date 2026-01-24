#!/bin/bash
echo "Starting websockets..."
# Pull latest just in case? Or just run.
docker run -d -p 5055:3000 --name websockets --restart always joshbeck2024/ctf_websockets_challenge
    echo "websockets started! Open http://cyberlessons101.com (mapped locally)"
