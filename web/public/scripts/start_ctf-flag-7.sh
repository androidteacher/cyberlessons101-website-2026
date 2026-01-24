#!/bin/bash
echo "Starting ctf-flag-7..."
# Pull latest just in case? Or just run.
docker run -d --name ctf-flag-7 --restart always -p 9007:80 joshbeck2024/ctf-phar-out-flag-7
    echo "ctf-flag-7 started! Open http://cyberlessons101.com (mapped locally)"
