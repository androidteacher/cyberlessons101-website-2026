#!/bin/bash
echo "Starting brute-login..."
# Pull latest just in case? Or just run.
docker run -d -p 9898:80 --restart always --name brute-login joshbeck2024/brute_login_ctf
    echo "brute-login started! Open http://cyberlessons101.com (mapped locally)"
