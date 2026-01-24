#!/bin/bash
echo "Starting Flag-red47..."
# Pull latest just in case? Or just run.
docker run -d -p 9026:8080 -p 3306:3306 --restart always --name Flag-red47 joshbeck2024/ctf-log4shell-jndi-flag-red47
    echo "Flag-red47 started! Open http://cyberlessons101.com (mapped locally)"
