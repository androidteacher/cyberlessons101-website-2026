#!/bin/bash
echo "Starting ctf-ascii-rev..."
# Pull latest just in case? Or just run.
docker run -d -p 3111:3111 --restart always --name ctf-ascii-rev joshbeck2024/ctf-ascii-rev
    echo "ctf-ascii-rev started! Open http://cyberlessons101.com (mapped locally)"
