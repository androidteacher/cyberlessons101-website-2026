#!/bin/bash
echo "Starting ctf-mod-cgi..."
# Pull latest just in case? Or just run.
docker run -d -p 9003:80 --restart always --name ctf-mod-cgi joshbeck2024/ctf-mod-cgi-shell-flag-d
    echo "ctf-mod-cgi started! Open http://cyberlessons101.com (mapped locally)"
