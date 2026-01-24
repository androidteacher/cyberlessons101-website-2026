#!/bin/bash
echo "Starting Flag-red46..."
# Pull latest just in case? Or just run.
docker run -d --cap-add=NET_ADMIN -p 5354:53/udp -p 9025:80 --name Flag-red46 --restart always joshbeck2024/ctf-dns-firewall-bypass-flag-red46
    echo "Flag-red46 started! Open http://cyberlessons101.com (mapped locally)"
