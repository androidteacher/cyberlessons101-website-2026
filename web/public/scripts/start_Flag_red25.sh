#!/bin/bash
echo "Starting Flag_red25..."
# Pull latest just in case? Or just run.
docker run -d -p 9021:80 -p 9022:22 --network flag-red25-net --cap-add=NET_ADMIN --restart always --name Flag_red25 joshbeck2024/ctf-403-bypass-flag-red25
    echo "Flag_red25 started! Open http://cyberlessons101.com (mapped locally)"
