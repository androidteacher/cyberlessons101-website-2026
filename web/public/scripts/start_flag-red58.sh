#!/bin/bash
echo "Starting flag-red58..."
# Pull latest just in case? Or just run.
docker run -d -p 9031:9031 --name flag-red58 --restart always joshbeck2024/ctf-cve-2023-40028-ghost
    echo "flag-red58 started! Open http://cyberlessons101.com (mapped locally)"
