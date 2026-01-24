#!/bin/bash
echo "Starting ctf-json-post..."
# Pull latest just in case? Or just run.
docker run -d -p 5666:80 --restart always --name ctf-json-post joshbeck2024/ctf-json-post
    echo "ctf-json-post started! Open http://cyberlessons101.com (mapped locally)"
