#!/bin/bash
echo "Starting front-end-bypass-challenge..."
# Pull latest just in case? Or just run.
docker run -d --name front-end-bypass-challenge -p 9020:80 --restart always joshbeck2024/front-end-bypass-challenge
    echo "front-end-bypass-challenge started! Open http://cyberlessons101.com (mapped locally)"
