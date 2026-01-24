#!/bin/bash
echo "Starting Flag-red51..."
# Pull latest just in case? Or just run.
docker run -d -p 9028:80 --restart always --name Flag-red51 joshbeck2024/ctf-file-upload-bypass-content-type-flag-red51
    echo "Flag-red51 started! Open http://cyberlessons101.com (mapped locally)"
