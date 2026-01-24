#!/bin/bash
echo "Starting ctf-flag-9..."
# Pull latest just in case? Or just run.
docker run -d -p 9009:80 --name ctf-flag-9 --restart always joshbeck2024/ctf-cookie-brute-force-flag-9
    echo "ctf-flag-9 started! Open http://cyberlessons101.com (mapped locally)"
