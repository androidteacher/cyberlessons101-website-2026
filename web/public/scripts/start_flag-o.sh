#!/bin/bash
echo "Starting flag-o..."
# Pull latest just in case? Or just run.
docker run -d -p 9018:80 --restart always --name flag-o joshbeck2024/ctf-weather-api-rce-flag-o
echo "flag-o started! Open http://localhost:9018 (check port mapping)"
