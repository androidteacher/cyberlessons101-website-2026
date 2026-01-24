#!/bin/bash
echo "Starting flag-red57..."
# Pull latest just in case? Or just run.
docker run -d -p 9030:3000 --name flag-red57 --restart always joshbeck2024/ctf-cve-2025-29927
    echo "flag-red57 started! Open http://cyberlessons101.com (mapped locally)"
