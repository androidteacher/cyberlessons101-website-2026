#!/bin/bash
echo "Starting numberizer..."
# Pull latest just in case? Or just run.
docker run -d --name numberizer --restart unless-stopped -p 9007:80 joshbeck2024/numberizer:latest
    echo "numberizer started! Open http://cyberlessons101.com (mapped locally)"
