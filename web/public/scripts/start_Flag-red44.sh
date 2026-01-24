#!/bin/bash
echo "Starting Flag-red44..."
# Pull latest just in case? Or just run.
docker run -d -p 9023:80 --name Flag-red44 --restart always joshbeck2024/ctf-php-type-juggling-flag-red44
    echo "Flag-red44 started! Open http://cyberlessons101.com (mapped locally)"
