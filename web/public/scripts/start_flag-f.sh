#!/bin/bash
echo "Starting flag-f..."
# Pull latest just in case? Or just run.
docker run -d --restart always -p 9011:53/tcp -p 9011:53/udp -p 9012:80 --name flag-f joshbeck2024/ctf-zone-transfer-flag-f
    echo "flag-f started! Open http://cyberlessons101.com (mapped locally)"
