#!/bin/bash
echo "Starting ctf-redirection..."
# Pull latest just in case? Or just run.
docker run -d -p 3999:80 --restart always --name ctf-redirection joshbeck2024/ctf-redirection-challenge
    echo "ctf-redirection started! Open http://cyberlessons101.com (mapped locally)"
