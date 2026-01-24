#!/bin/bash
echo "Starting flag-e-container..."
# Pull latest just in case? Or just run.
docker run -d -p 9010:22 --network flag-e-net --cap-add=NET_ADMIN --restart always --name flag-e-container joshbeck2024/ctf-tunnel-challenge-flag-e
    echo "flag-e-container started! Open http://cyberlessons101.com (mapped locally)"
