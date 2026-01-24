#!/bin/bash
echo "Starting ctf-403..."
# Pull latest just in case? Or just run.
docker run -d -p 3030:3030 --restart always --name ctf-403 joshbeck2024/403-bypass-ctf
    echo "ctf-403 started! Open http://cyberlessons101.com (mapped locally)"
