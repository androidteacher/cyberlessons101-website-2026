#!/bin/bash
echo "Starting flag-b..."
# Pull latest just in case? Or just run.
docker run -d -p 9000:80 --restart always --name flag-b joshbeck2024/ctf-simple-rev-shell
echo "flag-b started! Open http://localhost:9000 (check port mapping)"
