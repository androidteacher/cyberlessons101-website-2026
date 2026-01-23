#!/bin/bash
echo "Starting flag-h..."
# Pull latest just in case? Or just run.
docker run -d -p 9014:80 -p 9015:22 --cap-add=NET_ADMIN --name flag-h joshbeck2024/ctf-brute-force-login-flag-h
echo "flag-h started! Open http://localhost:9014 (check port mapping)"
