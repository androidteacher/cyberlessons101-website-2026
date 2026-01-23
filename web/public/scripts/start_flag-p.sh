#!/bin/bash
echo "Starting flag-p..."
# Pull latest just in case? Or just run.
docker run -d -p 9019:80 --restart always --name flag-p joshbeck2024/ctf-php-deserialization-flag-p
echo "flag-p started! Open http://localhost:9019 (check port mapping)"
