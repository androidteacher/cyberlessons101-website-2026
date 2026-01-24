#!/bin/bash
echo "Starting git-challenge..."
# Pull latest just in case? Or just run.
docker run -d --name git-challenge -p 9030:80 --restart always joshbeck2024/git-challenge
    echo "git-challenge started! Open http://cyberlessons101.com (mapped locally)"
