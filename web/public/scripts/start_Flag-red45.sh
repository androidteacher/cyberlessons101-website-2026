#!/bin/bash
echo "Starting Flag-red45..."
# Pull latest just in case? Or just run.
docker run -d -p 9024:80 --name Flag-red45 joshbeck2024/ctf-roundcube-1.2.0-flag-red45
    echo "Flag-red45 started! Open http://cyberlessons101.com (mapped locally)"
