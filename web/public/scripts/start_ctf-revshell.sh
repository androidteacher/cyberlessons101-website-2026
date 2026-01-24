#!/bin/bash
echo "Starting ctf-revshell..."
# Pull latest just in case? Or just run.
docker run -d -p 9055:80 --restart always --name ctf-revshell joshbeck2024/ctf-rev-shell-mime=type
    echo "ctf-revshell started! Open http://cyberlessons101.com (mapped locally)"
