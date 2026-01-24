#!/bin/bash
echo "Starting zipslip..."
# Pull latest just in case? Or just run.
docker run -d --restart unless-stopped -p 9006:9006 --name zipslip joshbeck2024/zipslip:latest
    echo "zipslip started! Open http://cyberlessons101.com (mapped locally)"
