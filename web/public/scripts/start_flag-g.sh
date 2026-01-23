#!/bin/bash
echo "Starting flag-g..."
# Pull latest just in case? Or just run.
docker run -d -p 9013:80 --restart always --name flag-g joshbeck2024/ctf-base64-encoded-cookie
echo "flag-g started! Open http://localhost:9013 (check port mapping)"
