#!/bin/bash
echo "Starting cookie-overflow..."
# Pull latest just in case? Or just run.
docker run -d -p 3005:3005 --restart always --name cookie-overflow joshbeck2024/cookie_bot-ctf-challenge
    echo "cookie-overflow started! Open http://cyberlessons101.com (mapped locally)"
