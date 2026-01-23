#!/bin/bash
echo "Starting ctf-mime-challenge-flag-n..."
# Pull latest just in case? Or just run.
docker run -d -p 9001:80 --restart always --name ctf-mime-challenge-flag-n joshbeck2024/ctf-rev-shell-mime-flag-n
echo "ctf-mime-challenge-flag-n started! Open http://localhost:9001 (check port mapping)"
