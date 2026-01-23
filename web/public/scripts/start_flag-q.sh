#!/bin/bash
echo "Starting flag-q..."
# Pull latest just in case? Or just run.
docker run -d -p 9020:80 --restart always --name flag-q joshbeck2024/ctf-ssrf-hex-bypass-flag-q
echo "flag-q started! Open http://localhost:9020 (check port mapping)"
