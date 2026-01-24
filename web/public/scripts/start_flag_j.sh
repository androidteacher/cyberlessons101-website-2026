#!/bin/bash
echo "Starting flag_j..."
# Pull latest just in case? Or just run.
docker run -d -p 9004:5000 --name flag_j --restart always joshbeck2024/ctf-flask-ssti-flag-j
    echo "flag_j started! Open http://cyberlessons101.com (mapped locally)"
