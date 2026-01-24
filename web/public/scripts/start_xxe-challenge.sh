#!/bin/bash
echo "Starting xxe-challenge..."
# Pull latest just in case? Or just run.
docker run -d --name xxe-challenge -p 9001:80 joshbeck2024/xxe-challenge:latest
    echo "xxe-challenge started! Open http://cyberlessons101.com (mapped locally)"
