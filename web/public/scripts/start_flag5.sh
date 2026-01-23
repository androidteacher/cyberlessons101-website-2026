#!/bin/bash
echo "Starting flag5..."
# Pull latest just in case? Or just run.
docker run -d -p 9006:80 --name flag5 --restart always joshbeck2024/ctf-sql-inject-flag-5
echo "flag5 started! Open http://localhost:9006 (check port mapping)"
