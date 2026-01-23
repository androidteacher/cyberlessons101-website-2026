#!/bin/bash
echo "Starting flag-i..."
# Pull latest just in case? Or just run.
docker run -d -p 9016:5000 --restart always --name flag-i joshbeck2024/ctf-python-post-variables-flag-i
echo "flag-i started! Open http://localhost:9016 (check port mapping)"
