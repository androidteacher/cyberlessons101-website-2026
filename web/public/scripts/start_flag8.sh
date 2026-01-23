#!/bin/bash
echo "Starting flag8..."
# Pull latest just in case? Or just run.
docker run -d -p 9008:80 --restart always --name flag8 joshbeck2024/ctf-git-dumper-training-flag-8
echo "flag8 started! Open http://localhost:9008 (check port mapping)"
