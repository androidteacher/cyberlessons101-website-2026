#!/bin/bash
echo "Starting ctf-minecraft..."
# Pull latest just in case? Or just run.
docker run -d -p 3010:3000 --restart always --name ctf-minecraft joshbeck2024/ctf-api-fuzzing
    echo "ctf-minecraft started! Open http://cyberlessons101.com (mapped locally)"
