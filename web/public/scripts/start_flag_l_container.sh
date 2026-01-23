#!/bin/bash
echo "Starting flag_l_container..."
# Pull latest just in case? Or just run.
docker run -d -p 9017:80 --restart always --name flag_l_container joshbeck2024/ctf-get-post-training-flag-l
echo "flag_l_container started! Open http://localhost:9017 (check port mapping)"
